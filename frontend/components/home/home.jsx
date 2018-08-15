import React from 'react';
import SessionBtnContainer from '../session/session_btn_container';
import HomeSearchBar from './home_search_bar';
import {Link} from 'react-router-dom';


class Home extends React.Component {


  render() {
    return(
      <div className='home-root'>
        <div className='top'>
          <nav className='super-nav'>
            <div className='left-nav'>
              <button className='write-review'>Write a Review</button>
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
              <Link to='/search/Nightlife&default'>
                <span>
                  <i className="material-icons">local_bar</i>
                  <p>Nightlife</p>
                </span>
              </Link>
              <Link to='/search/Home%20Service&default'>
                <span>
                  <i className="material-icons">build</i>
                  <p>Home Services</p>
                </span>
              </Link>
            </div>
          </div>

        </div>
      </div>
    );
  }
}

export default Home;
