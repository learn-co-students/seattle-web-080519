import React from "react";
import "./assets/css/minty.css";
import "./App.css";
import GlassesBrowser from "./components/GlassesBrowser";
import Manager from "./components/Manager";
import NavBar from "./components/NavBar";
import Details from './components/Details'
import GLASSES from "./data";
import { BrowserRouter as Router, Route, Link } from "react-router-dom";

class App extends React.Component {
  state = {
    glasses: [],
    cart: [1,2,3]
  };
  componentDidMount() {
    this.setState({ glasses: GLASSES });
  }
  render() {
    return (
      <div className="App">
        <NavBar />
        <Router>
          <Link to="/glasses">Glasses</Link> <br />
          <Link to="/manager">Manager</Link>
          <Route
            exact
            path="/glasses"
            render={() => <GlassesBrowser cart={this.state.cart} glasses={this.state.glasses} />}
          />
          <Route
            path="/glasses/:id"
            render={props => (
              <Details {...props} glasses={this.state.glasses} />
            )}
          />
          <Route path="/manager" render={() => <Manager />} />
        </Router>
      </div>
    );
  }
}

export default App;
