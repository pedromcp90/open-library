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
}
