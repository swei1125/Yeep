import React from 'react';

class SearchBar extends React.Component {

  render() {
    return(
      <div className='search-bar-wrapper'>
        <div className='search-bar'>
          <label className='search-find'>
            <span className='search-title'>Find</span>
            <span className='search-inp'>
              <input placeholder='burgers, barbers, spas, handymen...'/>
            </span>
          
          </label>
          <label className='search-location'>
            <span className='search-title'>Near</span>
            <span className='search-inp'>
              <input placeholder='Chinatown SF, San Francisco,CA'/>
            </span>
          </label>
          <button className='search-btn'><img className='search-icon' src={window.images.search} /></button>

        </div>
      </div>
    );
  }
}

export default SearchBar;
