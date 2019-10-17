import React from "react";
import { Link } from "react-router-dom";

class Glasses extends React.Component {
  render() {
    const { image, style, maker, id } = this.props.glasses;
    return (
      <>
        <div className="col col-md-3">
          <div className="card">
            <Link to={`/glasses/${id}`}>
              <img className="card-img-top" src={image} alt="glasses product" />
              <div className="card-body">
                <h3>{style}</h3>
                <h4>{maker}</h4>
              </div>
            </Link> 
          </div>
        </div>
      </>
    );
  }
}

export default Glasses;
