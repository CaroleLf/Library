import React from "react";
import { Link, useLocation } from "react-router-dom";
import IsConnected from "../components/IsConnected";
import SearchBar from "../components/SearchBar";
/**
 * Component for the header of the website.
 *
 * @author Anna Briançon
 */
export default function Header({ token }) {
  const isConnected = IsConnected({ token });
  const location = useLocation();

  return (
    <header className="shadow-md bg-white font-sans flex items-center justify-between flex-wrap leading-normal tracking-normal sticky p-6 z-10 w-full top-0">
      <div className="flex items-center">
        <img
          src="/logo/logo_iut.webp"
          alt="Logo IUT"
          className="w-12 h-12 mr-2"
        />
        <Link to="/">
          <span className="text-2xl pl-2">IUT - Bibliothèque</span>
        </Link>
      </div>
      <div className="block lg:hidden">
        <button
          id="nav-toggle"
          className="flex items-center px-3 py-2 border rounded text-grey border-grey-dark"
          onClick={() => {
            document.getElementById("nav-content").classList.toggle("hidden");
          }}
        >
          <svg
            className="fill-current h-3 w-3"
            viewBox="0 0 20 20"
            xmlns="http://www.w3.org/2000/svg"
          >
            <title>Menu</title>
            <path d="M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z" />
          </svg>
        </button>
      </div>
      <div
        className="w-full flex-grow lg:flex lg:items-center lg:w-auto hidden pt-6 lg:pt-0"
        id="nav-content"
      >
        <ul className="list-reset lg:flex justify-end flex-1 items-center">
          <li className={`mr-3 p-2 lg:p-0 ${location.pathname == '/' && 'header-selected'}`}>
            <Link onClick={SearchBar} to="/">Accueil</Link>
          </li>
          {isConnected && (
            <li className={`mr-3 p-2 lg:p-0 ${location.pathname == '/followed' && 'header-selected'}`}>
              <Link to="/followed">Amis</Link>
            </li>
          )}
          <li className={`mr-3  p-2 lg:p-0 ${location.pathname == '/login' && 'header-selected'}`}>
            {!isConnected ? (
              <Link onClick={handleLogout} to="/login">
                Se Connecter
              </Link>
            ) : (
              <Link onClick={handleLogout} to="/">
                Se Déconnecter
              </Link>
            )}
          </li>
        </ul>
      </div>
    </header>
  );
}

function handleLogout() {
  localStorage.removeItem("token");
  setToken(null);
}
