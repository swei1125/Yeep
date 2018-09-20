import React from 'react';
import { Link } from 'react-router-dom';
import NavbarContainer from '../navbar/nav_bar_container';

class EditPassword extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      currentPassword: "",
      newPassword: "",
      confirmPassword: "",
      demoUser: false,
      display: "none"
    };
  }

  handleChange(field) {
    return (e) => {
      this.setState({[field]: e.target.value});
    };
  }
  componentWillUnmount() {
    this.props.clearPasswordErrors();
  }

  submit(e){
    e.preventDefault();
    if (this.props.user.id === 1) {
      this.setState({demoUser: true});
      return null;
    }
    const data = {
      current_password: this.state.currentPassword,
      password: this.state.newPassword,
      confirm_password: this.state.confirmPassword,
      email: this.props.user.email
    };
    this.props.updatePassword(this.props.user.id, data)
    .then(() => {
      this.setState({
        display: "block",
        currentPassword: "",
        newPassword: "",
        confirmPassword: "",
      });
    });
  }

  render() {
    const {firstName, lastName, img} = this.props.user;
    return(
      <div className='update-profile-wrapper'>
        <NavbarContainer singleBiz={true}/>
        <div className='update-profile-inner-wrapper'>
          <div className='left-column'>
            <h1>{`${firstName}'s Account Settings`}</h1>
            <ul className='nav-items'>
              <li>
                <Link to='/profileupdate'>
                  <span>Profile</span>
                </Link>
              </li>
              <li className='active'>
                <Link to='/changepassword'><span>Password</span></Link>
              </li>
            </ul>
          </div>
          <div className='right-column'>
            <h2>Change your password</h2>
            <div className='alert' style={{display: this.state.display}}>
              <p>Great, your password has been updated!</p>
            </div>
            <div className='error' style={{display: this.state.demoUser ? "block" : "none"}}>
              <p>Please do not change demo user's password.</p>
            </div>
            {this.props.errors.length === 0 ? "" : (
              <div className='error'>
                <p>{this.props.errors[0]}</p>
              </div>
            )}
            <form onSubmit={this.submit.bind(this)}>
              <label>Current password</label>
              <span className='reminder'>Enter your existing password.</span>
              <input
                type='password'
                value={this.state.currentPassword}
                onChange={this.handleChange('currentPassword')}
                required/>
              <label>New password</label>
              <span className='reminder'>Enter the new password you would like.</span>
              <input type='password'
                value={this.state.newPassword}
                onChange={this.handleChange('newPassword')}
                required/>
              <label>Verify new password</label>
              <span className='reminder'>Reenter your password to verify.</span>
              <input type='password'
                value={this.state.confirmPassword}
                onChange={this.handleChange('confirmPassword')}
                required/>

              <button type='submit' className='ps-btn'>Save New Password</button>
              <Link to='/profile' className='cancel'>Cancel</Link>
            </form>
          </div>
        </div>
      </div>
    );
  }
}

export default EditPassword;
