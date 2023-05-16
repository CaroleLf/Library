import React, { useState, useEffect } from "react";
import "../index.css";
import Book from "./Book";
import { Link } from "react-router-dom";
import axios from "axios";
import { URI } from "../constants";


export default function SuggestedBooks({ token }) {
  token = localStorage.getItem("token");

  let countBook = 0;

  const [books, setBooks] = useState([]);

  useEffect(() => {
    axios
      .get(`${URI}/books/suggestion`, {
        headers: {
          Authorization: "Bearer " + token,
        },
      })
      .then((response) => {
        setBooks(response.data.books);
      })
      .catch((error) => console.error(error));
  }, []);

  return (
    <div className="relative max-w-10xl mx-auto px-2 sm:px-4">
      <div className="max-w-3xl mx-auto text-center md:pb-2">
        <h2>Découvrez ces livres !</h2>
      </div>
      <div className="max-w-sm mx-auto grid gap-6 md:grid-cols-2 lg:grid-cols-4 items-start md:max-w-2xl lg:max-w-none">
        {books.length > 0 ? (
          books.map((book) => (
            <div
              key={countBook++}
              className="relative flex flex-col items-center p-6 max-w-xs overflow-hidden bg-cover bg-no-repeat"
            >
              <Link to={"/book/info?id=" + book.book.id}>
                <div className="max-w-xs transition duration-800 ease-in-out hover:scale-110">
                  <Book
                    book={{
                      title: book.book.name,
                      image: { thumbnail: book.book.image },
                      publishedDate: book.book.publishedDate,
                      authors: book.book.authors,
                      id: book.book.id,
                    }}
                  />
                  <p>Recommandé à {book.score}%</p>
                </div>
              </Link>
            </div>
          ))
        ) : (
          <div className="items-center">
            <p className="items-center">Vous n'avez pas de livre empruntés</p>
          </div>
        )}
      </div>
    </div>
  );
}
