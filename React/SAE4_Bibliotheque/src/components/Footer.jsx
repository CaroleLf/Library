import React from "react";
import { Link } from "react-router-dom";

/**
 * Component for the footer of the website.
 * 
 * @author Mathéo Dupiat, Anna Briançon
 */
export default function Footer() {
  return (
    <footer className="bg-slate-200 p-10 w-full absolute bottom-0 flex flex-wrap flex-row sm:justify-around font-light text-gray-800 md:h-64 h-96 justify-start gap-4">
      <div className="flex flex-col">
        <h4 className="footer-title">IUT - Bibliothèque</h4>
        <ul className="flex flex-col gap-1 my-auto">
          <li>15 rue Naudet - CS 10207</li>
          <li>33175 Gradignan Cedex</li>
          <li>Tél. +33 (0)5 56 84 57 57</li>
        </ul>
      </div>
      <div className="flex flex-col">
        <h4 className="footer-title">Liens</h4>
        <ul className="flex flex-col gap-1 my-auto">
          <li>
            <Link to="https://www.iut.u-bordeaux.fr/general/">
              IUT de Bordeaux
            </Link>
          </li>
          <li>
            <Link to="https://www.iut.u-bordeaux.fr/general/bibliotheques-universitaires/">
              Bibliothèque de l'université de Bordeaux
            </Link>
          </li>
          <li>
            <Link to="https://www.iut.u-bordeaux.fr/general/contacts/">
              Nous contacter
            </Link>
          </li>
        </ul>
      </div>
      <div className="flex flex-col">
        <h4 className="footer-title">Legal</h4>
        <p className="my-auto">
          <a href="/CGU_Bibliotheque.pdf" target="_blank">
            Conditions générales d'utilisation
          </a>
        </p>
      </div>
      <div className="flex flex-row gap-2 items-center">
        <Link to="https://www.facebook.com/iutdebordeaux">
          <img alt="Logo Facebook" className="social-icon" src="/logo/facebook.webp" />
        </Link>
        <Link to="https://www.instagram.com/iutdebordeaux/">
          <img alt="Logo Instagram" className="social-icon" src="/logo/instagram.webp" />
        </Link>
        <Link to="https://twitter.com/IUT_de_Bordeaux">
          <img alt="Logo Twitter" className="social-icon" src="/logo/twitter.webp" />
        </Link>
        <Link to="https://www.linkedin.com/school/iut-de-bordeaux">
          <img alt="Logo Linkedin" className="social-icon" src="/logo/linkedin.webp" />
        </Link>
        <Link to="https://www.youtube.com/channel/UCaWP9UzIsK3H9NKx9AruRdA">
          <img alt="Logo Youtube" className="social-icon" src="/logo/youtube.webp" />
        </Link>
      </div>
    </footer>
  );
}
