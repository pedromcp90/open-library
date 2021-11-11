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
        $nav = [];
        $nav[] = [
            'text' => 'Admin',
            'icon' => 'fa fa-cogs',
            'url' => '/admin'
        ];
        $controllers = [
            [
                'route' => '/admin/book',
                'name' => 'Book',
                'icon' => 'fa fa-book'
            ],
            [
                'route' => '/admin/author',
                'name' => 'Author',
                'icon' => 'fa fa-user-edit'
            ],
            [
                'route' => '/admin/category',
                'name' => 'Category',
                'icon' => 'fa fa-th-large'
            ],
            [
                'route' => '/admin/publisher',
                'name' => 'Publisher',
                'icon' => 'fa fa-user-tie'
            ]
        ];

        $methods = [
            [
                'route' => '',
                'name' => 'List'
            ],
            [
                'route' => 'create',
                'name' => 'Create'
            ]
        ];
        foreach ($controllers as $controller) {
            $children = [];

            foreach ($methods as  $method) {
                $children[] = [
                    'text' => $method['name'],
                    'icon' => isset($method['icon']) ? $method['icon'] : '',
                    'url' =>  $controller['route'] . '/' . $method['route']
                ];
            }

            $nav[] = [
                'text' => $controller['name'],
                'icon' => isset($controller['icon']) ? $controller['icon'] : '',
                'url' =>  $controller['route'],
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
