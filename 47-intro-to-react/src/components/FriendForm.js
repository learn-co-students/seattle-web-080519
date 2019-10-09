import React from "react";

class FriendForm extends React.Component {
  state = {
    friendName: ""
  };

  handleFormSubmit = event => {
    event.preventDefault();
    this.props.onAddFriend(this.state.friendName);
  };

  handleChangeName = event => {
    // console.log(event.target.value)
    if (event.target.value.includes("1")) {
      this.setState({ friendName: "NO NUMBERS!!!" });
    } else {
      this.setState({ friendName: event.target.value });
    }
  };

  render() {
    return (
      <form onSubmit={this.handleFormSubmit}>
        <label htmlFor="friend">New Friend Name</label>
        <input
          value={this.state.friendName}
          type="text"
          name="friend"
          onChange={this.handleChangeName}
        />
        <button>Submit</button>
      </form>
    );
  }
}

export default FriendForm;
