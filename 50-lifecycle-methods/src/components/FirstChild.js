import React from 'react'

class FirstChild extends React.PureComponent {
    constructor() {
        super()
        console.log("%cCHILD constructor", "color:blue;");
    }

    componentWillReceiveProps(props) {
        console.log(props)
    }

    render() {
        console.log("%cCHILD render", "color:blue;")
        return (
            <div>
                <h3>{this.props.myValue}</h3>
            </div>
        )
    }
}

export default FirstChild