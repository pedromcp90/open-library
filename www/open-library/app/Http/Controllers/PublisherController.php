<?php

namespace App\Http\Controllers;

use App\Models\Publisher;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;

class PublisherController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['publishers'] = Publisher::all();
        return view('publisher.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('publisher.create');
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
        return view('publisher.show', [
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
        $publisher = Publisher::findOrFail($id);
        $data = [];
        $data['publisher'] = $publisher;
        return view('publisher.edit', $data);
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
        Publisher::findOrFail($id);
        Publisher::destroy($id);
        return redirect('admin/publisher')->with('message', 'Publisher deleted successfully');
    }

    private function insertOrUpdate($request, $updateId = false)
    {

        /**
         * Remove unneded fields
         */
        $publisherData = $request->except(['_token', '_method']);


        $fields = [
            'name' => 'required|string|max:255',
            'address' => 'required|string|max:255'
        ];

        $errorMessage = [
            'required' => 'The :attribute is required',
        ];

        $this->validate($request, $fields, $errorMessage);

        //If we are updating, then get the existing publisher to be edited
        $publisher = empty($updateId) ? new Publisher() : Publisher::findOrFail($updateId);

        //Iterate through the fields and set their values
        foreach ($publisherData as $field => $value) {
            $publisher->$field = $value;
        }

        //Save the publisher an then add its relationships
        $publisher->save();

        $action = empty($updateId) ? 'created' : 'updated';

        return redirect('admin/publisher/')->with('message', 'Publisher ' . $action . ' successfully');
    }
}
