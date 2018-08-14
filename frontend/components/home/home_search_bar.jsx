import React from 'react';
import { Route, Redirect, withRouter } from 'react-router-dom';

class HomeSearchBar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {search_term: "default", location: "default", price: "default"};
    console.log(this.state);
    this.handleSubmit = this.handleSubmit.bind(this);
  }


  handleSubmit(e) {
    e.preventDefault();
    this.props.fetchBizs(this.state)
    .then(() => {

      this.props.history.push(
        `/search/${this.state.search_term}&${this.state.location}&${this.state.price}`
      );
    });

  }

  handleUpdate(filed) {
    return (e) => {
      this.setState({[filed]: e.target.value});
    };
  }

  render() {
    return(
      <div className='search-bar-wrapper'>
        <div className='search-bar'>
          <label className='search-find'>
            <span className='search-title'>Find</span>
            <span className='search-inp'>

              <input

                placeholder='burgers, barbers, spas, handymen...'
                onChange={this.handleUpdate('search_term')}
              />

            </span>

          </label>
          <label className='search-location'>
            <span className='search-title'>Near</span>
            <span className='search-inp'>

              <input

                placeholder='Chinatown SF, San Francisco,CA'
                onChange={this.handleUpdate('location')}
              />

            </span>
          </label>
          <button className='search-btn' onClick={this.handleSubmit}>
            <img className='search-icon' src={window.images.search} />
          </button>

        </div>
      </div>
    );
  }
}

export default withRouter(HomeSearchBar);
