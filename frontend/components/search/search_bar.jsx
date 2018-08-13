import React from 'react';

class SearchBar extends React.Component {
  constructor(props) {
    super(props);
    this.handleUpdate = this.handleUpdate.bind(this);
  }

  handleUpdate(filed) {
    return (e) => this.props.updateSearch(filed, e.target.value);
  }

  render() {
    return(
      <div className='search-bar-wrapper'>
        <div className='search-bar'>
          <label className='search-find'>
            <span className='search-title'>Find</span>
            <span className='search-inp'>

              <input
                value={this.props.search_term}
                placeholder='burgers, barbers, spas, handymen...'
                onChange={this.handleUpdate('search_term')}
              />

            </span>

          </label>
          <label className='search-location'>
            <span className='search-title'>Near</span>
            <span className='search-inp'>

              <input
                value={this.props.location}
                placeholder='Chinatown SF, San Francisco,CA'
                onChange={this.handleUpdate('location')}
              />

            </span>
          </label>
          <button className='search-btn'><img className='search-icon' src={window.images.search} /></button>

        </div>
      </div>
    );
  }
}

export default SearchBar;
