<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Author;
use App\Models\Category;
use Illuminate\Http\Request;
use Nicebooks\Isbn\IsbnTools;
use App\Validation\IsbnValidator;
use Illuminate\Support\Facades\Storage;
use PhpParser\Node\Stmt\TryCatch;

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
        $data['authors'] = Author::all();
        $data['categories'] = Category::all();
        return view('book.create', $data);
    }

    /**
     * Store a newly created book in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        return $this->insertOrUpdate($request);
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
     * @param  Int  $bookId
     * @return \Illuminate\Http\Response
     */
    public function edit($bookId)
    {
        $book = Book::findOrFail($bookId);

        $data = self::populateRelatedFields();
        $data['book'] = $book;
        $data['selected_authors'] = self::getSelectedAuthorsIds($book);
        $data['selected_categories'] = self::getSelectedCategoriesIds($book);
        //return view('book.edit', compact('book'));
        return view('book.edit', $data);
    }

    public static function populateRelatedFields()
    {
        $data['authors'] = Author::all();
        $data['categories'] = Category::all();
        return $data;
    }
    public static function getSelectedAuthorsIds(Book $book)
    {
        $selected_authors = [];
        if (!empty($book->authors)) {
            foreach ($book->authors as $author) {
                $selected_authors[] = $author->id;
            }
        }
        return $selected_authors;
    }

    public static function getSelectedCategoriesIds(Book $book)
    {
        $selected_categories = [];
        if (!empty($book->categories)) {
            foreach ($book->categories as $category) {
                $selected_categories[] = $category->id;
            }
        }
        return $selected_categories;
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
        return $this->insertOrUpdate($request, $bookId);
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
            return redirect('book/' . $book->id . '/edit')->with('error', 'Error while deleting the book cover, please try again later. If the problem persists contact an administrator');
        }
        return redirect('book')->with('message', 'Book deleted successfully');
    }

    private function insertOrUpdate($request, $updateId = false)
    {
        $currentBook = NULL;
        if (!empty($updateId)) {
            //Get the current data to make some checks with existing values
            $currentBook = Book::findOrFail($updateId);
        }


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

        $bookData = $request->except(['_token', '_method', 'authors', 'categories']);

        if ($request->hasFile('cover_image')) {
            if (!empty($updateId)) {
                //If the request is update we have to make some checks with images
                //If an image is received then update the cover_image
                //Check if an image already exists and delete it
                if (!empty($currentBook->cover_image)) {
                    Storage::delete('public/' . $currentBook->cover_image);
                }
            }
            $bookData['cover_image'] = $request->file('cover_image')->store('uploads', 'public');
        }

        //Check if th isbn has changed
        if (empty($updateId) || $currentBook->isbn != $request->isbn) {
            //The isbn has changed so we need to filter it again
            $bookData['isbn'] = $isbnFormatter->format($bookData['isbn']);
        }


        //If we are updating, then get the existing book to be edited
        $book = empty($updateId) ? new Book() : Book::findOrFail($updateId);

        //Iterate through the fields and set thir values
        foreach ($bookData as $field => $value) {
            $book->$field = $value;
        }
        //Save the book an then add relationships
        $book->save();

        if ($request->has('categories')) {
            //make categories relationships
            $categories = $request->input('categories');
            $book->categories()->sync($categories);
        }

        if ($request->has('authors')) {
            //make author relationships
            $authors = $request->input('authors');
            $book->authors()->sync($authors);
        }



        $action = empty($updateId) ? 'created' : 'updated';

        return redirect('book/')->with('message', 'Book ' . $action . ' successfully');
    }
}
