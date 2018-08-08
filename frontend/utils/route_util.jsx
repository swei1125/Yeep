import React from 'react';
import {connect} from 'react-redux';
import {Route, Redirect, withRouter} from 'react-router-dom';

const mapStateToProps = state => ({
  loggedIn: Boolean(state.session.currentUser)
});

const Auth = ({loggedIn, exact, path, component: Compoennt}) => (
  <Route path={path} exact={exact} render={props => (
      loggedIn ? <Redirect to='/' /> : <Compoennt {...props} />
    )}
  />
);

export const AuthRoute = withRouter(connect(mapStateToProps)(Auth));

const Protected = ({loggedIn, exact, path, component: Compoennt}) => (
  <Route path={path} exact={exact} render={props => (
      loggedIn ?  <Compoennt {...props} /> : <Redirect to='/login' />
    )}
  />
);

export const ProtectedRoute = withRouter(connect(mapStateToProps)(Protected));
