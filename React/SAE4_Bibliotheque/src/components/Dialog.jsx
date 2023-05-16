export default function Dialog(props) {
  return props.show ? (
    <div
      onClick={props.cancel}
      className="fixed top-0 left-0 h-screen w-screen flex justify-center items-center bg-transparent-black z-30"
    >
      <div
        onClick={(e) => e.stopPropagation()}
        className="flex flex-col justify-around rounded-xl min-h-[8rem] min-w-[28rem] bg-white z-50 w-1/3 h-1/2"
      >
        <h2 className="text-xl">{props.title}</h2>
        <div className="flex justify-around">
          <button
            onClick={props.cancel}
            className="hover:bg-red-500 border border-red-500 rounded py-1 px-3 hover:text-white shadow-md"
          >
            Annuler
          </button>
          <button
            onClick={props.confirm}
            className="hover:bg-green-500 border border-green-500 rounded py-1 px-3 shadow-md hover:text-white"
          >
            Confirmer
          </button>
        </div>
      </div>
    </div>
  ) : null;
}
