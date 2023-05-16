import React, { useState, useEffect } from "react";
import "../index.css";
import Book from "./Book";
import { Link } from "react-router-dom";
import { URI } from "../constants";


/**
 * Function used to retrieve the last 4 acquisitions
 *
 * @author Anna Briançon
 */
function LatestAcquisition() {
  const [books, setBooks] = useState([]);

  useEffect(() => {
    fetch(`${URI}/books/latest`)
      .then((response) => response.json())
      .then((data) => setBooks(data.books))
      .catch((error) => console.error(error));
  }, []);

  return (
    <>
      <div className="relative max-w-10xl mx-auto px-2 sm:px-4">
        <div className="max-w-3xl mx-auto text-center md:pb-2">
          <h2>Les dernières aquisitions de la bibliothèque </h2>
        </div>
        <div className="max-w-sm mx-auto grid gap-6 md:grid-cols-2 lg:grid-cols-4 items-start md:max-w-2xl lg:max-w-none">
          {books.map((book) => (
            <div
              key={book.id}
              className="relative flex flex-col items-center p-6 max-w-xs overflow-hidden bg-cover bg-no-repeat"
            >
              <Link to={"/book/info?id=" + book.id}>
                <div className="max-w-xs transition duration-800 ease-in-out hover:scale-110">
                  <Book
                    book={{
                      title: book.name,
                      image: { thumbnail: book.image },
                      publishedDate: book.publishedDate,
                      authors: book.authors,
                      id: book.id,
                    }}
                  />
                </div>
              </Link>
            </div>
          ))}
        </div>
      </div>
    </>
  );
}

export default LatestAcquisition;
