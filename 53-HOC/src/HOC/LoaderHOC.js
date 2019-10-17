import React from 'react'
import Loader from './Loader'

const LoaderHOC = WrappedComponent => {
    return class LoaderHOC extends React.Component {
        shouldRenderWrapped = () => {
            return this.props.ready;
        }
        render() {
            return this.shouldRenderWrapped()?<WrappedComponent {...this.props} />:<Loader />
        }
    }
}

export default LoaderHOC