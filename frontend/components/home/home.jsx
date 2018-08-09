import React from 'react';
import SessionBtnContainer from '../session/session_btn_container';
import SearchBar from '../search/search_bar';


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

          <SearchBar />


        </div>
      </div>
    );
  }
}

export default Home;
