import React from 'react';
import { Link } from 'react-router-dom';

class SideBar extends React.Component {

  render(){
    return (
      <ul className='nav-items'>
        <li className='active'>
          <Link to='/profile'>
            <i className="fas fa-user profile"></i>
            <span>Profile Overview</span>
          </Link>
        </li>
        <li>
          <Link to='#'>
            <div className='icon'>
              <i className="material-icons">star</i>
            </div>
            <span>Reviews</span>
          </Link>
        </li>
      </ul>
    );
  }
}

export default SideBar;
