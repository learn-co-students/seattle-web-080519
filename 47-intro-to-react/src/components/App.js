import React from "react";
import FriendList from "./FriendList";
import FriendForm from "./FriendForm";
import "../App.css";

const INITIAL_STATE = [
  "Greg",
  "Spider Man",
  "Tony Stark",
  "Catwoman",
  "StarLord"
];

class App extends React.Component {
  constructor() {
    super();
    this.state = {
      myFriends: INITIAL_STATE
    };
  }

  // state = {
  //   myFriends: ["Greg", "Spider Man", "Tony Stark", "Catwoman", "StarLord"]
  // };

  addFriend = (newFriend) => {
    //here we add the friend to state.
    this.setState(prevState => {
      return { myFriends: [...prevState.myFriends, newFriend] };
    });
    console.log(this.state.myFriends);
  };

  render() {
    return (
      <div className="container">
        <h1>Below is my list of friends</h1>
        <FriendForm onAddFriend={this.addFriend} />
        <FriendList friends={this.state.myFriends} />
      </div>
    );
  }
}

// class App extends React.Component {
//     render() {
//         return <h1>Hello from App Component</h1>;
//     }
// }

export default App;
