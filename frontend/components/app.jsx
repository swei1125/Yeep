import React from 'react';
import {Route, Switch} from 'react-router-dom';
import SignupFormContainer from './session/signup_form_container';
import LoginFormContainer from './session/login_form_container';
import NavbarContainer from './navbar/nav_bar_container';
import {AuthRoute, ProtectedRoute} from '../utils/route_util';

const App = () => (
  <div>
    <h1>Hello my yelp!</h1>
    <NavbarContainer />
    <Switch>
      <AuthRoute path='/signup' component={SignupFormContainer} />
      <AuthRoute path='/login' component={LoginFormContainer} />
      <Route path='/' />
    </Switch>

  </div>
);

export default App;
