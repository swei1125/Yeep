import React from 'react';
import NavBarContainer from '../navbar/nav_bar_container';

class BizsIndex extends React.Component {

  // componentWillUnmount() {
  //   this.props.clearSearch();
  // }

  render() {
    const location = this.props.search.location ? this.props.search.location : 'San Francisco';
    const heading = this.props.bizs.length ? (
      <h1>
        {`Best ${this.props.search.search_term}`}&nbsp;
        <span>near&nbsp;{location}</span>
      </h1>
    ) : (
      <h1>{`No Result for ${this.props.search.search_term}`}</h1>
    );
    return(
      <div className='bizs-wrapper'>
        <NavBarContainer />
        <div className='top-shelf'>
          <div className='top-content'>

            {heading}
          </div>
          <div className='price-btns'>

          </div>
        </div>

        <h3>BizsIndex</h3>
      </div>
    );
  }
}

export default BizsIndex;
