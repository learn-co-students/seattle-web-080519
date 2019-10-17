import React from "react";
import Friend from './Friend'

class FriendList extends React.Component {
  render() {
    return (
      <div>
        <h2>I am the Friend List</h2>
        <ul>
        {this.props.friends.map((friend, index) => {
            return <Friend key={index} friend={friend} />
        })}
        </ul>
      </div>
    );
  }
}

export default FriendList;
