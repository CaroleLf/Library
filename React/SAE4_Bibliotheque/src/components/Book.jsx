import React from "react";
import cover from "/book.webp";
import "../index.css";

/**
 * Component used to display a book
 *
 * @param {*} param0
 * @returns
 * @author Anna Briançon
 */
const Book = ({ book }) => {
  let { title, image, publishedDate, authors, id } = book;

  title = title || "Pas de titre";
  publishedDate = publishedDate || " Pas de date";
  authors = authors || "Pas d'auteur";
  id = id || "Pas d'id";

  const imageSrc =
    image && image.thumbnail === "https://via.placeholder.com/200x300"
      ? cover
      : image.thumbnail;

  return (
    <div className="flex flex-row">
      <img
        src={imageSrc}
        className="object-contain max-w-3xl max-h-36"
        alt="image"
      />
      <div className="m-8">
        <h1>{title}</h1>
        <h3>{authors[0].name}</h3>
        <h3>{publishedDate}</h3>
      </div>
    </div>
  );
};

export default Book;
