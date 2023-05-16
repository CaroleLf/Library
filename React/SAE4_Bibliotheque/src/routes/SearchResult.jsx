import React from "react";
import axios from "axios";
import Book from "../components/Book";
import { Link } from "react-router-dom";
import { URI } from "../constants";
import { useState, useEffect } from "react";
import SearchBar from "../components/SearchBar";
import { Paginator } from "../components/Paginator";

/**
 * SearchResult component
 *
 * @author Anna Briançon
 */
export default function SearchResult(props) {

  const [startIndex, setStartIndex] = useState(0);
  const [totalItems, setTotalItems] = useState(0);
  const NB_BOOK_DISPLAYED = 9;

  const [books, setBooks] = useState(undefined);
  const [flag, setFlag] = useState(false);

  useEffect(() => {
    if (startIndex != 0){
      setStartIndex(0);
    } else {
      setFlag(!flag);
    }
  }, [props.input]);

  useEffect(() => {
    const request = `${URI}/books?author=${props.input}&offset=${startIndex}&maxResults=${NB_BOOK_DISPLAYED}`;
    axios.get(request).then((response) => {
      setBooks(response.data.books);
      setTotalItems(response.data.results);
    });
  }, [startIndex, flag]);

  return (
    <>
      <SearchBar updateInput={props.updateInput} />
      {!books ? (
        <h1>Pas de résultat pour : {props.input}</h1>
      ) : (
        <div className="mb-4">
          <div className="relative max-w-6xl mx-auto px-4 sm:px-6">
            <div className="max-w-3xl mx-auto text-center pb-12 md:pb-20">
              <h2 className="h2 pt-8">
                Tous les livres disponibles pour "{props.input}"
              </h2>
            </div>
            <div className="max-w-sm mx-auto grid gap-6 md:grid-cols-2 lg:grid-cols-3 items-start md:max-w-2xl lg:max-w-none">
              {books.map((book) => (
                <div
                  className="relative flex flex-col items-center p-6 max-w-xs overflow-hidden bg-cover bg-no-repeat"
                  key={book.id}
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
          <Paginator
            updateStartIndex={setStartIndex}
            startIndex={startIndex}
            max={NB_BOOK_DISPLAYED}
            totalItems={totalItems}
          />
        </div>
      )}
    </>
  );
}
