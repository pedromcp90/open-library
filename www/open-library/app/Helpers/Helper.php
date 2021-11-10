<?php

namespace App\Helpers;

use Nicebooks\Isbn\IsbnTools;

/**
 * Helpers Class
 */
class Helper
{
    /**
     * This helper checks if the image uri is internal and
     * adds the absolute path.
     *
     * @param String $coverUrl
     * @return String
     */
    public static function parseImageUri(String $coverUrl)
    {
        if (!filter_var($coverUrl, FILTER_VALIDATE_URL)) {
            $coverUrl = asset('storage') . '/' . $coverUrl;
        }
        return $coverUrl;
    }
    /**
     * Format a string into a valid isbn.
     * @param String $isbn
     * @return String The formatted isbn or unmodified string.
     */
    public static function formatISBN(String $isbn)
    {
        /**
         * Initialize the isbn formatter
         */
        $isbnFormatter = new IsbnTools;

        /**
         * Check if the isbn is valid and then return formatted
         */
        if ($isbnFormatter->isValidIsbn($isbn)) {
            return $isbnFormatter->format($isbn);
        }

        /**
         * If it is not valid, return without modification
         */
        return $isbn;
    }

    public static function generateNav()
    {
        $controllers = [
            'book' => 'Book',
            'author' => 'Author',
            'category' => 'Category',
            'publisher' => 'Publisher',
        ];
        $nav = [];
        $methods = [
            '' => 'List',
            'create' => 'Create'
        ];
        foreach ($controllers as $controllerPath => $controllerName) {
            $children = [];
            foreach ($methods as $methodPath => $methodName) {
                $children[] = [
                    'text' => $methodName,
                    'url' => '/admin/' . $controllerPath . '/' . $methodPath
                ];
            }

            $nav[] = [
                'text' => $controllerName,
                'url' => '/admin/' . $controllerPath,
                'children' => $children
            ];
        }
        return $nav;
    }

    public static function getElementTitleById($id, $route)
    {

        $class = "\\App\Models\\" . ucfirst($route);
        $instance = new $class();
        $item = $instance->find($id);
        if (method_exists($item, 'getName')) {
            return $item->getName();
        }
    }
    /**
     * Returns the current path structure.
     * Used for builing breadcrumbs component
     */
    public static function getPathInfoAsArray()
    {
        $path = request()->path();

        //If the path is the home then return an empty array for breadcrumbs
        return ($path  != "/") ? explode('/', $path) : [];
    }
}
