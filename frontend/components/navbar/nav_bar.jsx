import React from 'react';
import {Link} from 'react-router-dom';

const Navbar = ({currentUser, logout}) => {
  const upper = (word) => word.charAt(0).toUpperCase() + word.substr(1);
  const display = currentUser ? (
    <div>
      <span>Hello
        {" " + upper(currentUser.firstName) + " "}
        {currentUser.lastName[0].toUpperCase()}.</span>
      <button onClick={logout}>Log out</button>
    </div>
  ) : (
    <div>
      <Link to='/signup'><button>Sign Up</button></Link>
      <Link to='/login'>Log In</Link>
    </div>
  );

  return (
    <div>{display}</div>
  );
};

export default Navbar;
