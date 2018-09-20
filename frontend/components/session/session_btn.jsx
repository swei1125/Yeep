import React from 'react';
import { Link } from 'react-router-dom';

class SessionBtn extends React.Component{
  constructor(props) {
    super(props);
    this.state = {display: "none"};
    this.handleClick = this.handleClick.bind(this);
  }

  componentWillUnmount() {
    window.removeEventListener("mousedown", this.handleClick);
  }

  handleClick(e) {
    if (this.node.contains(e.target)) {
      return;
    }
    this.setState({display: "none"});
  }
  
  showDropdown(e) {

    e.preventDefault();
    if (this.state.display === 'none') {
      this.setState({display: "block"});
      window.addEventListener("mousedown", this.handleClick);
      window.addEventListener("mouseup", this.removeListener);
    } else {
      this.setState({display: "none"});
    }

  }
  handleLogout(e) {
    e.preventDefault();
    this.setState({display: "none"});
    this.props.logout();
  }

  render() {
    const {currentUser, logout, login, guest} = this.props;
    const display = currentUser ? (
      <div className='nav-session-dropdown' ref={node => {this.node = node;}}>
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
