// CLEAR THE FORM XXXXXXXXXXX
// EDIT BOOK INFORMATION
// LIKE A BOOK
// DELETE A BOOK

function deleteBook(book, bookCard) {
  fetch(`http://localhost:3000/books/${book.id}`, {
    method: "DELETE",
    headers: {
      "Content-Type": "application/json",
      Accept: "application/json"
    },
    body: JSON.stringify(book)
  });
  bookCard.parentNode.removeChild(bookCard)
  // OR USE bookCard.remove() if you wanna be modern about it
}

function editBook(book, bookCard) {
  //cause edit form to appear
  const form = document.getElementById("edit-form");
  form.style.display = "block";
  //populate the form with book data
  form.title.value = book.title;
  form.author.value = book.author;
  form.cover.value = book.img;

  console.log(form);

  //submit button will need to update the data, fetch() to the API
  form.addEventListener("submit", function(e) {
    e.preventDefault();
    const title = e.target.title.value;
    const author = e.target.author.value;
    const img = e.target.cover.value;
    const editedBook = { title, author, img, id: book.id };
    fetch(`http://localhost:3000/books/${book.id}`, {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
        Accept: "application/json"
      },
      body: JSON.stringify(editedBook)
    })
      .then(resp => resp.json())
      .then(json => {
        bookCard.querySelector("h3").textContent = json.title
      });
    form.style.display = "none";
  });

  //hid the form after submitting
}

const editForm = document.getElementById("edit-form");

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

  // const likeButton = document.createElement("button");
  // likeButton.className = "btn btn-info";
  // likeButton.textContent = "Like";

  const editButton = document.createElement("button");
  editButton.className = "btn btn-warning";
  editButton.textContent = "Edit";
  editButton.addEventListener("click", function() {
    editBook(book, div);
  });

  const deleteButton = document.createElement("button");
  deleteButton.className = "btn btn-danger";
  deleteButton.textContent = "Delete";
  deleteButton.addEventListener("click", function() {
    deleteBook(book, div)
  })

  //add all elements to div
  div.appendChild(img);
  div.appendChild(h3);
  div.appendChild(p);
  // div.appendChild(likeButton)
  div.appendChild(editButton);
  div.appendChild(deleteButton);

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
    document.getElementById("new-book-form").reset();
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
    // clear the form
  });
