import React from 'react';

/**
  * IsConnected component
 * @param {*} token
 * @returns isConnected with the value true or false
 * @author Antoine Pelet
 */
export default function IsConnected({token}) {
  const [isConnected, setIsConnected] = React.useState(false); //inizialization of the variable isConnected to false

  token=localStorage.getItem('token'); //recovers the token in the local storage
  //useEffect hook is used to update the component state when the token value changes
  React.useEffect(() => {
    if (token !=  null) {
      setIsConnected(true); //if token is not null, isConnected is set to true
    } 
  }, [token]);
  return isConnected; 
}