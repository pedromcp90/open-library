<?php

namespace App\Http\Controllers;

use App\Models\Book;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Validation\IsbnValidator;
use Nicebooks\Isbn\IsbnTools;

class BookController extends Controller
{
    /**
     * Display a listing of books.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['books'] = Book::paginate(10);
        return view('book.index', $data);
    }

    /**
     * Show the form for creating a new book.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('book.create');
    }

    /**
     * Store a newly created book in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $isbnFormatter = new IsbnTools;
        //validate data
        $fields = [
            'isbn' => ['required', 'string', new IsbnValidator],
            'title' => 'required|string|max:255',
            'publication_year' => 'int|max:99999|nullable',
            'cover_image' => 'max:100000|mimes:jpeg,png,jpg|nullable'
        ];

        $errorMessage = [
            'required' => 'The :attribute is required',
        ];

        $this->validate($request, $fields, $errorMessage);

        $bookData = $request->except('_token');
        if ($request->hasFile('cover_image')) {
            $bookData['cover_image'] = $request->file('cover_image')->store('uploads', 'public');
        }

        $bookData['isbn'] = $isbnFormatter->format($bookData['isbn']);

        Book::insert($bookData);

        return redirect('book')->with('message', 'Book created successfully');
    }

    /**
     * Display the specified book.
     *
     * @param  \App\Models\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function show(Book $book)
    {
        //
    }

    /**
     * Show the form for editing the specified book.
     *
     * @param  \App\Models\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function edit($bookId)
    {
        $book = Book::findOrFail($bookId);
        return view('book.edit', compact('book'))->with('message', 'Book updated successfully');
    }

    /**
     * Update the specified book in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  Int  $bookId
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $bookId)
    {
        //Get the current data to make some checks with existing values
        $currentBook = Book::findOrFail($bookId);

        $isbnFormatter = new IsbnTools;
        //validate data
        $fields = [
            'isbn' => ['required', 'string', new IsbnValidator],
            'title' => 'required|string|max:255',
            'publication_year' => 'int|max:99999|nullable',
            'cover_image' => 'max:100000|mimes:jpeg,png,jpg|nullable'
        ];

        $errorMessage = [
            'required' => 'The :attribute is required',
        ];

        $this->validate($request, $fields, $errorMessage);

        //Exclude useless fields
        $bookData = $request->except(['_token', '_method']);

        //If an image is received then update the cover_image
        if ($request->hasFile('cover_image')) {
            if (!empty($currentBook->cover_image)) {
                //Check if an image already exists and delete it
                Storage::delete('public/' . $currentBook->cover_image);
            }
            $bookData['cover_image'] = $request->file('cover_image')->store('uploads', 'public');
        }
        //Check if th isbn has changed
        if ($currentBook->isbn != $request->isbn) {
            //The isbn has changed so we need to filter it again
            $bookData['isbn'] = $isbnFormatter->format($bookData['isbn']);
        }
        //Update with new data
        Book::where('id', '=', $bookId)->update($bookData);
        $book = Book::findOrFail($bookId);

        return view('book.edit', compact('book'));
    }

    /**
     * Remove the specified book from storage.
     *
     * @param  Int $bookId
     * @return \Illuminate\Http\Response
     */
    public function destroy($bookId)
    {
        $book = Book::findOrFail($bookId);
        if (Storage::delete('public/' . $book->cover_image)) {
            //Check if the image could be deleted amd then delete the Book
            Book::destroy($bookId);
        } else {
            return redirect('book/' . $book->id)->with('error', 'Error while deleting the book cover, please try again later. If the problem persists contact an administrator');
        }
        return redirect('book')->with('message', 'Book deleted successfully');
    }
}
