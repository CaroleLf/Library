/**
 * Function called in case the page is not found
 * 
 * @author Mathéo Dupiat 
 */
export default function NoMatch() {
  return (
    <>
      <h1 className="text-center text-9xl m-32">404</h1>
      <p className="text-center text-4xl mb-32">
        La page recherchée n'existe pas !
      </p>
    </>
  );
}
