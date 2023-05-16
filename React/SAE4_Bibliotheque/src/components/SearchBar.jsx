import React from "react";
import axios from "axios";
import { Link } from "react-router-dom";
import { URI } from "../constants";
import { useState } from "react";

/**
 * SearchBar component
 *
 * @author Carole Le-Flohic & Anna Briançon
 */
export default function SearchBar(props) {
  const [author, setAuthor] = useState("");
  const [authors, setAuthors] = useState([]);

  const searchAuthors = (event) => {
    const input = event.target.value;
    props.updateInput(input);
    if (input && input.length >= 4) {
      const request = `${URI}/authors?q=${input}`;
      axios.get(request).then((response) => {
        setAuthors(response.data.authors);
      });
    }
  };

  const completeInput = (event) => {
    this.props.updateInput(input);
  };

  let countAuthors = 0;
  return (
    <div className="search-bar-bg flex items-center justify-center">
      {location.pathname != "/login" && location.pathname != "/followed" && (
        <form className="flex items-center" autoComplete="off">
          <label htmlFor="simple-search" className="sr-only">
            Recherche
          </label>
          <div className="relative w-full">
            <div className="absolute inset-y-0 left-0 flex items-center pl-3">
              <svg
                aria-hidden="true"
                className="w-5 h-5 text-gray-500"
                fill="currentColor"
                viewBox="0 0 20 20"
                xmlns="http://www.w3.org/2000/svg"
              >
                <path
                  fillRule="evenodd"
                  d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z"
                  clipRule="evenodd"
                ></path>
              </svg>
            </div>
            <div className="fix">
              <input
                aria-label="Rechercher un auteur"
                onChange={searchAuthors}
                type="text"
                label="Recherche"
                list="authors"
                id="simple-search"
                className="bg-white border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full pl-10 p-2.5 "
                placeholder={author}
                required
              ></input>
              <datalist id="authors">
                {authors.length != 0 &&
                  authors.map((author) => (
                    <option
                      key={countAuthors++}
                      role="button"
                      aria-selected="false"
                      onClick={completeInput}
                      className="p-0.5 border-inherit bg-white border-gray-200 border hover:bg-slate-100"
                    >
                      {author.name}
                    </option>
                  ))}
              </datalist>
            </div>
          </div>
          <Link to="/book">
            <button
              type="submit"
              className="p-2.5 ml-2 text-sm font-medium text-white bg-teal-600 rounded-lg border border-teal-600 hover:bg-teal-800 hover:border-teal-800 focus:ring-4 focus:outline-none focus:ring-blue-300"
              aria-label="Bouton de recherche"
              label="Recherche"
            >
              Rechercher
            </button>
          </Link>
        </form>
      )}
    </div>
  );
}
