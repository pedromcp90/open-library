<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['categories'] = Category::paginate(10);
        return view('category.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('category.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        return $this->insertOrUpdate($request);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return view('category.show', [
            'user' => $id
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $category = Category::findOrFail($id);
        $data = [];
        $data['category'] = $category;
        return view('category.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        return $this->insertOrUpdate($request, $id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Category::findOrFail($id);
        Category::destroy($id);
        return redirect('category')->with('message', 'Category deleted successfully');
    }

    private function insertOrUpdate($request, $updateId = false)
    {

        /**
         * Remove unneded fields
         */
        $categoryData = $request->except(['_token', '_method']);


        $fields = [
            'name' => 'required|string|max:255'
        ];

        $errorMessage = [
            'required' => 'The :attribute is required',
        ];

        $this->validate($request, $fields, $errorMessage);

        //If we are updating, then get the existing category to be edited
        $category = empty($updateId) ? new Category() : Category::findOrFail($updateId);

        //Iterate through the fields and set their values
        foreach ($categoryData as $field => $value) {
            $category->$field = $value;
        }

        //Save the category an then add its relationships
        $category->save();

        $action = empty($updateId) ? 'created' : 'updated';

        return redirect('category/')->with('message', 'Category ' . $action . ' successfully');
    }
}
