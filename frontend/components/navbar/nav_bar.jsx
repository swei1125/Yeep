import React from 'react';
import SearchBarContainer from '../search/search_bar_container';
import {Link} from 'react-router-dom';

class NavBar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {display: "none"};
  }

  showDropdown(e) {

    e.preventDefault();
    if (this.state.display === 'none') {
      this.setState({display: "block"});
    }else {
      this.setState({display: "none"});
    }

  }
  handleLogout(e) {
    e.preventDefault();
    this.setState({display: "none"});
    this.props.logout();
  }

  render() {
    const currentUser = this.props.currentUser;
    const session = this.props.currentUser ? (
      <div className='nav-session-dropdown'>
        <div onClick={this.showDropdown.bind(this)} className='user-menu' >
          <img src={currentUser.img} />
          <section><i className="fas fa-caret-down"></i></section>
        </div>
        <div className='dropdown' style={{ display: this.state.display }}>
          <div className='arrow'></div>
            <div className='user-content' >
              <img src={currentUser.img}/>
              <div className='user-info' >
                <li><Link to='/profile'>{`${currentUser.firstName} ${currentUser.lastName[0]}.`}</Link></li>
                <li>
                  <section className='review-count'>
                    <div className='icon'>
                      <i className="material-icons">star</i>
                    </div>
                    <span>{currentUser.reviews ? Object.values(currentUser.reviews).length : 0}</span>
                  </section>
                  <section className='photo-count'>
                    <i className="material-icons camera">camera_alt</i>
                    <span>{currentUser.photos ? Object.values(currentUser.photos).length : 0}</span>
                  </section>
                </li>
              </div>
            </div>
            <ul className='menu-list' >
              <li>
                <Link to='/profile'>
                  <i className="fas fa-user about-me"></i>
                  <span>About Me</span>
                </Link>
              </li>
              <li>
                <Link to='/profileupdate'>
                  <i className="fas fa-cog"></i>
                  <span>Account Settings</span>
                </Link>
              </li>
            </ul>
            <div className='logout' >
              <a onClick={this.handleLogout.bind(this)}>Log Out</a>
            </div>
        </div>
      </div>
    ) : (
      <div className='nav-session'>
        <Link to='/signup'><button>Sign Up</button></Link>
      </div>
    );

    const login = !this.props.currentUser ? (
      <div className='bottom-btn'>
        <button><Link to='/login'>Log In</Link></button>
      </div>
    ) : "";
    return (
      <div className='nav-wrapper'>
        <div className='nav-top'>
          <div className='top-inner-wrapper'>
            <Link to='/'>
              <span className='logo'><img src={window.images.logo}/></span>
            </Link>
            <SearchBarContainer singleBiz={this.props.singleBiz}/>
            {session}
          </div>
        </div>
        <div className='nav-bottom'>
          <div className='bottom-inner-wrapper'>
            <div className='tags'>
              <Link to='/search/Restaurants&default' >
                <span>
                  <i className="material-icons">restaurant</i>
                  Restaurants
                </span>
              </Link>
              <Link to='/search/Tea&default'>
                <span>
                  <i className="fas fa-coffee"></i>
                  Coffee & Tea
                </span>
              </Link>
              <Link to='/search/Spas&default'>
                <span>
                  <i className="fas fa-spa"></i>
                  Spas
                </span>
              </Link>
            </div>
            {login}
          </div>
        </div>
      </div>
    );
  }
}


export default NavBar;
