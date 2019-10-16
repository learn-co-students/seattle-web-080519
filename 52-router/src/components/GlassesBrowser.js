import React from "react";
import Glasses from "./Glasses";
import Details from './Details'
import { Route } from 'react-router-dom'

class GlassesBrowser extends React.Component {
  constructor(props) {
    super();
    console.log(props.cart)
  }
  
  renderGlasses = () => {
    return this.props.glasses.map((glasses) => {
      return <Glasses glasses={glasses} key={glasses.id} />;
    });
  };
  render() {
    return (
      <>
        <div className="container">
          <div className="row">{this.renderGlasses()}</div>
        </div>
      </>
    );
  }
}

export default GlassesBrowser;
