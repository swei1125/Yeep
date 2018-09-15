import React from 'react';
import SessionBtnContainer from '../session/session_btn_container';
import HomeSearchBar from './home_search_bar';
import {Link} from 'react-router-dom';


class Home extends React.Component {
  componentDidMount() {
    window.scrollTo(0, 0);
    this.props.clearAll();
  }

  render() {
    return(
      <div className='home-root'>
        <div className='top'>
          <nav className='super-nav'>
            <div className='left-nav'>
              <Link to='/reviewsearch'><button className='write-review'>Write a Review</button></Link>
            </div>
            <SessionBtnContainer />
          </nav>

          <div className='home-logo'>
            <img className='logo' src={window.images.logo} />
          </div>

          <HomeSearchBar
            fetchBizs={this.props.fetchBizs}
            changeSearch={this.props.changeSearch}
            />

          <div className='bottom-wrapper'>
            <div className='tags'>
              <Link to='/search/Restaurants&default'>
                <span>
                  <i className="material-icons">restaurant</i>
                  <p>Restaurants</p>
                </span>
              </Link>
              <Link to="/search/Tea&default">
                <span>
                  <i className="fas fa-coffee"></i>
                  <p>Coffee & Tea</p>
                </span>
              </Link>
              <Link to='/search/Spas&default'>
                <span>
                  <i className="fas fa-spa"></i>
                  <p>Spas</p>
                </span>
              </Link>
            </div>
          </div>

        </div>

        <div className='categories-wrapper'>
          <div className='cate-box'>
            <h2>Find the Best Businesses in Town</h2>
            <div className='boxes-wrapper'>
              <div className='box-1'>
                <Link to='/search/Ramen&default'>
                  <div className='img-box'>
                    <img src={window.images.ramen}/>
                  </div>
                  <div className='category'><span>Ramen</span></div>
                </Link>
              </div>
              <div className='box-2'>
                <Link to='/search/Bubble%20Tea&default'>
                  <div className='img-box'>
                    <img src={window.images.boba}/>
                  </div>
                  <div className='category'><span>Bubble Tea</span></div>
                </Link>
              </div>
              <div className='box-3'>
                <Link to='/search/Nightlife&default'>
                  <div className='img-box'>
                    <img src={window.images.bar} />
                  </div>
                  <div className='category'><span>Nightlife</span></div>
                </Link>
              </div>
              <div className='box-4'>
                <Link to='/search/Bakeries&default'>
                  <div className='img-box'>
                    <img src={window.images.bakery}/>
                  </div>
                  <div className='category'><span>Bakeries</span></div>
                </Link>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default Home;
