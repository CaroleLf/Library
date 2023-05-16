import React from "react";
import axios from "axios";
import cover from "/book.webp";
import { URI } from "../constants";
import SearchBar from "../components/SearchBar";
import { useState, useEffect } from "react";

/**
 * The book info class used to display information about a book
 *
 * @author Carole Le-Flohic
 */
export default function BookInfo(props) {
  const [book, setBook] = useState(undefined);

  useEffect(() => {
    const queryParameters = new URLSearchParams(window.location.search);
    const id = queryParameters.get("id");
    const request = `${URI}/book/` + id;
    axios.get(request).then((response) => {
      setBook(response.data.book);
    });
  }, []);

  if (!book) {
    return <div>Loading...</div>;
  }
  const {
    name,
    image,
    description,
    language,
    pageCount,
    categories,
    publisher,
  } = book;

  const imageSrc =
    image === "https://via.placeholder.com/200x300" ? cover : image;

  return (
    <>
      <SearchBar updateInput={props.updateInput} />
      <h1 className="text-lg px-5 pt-5">{name}</h1>
      <div className="flex flex-row items-center gap-4 flex-wrap w-full p-5">
        <img
          alt="book image"
          className="max-w-6xl object-contain max-h-96"
          src={imageSrc}
        ></img>
        <div
          id="info-book"
          className="flex flex-1 flex-col bg-gray-100 flex-wrap"
        >
          <div className="p-2 flex flex-row flex-wrap">
            <p className="p-2">
              {" "}
              Langue :
              <b className="text-teal-600"> {language && language.name} </b>
            </p>
            <p className="p-2">
              {" "}
              Nombre de page : <b className="text-teal-600">{pageCount}</b>
            </p>
          </div>
          <div className="p-2 flex-wrap">
            <p className="p-2">
              {" "}
              Catégorie :{" "}
              <b className="text-teal-600">
                {categories &&
                  categories.map((categorie) => categorie.name).join(", ")}{" "}
              </b>
            </p>
            <p className="p-2">
              {" "}
              Editeur :{" "}
              <b className="text-teal-600">
                {publisher && publisher.name}{" "}
              </b>{" "}
            </p>
          </div>
          <div className="p-2  flex-wrap w-auto">
            <h2> Résumé </h2>
            <p> {description}</p>
          </div>
        </div>
      </div>
    </>
  );
}
