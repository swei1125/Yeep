import React from 'react';
import {Route, Switch, Redirect} from 'react-router-dom';
import SignupFormContainer from './session/signup_form_container';
import LoginFormContainer from './session/login_form_container';
import HomeContainer from './home/home_container';
import {AuthRoute, ProtectedRoute} from '../utils/route_util';
import Footer from './footer/footer';

const App = () => (
  <div className='main-wrapper'>

    <Switch>
      <Route exact path='/' component={HomeContainer}/>
      <AuthRoute exact path='/signup' component={SignupFormContainer} />
      <AuthRoute exact path='/login' component={LoginFormContainer} />
      <Redirect push to="/"/>

    </Switch>



    <Footer />

  </div>
);

export default App;
