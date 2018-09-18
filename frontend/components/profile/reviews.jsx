import React from 'react';
import { Link } from 'react-router-dom';
import NavbarContainer from '../navbar/nav_bar_container';
import TopShelfContainer from './top_shelf_container';

class Reviews extends React.Component {

  componentDidMount() {
    this.props.fetchUserReviews(this.props.user.id);
  }

  translateDate(str) {
    let date = str.split("T")[0];
    date = date.split("-");
    date = [date[1]].concat([date[2]]).concat([date[0]]);
    if (date[0][0] === '0') date[0] = date[0][1];
    return date.join('/');
  }

  removeReview(id) {
    return ((e) => {
      this.props.deleteReview(id)
      .then(() => this.props.fetchUserReviews(this.props.user.id));
    });
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
    const { firstName, lastName, img } = this.props.user;
    return(
      <div className='profile-wrapper'>
        <NavbarContainer singleBiz={true}/>
        <TopShelfContainer />
        <div className='user-content-wrapper'>
          <div className='left-column'>
            <h1>{`${firstName}'s Profile`}</h1>
            <ul className='nav-items'>
              <li>
                <Link to='/profile'>
                  <i className="fas fa-user profile"></i>
                  <span>Profile Overview</span>
                </Link>
              </li>
              <li className='active'>
                <Link to='#'>
                  <div className='icon'>
                    <i className="material-icons">star</i>
                  </div>
                  <span>Reviews</span>
                </Link>
              </li>
            </ul>
          </div>
          <div className='reviews-column'>
            <h2>Reviews</h2>
            <ul className='review-list'>
              {this.props.reviews.length < 1 ? (
                <div className='write-review'>
                  <p className='note'>It’s your turn — review everything from your favorite ramen to your favorite bars. Write reviews to contribute to the Yeep community and help your friends find all the local gems that you love.</p>
                  <Link to='/reviewsearch/'>
                    <button className='review-btn'>
                      Write a Review
                    </button>
                  </Link>
                </div>
              ) : (
                this.props.reviews.map(review => {
                  const {bizName, bizId, address, city, state, zip, tags, rating, price, photo, body, createdAt, id} = review;
                  if(!tags) return null;
                  return(
                    <li key={id} className='review-box'>
                      <div className='review-topbar'>
                        <div className='biz-pic'>
                          <img src={photo}/>
                        </div>
                        <div className='biz-content'>
                          <h3><Link to={`/bizs/${bizId}`}>{bizName}</Link></h3>
                          <div className='price-tag'>
                            <span>{price}</span>
                            <span className='dot'>&nbsp; • &nbsp;</span>
                            <span>
                              {tags.map((tag, i) => (
                                <Link className='tag' to={`/search/${tag}&default`} key={i}>{tag}</Link>))}
                            </span>
                          </div>
                          <div className='address'>
                            <span>{address}</span>
                            <span>{`${city}, ${state} ${zip}`}</span>
                          </div>
                        </div>
                      </div>
                      <div className='review-rating'>
                        <div className='star' style={{backgroundPosition: starPos[rating]}}></div>
                        <div className='date'>{this.translateDate(createdAt)}</div>
                      </div>
                      <p>{body}</p>
                      <div className='buttons'>
                        <div className='btn-wrap'>
                          <Link to={`/editreview/${bizId}&${bizName}`} className='btn'>
                            <i className="fas fa-pencil-alt"></i>
                          </Link>
                        </div>
                        <div className='btn-wrap last'>
                          <button className='btn' onClick={this.removeReview.bind(this)(id)}>
                            <i className="fas fa-trash-alt"></i>
                          </button>
                        </div>
                      </div>
                    </li>
                  );
                })
              )}
            </ul>
          </div>
        </div>
      </div>
    );
  }
}

export default Reviews;
