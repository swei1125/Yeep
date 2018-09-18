import React from 'react';
import {Link} from 'react-router-dom';
import NavbarContainer from '../navbar/nav_bar_container';
import TopShelfContainer from './top_shelf_container';

class Profile extends React.Component{

  translateDate(str) {
    let date = str.split("T")[0];
    date = date.split("-");
    date = [date[1]].concat([date[2]]).concat([date[0]]);
    if (date[0][0] === '0') date[0] = date[0][1];
    return date.join('/');
  }

  render(){
    console.log(this.props.activities);
    const { firstName, lastName, img, photos, reviews } = this.props.user;
    return(
      <div className='profile-wrapper'>
        <NavbarContainer />
        <TopShelfContainer />
        <div className='user-content-wrapper'>
          <div className='left-column'>
            <h1>{`${firstName}'s Profile`}</h1>
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
          </div>
          <div className='right-column'>
            <div className='activity-wrapper'>
              <h2>Recent Activity</h2>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default Profile;
