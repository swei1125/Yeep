import React from 'react';
import { Link } from 'react-router-dom';
import NavbarContainer from '../navbar/nav_bar_container';

class EditProfile extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      first_name: props.user.firstName,
      last_name: props.user.lastName,
      display: "none"
    };
  }
  handleChange(field) {
    return (e) => {
      this.setState({[field]: e.target.value});
    };
  }
  submit(e) {
    e.preventDefault();
    this.setState({display: "none"});
    const user = {first_name: this.state.first_name, last_name: this.state.last_name};
    this.props.updateCurrentUserInfo(this.props.user.id, user)
    .then(() => this.setState({display: "block"}));
  }

  render(){
    const {firstName, lastName, img} = this.props.user;
    return(
      <div className='update-profile-wrapper'>
        <NavbarContainer singleBiz={true}/>
        <div className='alert' style={{display: this.state.display}}>
          <p>Great, your profile has been updated!</p>
        </div>
        <div className='update-profile-inner-wrapper'>
          <div className='left-column'>
            <h1>{`${firstName}'s Account Settings`}</h1>
            <ul className='nav-items'>
              <li className='active'>
                <Link to='/profileupdate'>
                  <span>Profile</span>
                </Link>
              </li>
              <li>
                <Link to='/changepassword'><span>Password</span></Link>
              </li>
            </ul>
          </div>
          <div className='right-column'>
            <h2>Profile</h2>
            <div className='pic-update'>
              <span>Your Profile Photo&nbsp;</span>
              <Link to='/profilephoto'>(Edit)</Link>
              <img src={img}/>
            </div>
            <label>First Name</label>
            <span className='reminder'>This field is required.</span>
            <input
              type='text'
              value={this.state.first_name}
              onChange={this.handleChange('first_name')}
              required/>
            <label>Last Name</label>
            <span className='reminder'>This field is required. Only your last initial will show on your profile.</span>
            <input type='text'
              value={this.state.last_name}
              onChange={this.handleChange('last_name')}
              required/>
            <button onClick={this.submit.bind(this)}>Save Changes</button>
            <Link to='/profile' className='cancel'>Cancel</Link>
          </div>
        </div>
      </div>
    );
  }
}

export default EditProfile;
