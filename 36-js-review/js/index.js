const RANDOM_QUESTION_URL = "http://jservice.io/api/random";

//YOUR CODE HERE
//
//SPECS
//collect elements we'll be working with from the DOM
//fetch the questions - look at the data
//decide on a load pattern
//seperate call for answer??
//populate answer fields
//wire up button functionality && show/hide
//
let CURRENT_QUESTION = {greeting: "hello"};
// const myTitle = document.getElementById("example");

function updateQuestion() {
  fetch(RANDOM_QUESTION_URL)
    .then(resp => resp.json())
    .then(json =>
      (function() {
        CURRENT_QUESTION = json[0];
        populateQuestionCard();
      })()
    );
}
//API resondes with object containing category object with title prop, question, answer

//populate cards

//populate question
function populateQuestionCard() {
  const categoryText = CURRENT_QUESTION.category.title;
  const questionText = CURRENT_QUESTION.question;
  const categoryTitle = document
    .getElementById("question")
    .querySelector(".card-title");
  categoryTitle.innerHTML = categoryText;
  const questionDisplay = document.querySelector("#question .card-text");
  questionDisplay.textContent = questionText;
}

//populate answer
function populateAnswerCard() {
  const answerText = CURRENT_QUESTION.answer;
  const answerDisplay = document.querySelector("#answer .card-text");
  answerDisplay.innerHTML = answerText;
}
function addAnswerClick() {
  document
    .getElementById("answer-button")
    .addEventListener("click", function() {
      populateAnswerCard();
      document.getElementById("answer").style.display = "block";
    });
}
function addNextClick() {
  document.getElementById("next-button").addEventListener("click", function() {
    document.getElementById("answer").style.display = "none";
    updateQuestion();
  });
}

document.addEventListener("DOMContentLoaded", function() {
  updateQuestion(); //to get initial question
  addAnswerClick(); //add functionality to the answer button
  addNextClick(); //add functionality to the next button
});
