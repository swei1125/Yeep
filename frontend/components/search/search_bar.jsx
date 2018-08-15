import React from 'react';
import { Route, Redirect } from 'react-router-dom';
import BizsIndex from './biz_index';

class SearchBar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      search_term: this.props.match.params.search_term,
      location: this.props.match.params.location,
      price: this.props.match.params.price
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount() {
    if (!this.props.singleBiz) {
      const data = {
        search_term: this.props.match.params.search_term,
        location: this.props.match.params.location,
        price: this.props.match.params.price
      };
      this.props.fetchBizs(data);
    }else{
      this.setState({
        search_term: 'default',
        location: 'default',
        price: 'default'
      });
    }
  }
  componentWillReceiveProps(newProps) {
    console.log(newProps);
    const term = this.state.search_term;
    const loca = this.state.location;
    const price = this.state.price;
    if (newProps.match.url !== this.props.match.url) {
      if (!newProps.singleBiz) {
        const data = {
          search_term: newProps.match.params.search_term,
          location: newProps.match.params.location,
          price: newProps.match.params.price
        };
        newProps.fetchBizs(data);
        this.setState(data);
      }
      else{
        this.setState({
          search_term: term,
          location: loca,
          price: price
        });
      }
    }
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
                value={this.state.search_term === 'default' ? "" : this.state.search_term}
                placeholder='burgers, barbers, spas, handymen...'
                onChange={this.handleUpdate('search_term')}
              />

            </span>

          </label>
          <label className='search-location'>
            <span className='search-title'>Near</span>
            <span className='search-inp'>

              <input
                value={this.state.location === 'default' ? "" : this.state.location}
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

export default SearchBar;
