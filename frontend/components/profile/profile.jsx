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
  componentDidMount(){
    window.scrollTo(0, 0);
  }

  render(){
    const starPos = {
      0: "0 -240px",
      1: "0 -258px",
      1.5: "0 -276px",
      2: "0 -294px",
      2.5: "0 -312px",
      3: "0 -330px",
      3.5: "0 -348px",
      4: "0 -366px",
      4.5: "0 -384px",
      5: "0 -402px"
    };
    const { firstName, lastName, img, photos, reviews, id } = this.props.user;
    return(
      <div className='profile-wrapper'>
        <NavbarContainer singleBiz={true}/>
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
                <Link to={`/reviews/${id}`}>
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
              <ul>
                {this.props.activities.length < 1 ? (
                  <h3 className='note'>You don't have any recent activities.</h3>
                ) : (
                  this.props.activities.map((act, i) => {
                  if (act.body) {
                    return (
                      <li className='act-block' key={i}>
                        <div className='pic-box'>
                          <img src={img}/>
                        </div>
                        <div className='action-wrapper'>
                          <div className='action'>
                            <span className='act'>You wrote a review for <Link to={`/bizs/${act.bizId}`}>{act.biz}</Link></span>
                            <span className='date'>{this.translateDate(act.date)}</span>
                          </div>
                          <div className='action-detail'>
                            <div className='star' style={{backgroundPosition: starPos[act.rating]}}></div>
                            <p>{act.body}</p>
                          </div>
                        </div>
                      </li>
                    );
                  }else{
                    return(
                      <li className='act-block' key={i}>
                        <div className='pic-box'>
                          <img src={img}/>
                        </div>
                        <div className='action-wrapper'>
                          <div className='action'>
                            <span className='act'>You added a photo for <Link to={`/bizs/${act.bizId}`}>{act.biz}</Link></span>
                            <span className='date'>{this.translateDate(act.date)}</span>
                          </div>
                          <div className='action-detail'>
                            <img src={act.url}/>
                          </div>
                        </div>
                      </li>
                    );
                  }
                })
                )}
              </ul>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default Profile;
