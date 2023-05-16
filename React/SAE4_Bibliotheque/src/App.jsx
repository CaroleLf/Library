import { Routes, Route } from "react-router-dom";
import Header from "./components/Header";
import Footer from "./components/Footer";
import Followed from "./routes/Followed";
import Index from "./routes/Index";
import Login from "./routes/Login";
import NoMatch from "./routes/NoMatch";
import SearchResult from "./routes/SearchResult";
import BookInfo from "./routes/BookInfo";
import { BrowserRouter } from "react-router-dom";
import { useState } from "react";

/**
 * App component
 * 
 * @author Mathéo Dupiat
 */
function App() {

  const [input, setInput] = useState("");


  return (
    <BrowserRouter>
      <Header />
      <Routes>
        <Route path="/" element={<Index updateInput={setInput} />} />
        <Route path="/book" element={<SearchResult updateInput={setInput} input={input} />} />
        <Route path="/book/info" element={<BookInfo updateInput={setInput} />} />
        <Route path="/login" element={<Login />} />
        <Route path="/followed" element={<Followed />} />
        <Route path="*" element={<NoMatch />} />
      </Routes>
      <Footer />
    </BrowserRouter>

  );
}

export default App;
