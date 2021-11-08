<?php

namespace App\Http\Controllers\Api;

use App\Models\Author;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use App\Http\Resources\AuthorResource;
use App\Http\Resources\AuthorResourceCollection;

class AuthorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $authors = Author::paginate();
        return (new AuthorResourceCollection($authors))->response();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $request->validate([
            'first_name' => 'bail|required|string|max:255',
            'last_name' => 'bail|required|string|max:255'
        ]);

        $author = new Author();
        $author->first_name = $request->input('first_name');
        $author->last_name = $request->input('last_name');
        $author->save();
        Log::info("Author ID {$author->id} created successfully.");
        return (new AuthorResource($author))->response()->setStatusCode(Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Author  $author
     * @return \Illuminate\Http\Response
     */
    public function show(Author $author)
    {
        return (new AuthorResource($author))->response();
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Author  $author
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Author $author)
    {
        $request->validate([
            'first_name' => 'bail|required|string|max:255',
            'last_name' => 'bail|required|string|max:255'
        ]);

        $author->first_name = $request->input('first_name');
        $author->last_name = $request->input('last_name');
        $author->save();

        Log::info("Author ID {$author->id} created successfully.");
        return (new AuthorResource($author))->response()->setStatusCode(Response::HTTP_CREATED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Author  $author
     * @return \Illuminate\Http\Response
     */
    public function destroy(Author $author)
    {
        $author->delete();
        Log::info("Author ID {$author->id} deleted successfully.");
        return response(null, Response::HTTP_NO_CONTENT);
    }
}
