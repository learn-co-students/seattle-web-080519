import React, { Component } from 'react'
import './App.css'
import Form from './components/Form';
import Order from './components/Order';
// check that all files are imported from the correct directory

class App extends Component {
  // needed a "=" instead of ":" when initializing state
  state = {
    orders: []
  }

  addOrder = (order) => {
    this.setState({
      orders: this.state.orders.concat(order)
    })
  }

  render() {
    // use console.log to test incoming state and props 
    console.log(this.state)
    const orders = this.state.orders.map( (order, idx) => {
      return <Order key={idx} {...order} />
    })

    return (
      <div className="App">
        <header className="App-header">
          <img src={ require('./images/logo.png') } className="App-logo" alt="logo" />
        </header>

        <Form addOrder={this.addOrder}/>

        <div className="ui raised container segment">
          <h1 className="ui block header">All Orders</h1>
          <div className="ui three cards">
            { orders }
          </div>
        </div>
      </div>
    )
  }
}

export default App
