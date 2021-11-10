<?php

namespace App\Http\Controllers;

use App\Models\Author;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;

class AuthorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['authors'] = Author::paginate(10);
        return view('author.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('author.create');
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
        return view('author.show', [
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
        $author = Author::findOrFail($id);
        $data = [];
        $data['author'] = $author;
        return view('author.edit', $data);
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
        $author = Author::findOrFail($id);
        //Check if the image could be deleted amd then delete the Author
        if (!empty($author->author_image) && !Storage::delete('public/' . $author->author_image)) {
            return redirect('author/' . $author->id . '/edit')->with('error', 'Error while deleting the author image, please try again later. If the problem persists contact an administrator');
        }
        Author::destroy($id);
        return redirect('author')->with('message', 'Author deleted successfully');
    }

    private function insertOrUpdate($request, $updateId = false)
    {

        /**
         * Initialize currentauthor data to make some checks on update
         */
        $currentAuthor = NULL;

        /**
         * Remove unneded fields
         */
        $authorData = $request->except(['_token', '_method']);

        /**
         * Get the current data to make some checks with existing values
         */
        if (!empty($updateId)) {
            $currentAuthor = Author::findOrFail($updateId);
        }


        $fields = [
            'first_name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'author_image' => 'max:100000|mimes:jpeg,png,jpg|nullable'
        ];

        $errorMessage = [
            'required' => 'The :attribute is required',
        ];

        $this->validate($request, $fields, $errorMessage);

        if ($request->hasFile('author_image')) {
            if (!empty($updateId)) {
                /**
                 * If the request is update we have to make some checks with images
                 * If an image is received then update the author_image
                 * Check if an image already exists and delete it
                 */

                if (!empty($currentAuthor->author_image)) {
                    Storage::delete('public/' . $currentAuthor->author_image);
                }
            }

            /**
             * Store the image
             */
            $authorData['author_image'] = $request->file('author_image')->store('uploads', 'public');
        }

        //If we are updating, then get the existing author to be edited
        $author = empty($updateId) ? new Author() : Author::findOrFail($updateId);

        //Iterate through the fields and set their values
        foreach ($authorData as $field => $value) {
            $author->$field = $value;
        }

        //Save the author an then add its relationships
        $author->save();

        $action = empty($updateId) ? 'created' : 'updated';

        return redirect('author/')->with('message', 'Author ' . $action . ' successfully');
    }
}
