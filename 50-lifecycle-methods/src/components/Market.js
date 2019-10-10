import React, { Component } from "react";

class Market extends Component {
  constructor() {
    super();
    console.log("%cMARKET constructor", "color:green;");
    this.state = {
      marketTrend: 0
    };
  }



  componentWillUnmount() {
    //stop the counter
    //here we stop the counter on unmounting - even though the timer will no longer be instantiated, the loop will continue, because in the interval was still loaded in the client browser
    //my passing the timer into the clearInterval() method just before unmounting, be break the cycle.
    clearInterval(this.timerLoop);
  }

  componentDidMount() {
    console.log("%cMARKET was mounted", "color:green;");
    // this.setState({ marketTrend: 1 });
    // setInterval(() => console.log("hello"), 1000)
  }

  //here we set the timer loop itself, as a method running within the Market component - ie: the loop doesnt exists unless the component does.
  timerLoop = setInterval(() => {
    this.props.onRunTimer()
  }, 1000);

  componentWillMount() {
    console.log("%cMARKET is about to be mounted", "color:green;");
    this.setState({ marketTrend: 1 });
  }

  changeMarket = () => {
    this.setState(prevState => {
      let change = Math.random().toFixed(2) * 5;
      if (Math.random() > 0.5) {
        change *= -1;
      }
      return {
        marketTrend: (
          parseFloat(prevState.marketTrend) + parseFloat(change)
        ).toFixed(2)
      };
    });
  };

  render() {
    console.log("%cMARKET was rendered", "color:green;");
    return (
      <div
        className={`container ${
          this.state.marketTrend >= 0 ? "positive" : "negative"
        }`}
      >
        <h2 onClick={this.changeMarket}>STOCK TICKER</h2>
        <h5>
          Stocks are {this.state.marketTrend >= 0 ? "rising" : "dropping"} by{" "}
          {this.state.marketTrend}%
        </h5>
      </div>
    );
  }
}

export default Market;
