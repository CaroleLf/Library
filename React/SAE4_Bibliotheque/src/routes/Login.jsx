import React from "react";
import axios from "axios";
import { URI } from "../constants";
import { useState } from "react";

/**
 * Login component
 *
 * @author Carole Le-Flohic
 */
export default function Login() {

  localStorage.removeItem("token"); //clear token in the local storage

  const recherche = (event) => {
    event.preventDefault(); //prevent the default behavior of the form

    const mail = event.target.mail.value;
    const password = event.target.password.value;

    const requestBody = {
      mail: mail,
      password: password,
    };
    const request = `${URI}/login`;

    axios
      .post(request, requestBody) //request axios to connect
      .then((response) => {
        document.getElementById("erreur").innerHTML = ""; //clear the error message
        localStorage.setItem("token", response.data.token); //save the token in the local storage

        window.location.href = "/";
      })
      //manage errors
      .catch((e) => {
        if (e.response.status === 401) {
          console.log(e);
          console.log("Unauthorized wrong email or password" + e);
          document.getElementById("erreur").innerHTML =
            "Email ou mot de passe incorrect";
        } else if (e.response.status === 400) {
          console.log(e);
          console.log("Bad Request missing email or password" + e);
          document.getElementById("erreur").innerHTML =
            "Email ou mot de passe manquant";
        } else {
          console.log(e);
          console.log("Error serveur" + e);
          document.getElementById("erreur").innerHTML = "Erreur serveur";
        }
      });
  };

  return (
    <article className="text-center">
      <h1 className="text-5xl text-teal-600 my-8">Connexion</h1>
      <form onSubmit={recherche}>
        <div className="flex justify-center">
          <div className="flex justify-center flex-col">
            <input
              className="mb-4	bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-60 p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
              type="text"
              name="mail"
              placeholder="Nom"
              aria-label=" Rentrer votre adresse mail"
              label="Nom"
            />
            <input
              className="mb-4 bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-60 p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
              type="password"
              name="password"
              placeholder="Mot de passe"
              aria-label=" Rentrer votre mot de passe"
              label="Mot de passe"
            />
            <p id="erreur" className="text-red-500"></p>
            <button
              className="mb-4 w-full text-white focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center  dark:focus:ring-primary-800 hover:bg-teal-800 bg-teal-600"
              type="submit"
              value="Se connecter"
              label="Se connecter"
              aria-label="Se connecter"
            >
              {" "}
              Se connecter{" "}
            </button>
          </div>
        </div>
      </form>
    </article>
  );
}
