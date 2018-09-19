import React from 'react';
import { Link } from 'react-router-dom';
import NavbarContainer from '../navbar/nav_bar_container';

class EditPassword extends React.Component {
  constructor(props) {
    super(props);
    this.state = {currentPassword: "", newPassword: "",confirmPassword: ""};
  }

  handleChange(field) {
    return (e) => {
      this.setState({[field]: e.target.value});
    };
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
            <label>Current password</label>
            <span className='reminder'>Enter your existing password.</span>
            <input
              type='password'
              value={this.state.first_name}
              onChange={this.handleChange('currentPassword')}
              required/>
            <label>New password</label>
            <span className='reminder'>Enter the new password you would like.</span>
            <input type='password'
              value={this.state.last_name}
              onChange={this.handleChange('newPassword')}
              required/>
            <label>Verify new password</label>
            <span className='reminder'>Reenter your password to verify.</span>
            <input type='password'
              value={this.state.last_name}
              onChange={this.handleChange('confirmPassword')}
              required/>

            <button className='ps-btn'>Save New Password</button>
            <Link to='/profile' className='cancel'>Cancel</Link>
          </div>
        </div>
      </div>
    );
  }
}

export default EditPassword;
