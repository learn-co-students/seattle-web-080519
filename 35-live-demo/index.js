document.addEventListener("DOMContentLoaded", function() {
  getBooks();
});

const bookUrl = "http://localhost:3000/books";

function getBooks() {
  fetch(bookUrl)
    .then(response => response.json())
    .then(response => {
      console.log(response);
      return response;
    })
    .then(response => cycleThroughBooks(response))
    .catch(err => console.log("error here=", err));
}

function cycleThroughBooks(books) {
  books.forEach(book => renderABook(book));
}

function renderABook(book) {
  const list = document.getElementById("list");
  const li = document.createElement("li");
  li.textContent = `Title: ${book.title}`;
  li.addEventListener("click", () => showABook(book));
  list.appendChild(li);
}

function showABook(book) {
  const showPanel = document.getElementById("show-panel");

  const div = document.createElement("div");
  const ul = document.createElement("ul");
  // ul.id = "usersList";
  ul.setAttribute("id", "usersList");

  const pID = document.createElement("p");
  const h3 = document.createElement("h3");
  const pDesc = document.createElement("p");
  const img = document.createElement("img");
  const br = document.createElement("br");
  const button = document.createElement("button");

  pID.textContent = "ID: " + book.id;
  h3.textContent = `Title: ${book.title}`;
  // using string interpolation
  pDesc.textContent = "Content: " + book.description;
  img.src = book.img_url;

  showPanel.textContent = "";

  div.appendChild(pID);
  div.appendChild(h3);
  div.appendChild(pDesc);
  div.appendChild(img);
  div.appendChild(br);
  div.appendChild(button);

  for (let i = 0; i < book.users.length; i++) {
    let li = document.createElement("li");
    li.className = "li-user";
    li.textContent = `{"id":${book.users[i].id}, "username":${book.users[i].username}}`;
    ul.appendChild(li);
  }

  button.textContent =
    book.users.findIndex(user => user.id === 1) > -1
      ? "Unlike This Book"
      : "Like This Book";
  button.addEventListener("click", () => addLike(book));

  div.appendChild(ul);

  showPanel.appendChild(div);
}

function addLike(book) {
  let userExists = false;
  for (let i = 0; i < book.users.length; i++) {
    if (book.users[i].id === 1) {
      userExists = true;
      break;
    }
  }
  // to append
  userExists
    ? book.users.pop()
    : book.users.push({ id: 1, username: "pouros" });
  // to prepend
  //   userExists
  //     ? book.users.shift()
  //     : book.users.unshift({ id: 1, username: "pouros" });

  // refactor
  //   users.books.findIndex(book => book.id === 1);
  fetch(`${bookUrl}/${book.id}`, {
    method: "PATCH",
    headers: {
      "Content-Type": "application/json",
      Accept: "application/json"
    },
    body: JSON.stringify({ users: book.users })
  })
    // patch just the users of the book. nothing else. so really here it is book.users and not users
    .then(response => response.json())
    .then(response => showABook(response))
    .catch(err => console.log(err));
}
