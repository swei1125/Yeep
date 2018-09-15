import React from 'react';
import { Link } from 'react-router-dom';

class SessionBtn extends React.Component{
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

  render() {
    const {currentUser, logout, login, guest} = this.props;
    const display = currentUser ? (
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
              <li><a>{`${currentUser.firstName} ${currentUser.lastName[0]}.`}</a></li>
              <li>
                <section className='review-count'>
                  <div className='icon'>
                    <i className="material-icons">star</i>
                  </div>
                  <span>{currentUser.reviewsCount}</span>
                </section>
                <section className='photo-count'>
                  <i className="material-icons camera">camera_alt</i>
                  <span>{currentUser.photoCount}</span>
                </section>
              </li>
            </div>
          </div>
          <ul className='menu-list' >
            <li>
              <Link to='#'>
                <i className="fas fa-user about-me"></i>
                <span>About Me</span>
              </Link>
            </li>
            <li>
              <Link to='#'>
                <i className="fas fa-cog"></i>
                <span>Account Settings</span>
              </Link>
            </li>
          </ul>
          <div className='logout' >
            <a onClick={logout}>Log Out</a>
          </div>
        </div>

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
  }
}

export default SessionBtn;
