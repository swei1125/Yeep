import React from 'react';
import ReviewDetail from './review_detail';

class BizShow extends React.Component {

  componentDidMount() {
    this.props.fetchBiz(this.props.match.params.bizId);
  }

  render() {
    const { name, address, city, tags, price, phoneNumber } = this.props.biz;
    const { reviews, users } = this.props;
    return(
      <div className='bizshow-main'>
        <div className='header'>Nav Bar</div>
        <div className='biz-wrapper'>
          <div className='bizshow'>
            <div className='biz-info'>BizInfo</div>
            <div className='map-pic'>Map&Pic</div>
          </div>
          <div className='bizshow-bottom'>
            <div className='biz-review'>Reviews</div>
            <div className='more-info'>MoreInfo</div>
          </div>
        </div>
      </div>
    );
  }
}

export default BizShow;
