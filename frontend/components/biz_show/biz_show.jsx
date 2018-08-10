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
      <div>
        <div className='biz-header'>
          <h1>{name}</h1>
          <span>{price}</span>
          &nbsp;
          .
          &nbsp;
          <span>{tags.join(', ')}</span>
        </div>

        <div className='image'>
          {this.props.photos.map(p => <img src={p.url}/>)}
        </div>

        <div>
          {this.props.reviews.map(review => (
            <ReviewDetail
              review={review}
              user={users[review.userId]}/>
          ))}
        </div>
      </div>
    );
  }
}

export default BizShow;
