import React from 'react';
import SearchBarContainer from '../search/search_bar_container';
import {Link} from 'react-router-dom';

class NavBar extends React.Component {

  render() {
    const session = this.props.currentUser ? (
      <div className='nav-session'>
        <span className='welcome-msg'>Hi
          &nbsp;
          {this.props.currentUser.firstName}
        </span>
      </div>
    ) : (
      <div className='nav-session'>
        <button><Link to='/signup'>Sign Up</Link></button>
      </div>
    );

    const login = !this.props.currentUser ? (
      <div>
        <button><Link to='/login'>Log In</Link></button>
      </div>
    ) : (
      <div>
        <button onClick={this.props.logout}>Log out</button>
      </div>
    );
    return (
      <div className='nav-wrapper'>
        <div className='nav-top'>
          <div className='top-inner-wrapper'>
            <span className='logo'><img src={window.images.logo}/></span>
            <SearchBarContainer />
            {session}
          </div>
        </div>
        <div className='nav-bottom'>
          <div className='tags'>
            <button>
              <span>
                <i className="material-icons">restaurant</i>
                Restaurants
              </span>
            </button>
            <button>
              <span>
                <i className="material-icons">local_bar</i>
                Nightlife
              </span>
            </button>
            <button>
              <span>
                <i className="material-icons">build</i>
                Home Services
              </span>
            </button>
          </div>
          {login}
        </div>
      </div>
    );
  }
}


export default NavBar;
