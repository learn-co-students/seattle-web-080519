let myPets = ["Sparky", "Momo", "General Meow", "Charlie"];


document.addEventListener("DOMContentLoaded", function() {
  //get list of all 'li' type nodes
  const listNodes = document.querySelectorAll("li");

  //add relevant ids to list items
  for (let node of listNodes) {
    const nodeText = node.textContent;
    const idText = nodeText.split(" ")[1].toLowerCase();
    node.id = idText;
  }

  //update greeting to include new food name
  function sayFood(node) {
    node.addEventListener("click", function() {
      const greetingElement = document.createElement("h1");
      greetingElement.textContent = node.textContent;
      document.querySelector(".welcome").appendChild(greetingElement);
    })
  }

  for (let node of listNodes) {
    sayFood(node);
  }

  document.querySelector("#food-form").addEventListener("submit", function(event) {
      event.preventDefault();
      const newFoodItem = document.createElement("li");

      // directly from DOM node (form) <- fine, but finds information that we already have
      // const userInput = document.querySelector("#myNewFood").value;

      //text content from event
      const userInput = event.target["new-food"].value;
      newFoodItem.textContent = userInput;
      //the following helper function adds behavior that was applied to others on page load
      sayFood(newFoodItem)
      document.getElementById("food-list").appendChild(newFoodItem);
      document.querySelector("#food-form")["new-food"].value = "";
    });

  // document.addEventListener("keydown", function(event) {
  //   console.log(event)
  //   document.querySelector("#food-form")["new-food"].value =
  //     document.querySelector("#food-form")["new-food"].value + event.key;
  // })

  //addEventListener(a, b)
  //a = event listened for
  //b = callback that define the reaction
});
