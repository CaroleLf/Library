import React from "react";

/**
 * The paginator component used to navigate through the results.
 *
 * @param props the props.
 * @return {JSX.Element} the paginator component.
 * @author Mathéo Dupiat
 */
export const Paginator = (props) => {
  
  /**
   * The function used to handle the previous button click.
   *
   * @author Mathéo Dupiat
   */
  function handlePrevious() {
    props.updateStartIndex(props.startIndex - props.max);
  }

  /**
   * The function used to handle the next button click.
   *
   * @author Mathéo Dupiat
   */
  function handleNext() {
    props.updateStartIndex(props.startIndex + props.max);
  }

  let upperBound = props.startIndex + props.max;

  if (upperBound > props.totalItems) {
    upperBound = props.totalItems;
  }

  return (
    <div className="flex flex-row items-center justify-center gap-4">
      {props.startIndex > 0 ? (
        <button className="button" onClick={handlePrevious}>
          Précédent
        </button>
      ) : null}

      <div>{`[${props.startIndex + 1}...${upperBound}] / ${
        props.totalItems
      }`}</div>

      {props.totalItems > props.startIndex + props.max + 1 ? (
        <button className="button" onClick={handleNext}>
          Suivant
        </button>
      ) : null}
    </div>
  );
};
