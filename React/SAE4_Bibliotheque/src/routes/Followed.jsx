import React, { useEffect, useState } from "react";
import { Paginator } from "../components/Paginator";
import { URI } from "../constants";
import axios from "axios";
import Dialog from "../components/Dialog";
import { Link } from "react-router-dom";

function UserCard(props) {

  let bookCount = 0;
  return (
    <div className="flex flex-col items-center p-2 text-center">
      <img
        alt="profile picture"
        className="object-contain rounded-full"
        src={props.user.profilePicture}
      ></img>
      <div className="flex flex-row items-center justify-around my-2 gap-2 w-full flex-wrap">
        <h3 className="text-teal-600">{props.user.name}</h3>
        <button
          onClick={() => props.buttonAction(props.user)}
          className="button"
        >
          {props.followed ? "Se désabonner" : "S'abonner"}
        </button>
      </div>
      {props.followed && (
        <>
          <h4 className="text-red-600 mb-2">Ses dernières lectures</h4>
          <div className="flex flex-row">
            {props.user.lastThreeBorrows.map((obj) => (
              <Link to={`/book/info?id=${obj.book.id}`} key={bookCount++}>
                <img
                  alt={`${obj.book.name} cover`}
                  className="object-cover px-[0.10rem] h-24"
                  src={obj.book.image}
                ></img>
              </Link>
            ))}
          </div>
        </>
      )}
    </div>
  );
}

function UserList(props) {
  const users = props.users;
  return (
    <div className="my-12">
      <h3 className="text-xl font-semibold mb-4">
        {props.followed ? "Vous suivez :" : "Qui suivre"}
      </h3>
      <ul className="flex flex-row flex-wrap justify-around">
        {Object.keys(users).map((userInd) => (
          <UserCard
            buttonAction={props.buttonAction}
            user={users[userInd]}
            key={users[userInd].id}
            followed={props.followed}
          />
        ))}
      </ul>
    </div>
  );
}

export default function followed({ token }) {
  token = localStorage.getItem("token");

  if (token === null) {
    window.location.href = "/";
  }

  const NB_USER_DISPLAYED = 4;

  const [followedUsers, setFollowedUsers] = useState([]);
  const [suggestedUsers, setSuggestedUsers] = useState([]);

  const [startIndexFollowed, setStartIndexFollowed] = useState(0);
  const [startIndexSuggested, setStartIndexSuggested] = useState(0);

  const [totalItemsFollowed, setTotalItemsFollowed] = useState(0);
  const [totalItemsSuggested, setTotalItemsSuggested] = useState(0);

  const [actionInformations, setActionInformations] = useState({
    user: null,
    action: null,
  });
  const [waitingConfirmation, setWaitingConfirmation] = useState(false);
  const [flag, setFlag] = useState(false);

  useEffect(() => {
    const request = `${URI}/follow`;
    axios
      .get(request, {
        headers: {
          accept: "application/json",
          Authorization: `Bearer ${token}`,
        },
        params: {
          maxResults: NB_USER_DISPLAYED,
          offset: startIndexFollowed,
        },
      })
      .then((res) => {
        setFollowedUsers(res.data.following);
        setTotalItemsFollowed(res.data.results);
      })
      .catch((err) => {
        console.log(err);
      });
  }, [startIndexFollowed, flag]);

  useEffect(() => {
    const request = `${URI}/follow/suggestion`;
    axios
      .get(request, {
        headers: {
          accept: "application/json",
          Authorization: `Bearer ${token}`,
        },
        params: {
          maxResults: NB_USER_DISPLAYED,
          offset: startIndexSuggested,
        },
      })
      .then((res) => {
        setSuggestedUsers(res.data.following);
        setTotalItemsSuggested(res.data.results);
      })
      .catch((err) => {
        console.log(err);
      });
  }, [startIndexSuggested, flag]);

  function handleFollowButton(user) {
    setActionInformations({ user: user, action: "follow" });
    setWaitingConfirmation(true);
  }

  function handleUnfollowButton(user) {
    setActionInformations({ user: user, action: "unfollow" });
    setWaitingConfirmation(true);
  }

  function cancelAction() {
    setActionInformations({ user: null, action: null });
    setWaitingConfirmation(false);
  }

  function confirmAction() {
    const request = `${URI}/follow/${actionInformations.user.id}`;
    const headers = {
      Authorization: `Bearer ${token}`,
    };
    if (actionInformations.action === "follow") {
      axios
        .post(request, null, {
          headers: headers,
        })
        .then(() => {
          if (startIndexSuggested === totalItemsSuggested - 1) {
            setStartIndexSuggested(startIndexSuggested - NB_USER_DISPLAYED);
          } else {
            setFlag(!flag);            
          }
        })
        .catch((err) => {
          console.log(err);
        });
    } else if (actionInformations.action === "unfollow") {
      axios
        .delete(request, {
          headers: headers,
        })
        .then(() => {
          if (startIndexFollowed === totalItemsFollowed - 1) {
            setStartIndexFollowed(startIndexFollowed - NB_USER_DISPLAYED);
          } else {
            setFlag(!flag);
          }
        })
        .catch((err) => {
          console.log(err);
        });
    }
    setActionInformations({ user: null, action: null });
    setWaitingConfirmation(false);
  }

  return (
    <article className="wrapper pb-8">
      <Dialog
        show={waitingConfirmation}
        cancel={cancelAction}
        confirm={confirmAction}
        title={
          actionInformations.action === "follow"
            ? "S'abonner ?"
            : "Se désabonner ?"
        }
      ></Dialog>
      {followedUsers === undefined || followedUsers.length === 0 ? (
        <h1 className="text-center text-2xl m-8">Pas d'utilisateurs suivis</h1>
      ) : (
        <>
          <UserList
            buttonAction={handleUnfollowButton}
            users={followedUsers}
            followed={true}
          />
          <Paginator
            updateStartIndex={setStartIndexFollowed}
            startIndex={startIndexFollowed}
            max={NB_USER_DISPLAYED}
            totalItems={totalItemsFollowed}
          />
        </>
      )}
      {suggestedUsers === undefined || suggestedUsers.length === 0 ? (
        <h1 className="text-center text-2xl m-8">
          Pas d'utilisateurs suggérés
        </h1>
      ) : (
        <>
          <UserList
            buttonAction={handleFollowButton}
            users={suggestedUsers}
            followed={false}
          />
          <Paginator
            updateStartIndex={setStartIndexSuggested}
            startIndex={startIndexSuggested}
            max={NB_USER_DISPLAYED}
            totalItems={totalItemsSuggested}
          />
        </>
      )}
    </article>
  );
}
