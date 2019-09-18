function addBook(book) {
  const book_list = document.querySelector("#book-list");
  const div = makeBookCard(book);
  book_list.appendChild(div);
}

function makeBookCard(book) {
  const div = document.createElement("div");
  div.className = "card";

  const img = document.createElement("img");
  img.src = book.img;

  const h3 = document.createElement("h3");
  h3.textContent = book.title;

  const p = document.createElement("p");
  p.textContent = book.author;

  //add all elements to div
  div.appendChild(img);
  div.appendChild(h3);
  div.appendChild(p);

  return div;
}

function showBooks(bookArray) {
  bookArray.map(book => {
    addBook(book);
  });
}

// text => {console.log(text)}

// function(text) {
//   console.log(text)
// }

// what happens when books isn't defined?

API_URL = "http://localhost:3000/books";

fetch(API_URL)
  .then(response => response.json())
  .then(data => showBooks(data));

// showBooks(books);

document
  .querySelector("#new-book-form")
  .addEventListener("submit", function(e) {
    e.preventDefault();
    const title = e.target.title.value;
    const author = e.target.author.value;
    const img = e.target.cover.value;
    const newBook = { title, author, img };

    fetch(API_URL, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Accept: "application/json"
      },
      body: JSON.stringify(newBook)
    })
      .then(response => response.json())
      .then(responseBook => addBook(responseBook));
  });
