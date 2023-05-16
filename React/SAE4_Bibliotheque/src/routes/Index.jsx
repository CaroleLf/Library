import React from "react";
import LatestAcquisition from "../components/LatestAcquisition";
import LatestBorrow from "../components/LatestBorrow";
import IsConnected from "../components/IsConnected";
import Favourites from "../components/Favourites";
import SuggestedBooks from "../components/SuggestedBooks";
import SearchBar from "../components/SearchBar";

/**
 * Index component
 *
 * @author Anna Briançon
 */
export default function Root({ token, updateInput }) {
  const isConnected = IsConnected({ token });
  return (
    <>
      <SearchBar updateInput={updateInput} />
      <div className="my-16 flex flex-col gap-8">
        {isConnected && (
          <>
            <SuggestedBooks />
            <LatestBorrow />
          </>
        )}
        <Favourites />
        <LatestAcquisition />
      </div>
    </>
  );
}
