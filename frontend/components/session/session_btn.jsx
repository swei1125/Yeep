import React from 'react';
import {Link} from 'react-router-dom';

const SessionBtn = ({currentUser, logout, login, guest}) => {
  const upper = (word) => word.charAt(0).toUpperCase() + word.substr(1);
  const display = currentUser ? (
    <div className='nav-session'>
      <span className='welcome-msg'>Hello
        &nbsp;
        {upper(currentUser.firstName)}</span>
      <button onClick={logout}>Log out</button>
    </div>
  ) : (
    <div className='nav-session'>
      <button className='demo' onClick={() => login(guest)}>DEMO</button>
      <Link to='/login'><button className='login'>Log In</button></Link>
      <Link to='/signup'><button className='signup'>Sign Up</button></Link>
    </div>
  );

  return (
    <div>{display}</div>
  );
};

export default SessionBtn;
