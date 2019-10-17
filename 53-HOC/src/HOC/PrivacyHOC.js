import React from 'react'

const PrivacyHOC = WrappedComponent => {
   return class PrivacyHOC extends React.Component {
        userHasAccess() {
            return this.props.logged_in;
        }

       render() {
           return (
            this.userHasAccess()?<WrappedComponent {...this.props}/>:<h3>Denied</h3>
           )
       }
   } 
}

export default PrivacyHOC