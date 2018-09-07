import React from 'react';
import { Route, Redirect } from 'react-router-dom';


class ReviewSearchBar extends React.Component {
  constructor(props) {
    super(props);
    const params = this.props.match.params;
    this.state = {
      search_term: params.search_term ? params.search_term : 'default',
      location: params.location ? params.location : 'default'
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount() {
    if (!this.props.singleBiz) {
      this.props.fetchBizs(this.state);
    }else{
      this.setState({
        search_term: 'default',
        location: 'default',
        price: 'default'
      });
    }
  }
  componentWillReceiveProps(newProps) {
    if (newProps.match.url !== this.props.match.url) {
      if (!newProps.singleBiz) {
        const data = {
          search_term: newProps.match.params.search_term,
          location: newProps.match.params.location
        };
        newProps.fetchBizs(data);
        this.setState(data);
      }
    }
  }

  handleSubmit(e) {
    e.preventDefault();

    this.props.fetchBizs(this.state)
    .then(() => {
      this.props.history.push(
        `/reviewsearch/${this.state.search_term}&${this.state.location}`
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
        <form onSubmit={this.handleSubmit} className='search-bar'>
          <label className='search-find'>
            <span className='search-title'>Find</span>
            <span className='search-inp'>

              <input
                value={this.state.search_term === 'default' ? "" : this.state.search_term}
                onChange={this.handleUpdate('search_term')}
              />

            </span>

          </label>
          <label className='search-location'>
            <span className='search-title'>Near</span>
            <span className='search-inp'>

              <input
                value={this.state.location === 'default' ? "" : this.state.location}
                onChange={this.handleUpdate('location')}
              />

            </span>
          </label>
          <button className='search-btn' type='submit'>
            <img className='search-icon' src={window.images.search} />
          </button>

        </form>
      </div>
    );
  }
}

export default ReviewSearchBar;
