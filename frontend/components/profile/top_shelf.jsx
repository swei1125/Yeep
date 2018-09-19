import React from 'react';
import {Link} from 'react-router-dom';


class TopShelf extends React.Component{

  render(){
    const { firstName, lastName, img, photos, reviews } = this.props.user;
    const reviewsWord = (reviews && Object.values(reviews).length > 1) ? 'Reviews' : 'Review';
    return(
      <div className='top-shelf-profile'>
        <div className='content-container'>
          <div className='pic-box'>
            <img src={img}/>
          </div>
          <div className='arrange'></div>
          <div className='user-content-box'>
            <h1>{`${firstName} ${lastName[0]}.`}</h1>
            <div className='review-photo'>
              <section className='review-count'>
                <div className='icon'>
                  <i className="material-icons">star</i>
                </div>
                <span className='count'>{reviews ? Object.values(reviews).length : 0}</span>
                <span>{reviewsWord}</span>
              </section>
              <section className='photo-count'>
                <i className="material-icons camera">camera_alt</i>
                <span className='count'>{photos ? Object.values(photos).length : 0}</span>
                <span>Photos</span>
              </section>
            </div>
          </div>
          <div className='profile-actions'>
            <ul className='actions-list'>
              <li>
                <Link to='/profilephoto'>
                  <i className="fas fa-camera-retro camera"></i>
                  <span>Update Ptofile Photo</span>
                </Link>
              </li>
              <li>
                <Link to='/profileupdate'>
                  <i className="fas fa-id-card"></i>
                  <span>Update Your Profile</span>
                </Link>
              </li>
              <li>
                <Link to='#'>
                  <i className="fas fa-users"></i>
                  <span>Find Friends</span>
                </Link>
              </li>
            </ul>
          </div>
        </div>
      </div>
    );
  }
}

export default TopShelf;
