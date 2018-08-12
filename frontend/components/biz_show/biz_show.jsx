import React from 'react';
import ReviewDetail from './review_detail';
import { Link } from 'react-router-dom';
import NavBarContainer from '../navbar/nav_bar_container';

class BizShow extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      imgStart: 0,
      imgEnd: 3
    };
    this.nextImg = this.nextImg.bind(this);
    this.prevImg = this.prevImg.bind(this);
    this.removeCenter = this.removeCenter.bind(this);
    this .addCenter = this.addCenter.bind(this);
  }
  componentDidMount() {
    this.props.fetchBiz(this.props.match.params.bizId);
  }

  nextImg() {
    if (this.state.imgEnd === this.props.photos.length) return;
    this.setState({
      imgStart: this.state.imgStart + 1,
      imgEnd: this.state.imgEnd + 1
    });
  }

  prevImg() {
    if (this.state.imgStart === 0) return;
    this.setState({
      imgStart: this.state.imgStart - 1,
      imgEnd: this.state.imgEnd - 1
    });
  }

  removeCenter(e) {
    // console.log(e.currentTarget);
    const center = document.getElementsByClassName('center')[0];
    center.classList.remove('center');
  }

  addCenter() {
    const center = document.getElementsByClassName('img')[1];
    center.classList.add('center');
  }

  render() {
    if (!this.props.biz.tagNames) {
      return null;
    }
    const {
      name,
      address,
      city,
      state,
      zip,
      price,
      phoneNumber,
      tagNames,
      rating,
      reviewCount
    } = this.props.biz;
    // const tags = Array.from(this.props.biz.tagNames);
    const starPos = {
      0: "0 0px",
      1: "0 -24px",
      1.5: "0 -48px",
      2: "0 -72px",
      2.5: "0 -96px",
      3: "0 -120px",
      3.5: "0 -144px",
      4: "0 -168px",
      4.5: "0 -192px",
      5: "0 -216px"
    };
    const starPx = starPos[rating];
    console.log(this.state);
    return(
      <div className='bizshow-main'>
        <NavBarContainer />

        <div className='biz-wrapper'>
          <div className='bizshow'>
            <div className='biz-info'>
              <div className='info-left'>
                <h1>{name}</h1>
                <section className='review'>
                  <div className='star' style={{backgroundPosition: starPx}}></div>
                  <span className='review-count'>{reviewCount} reviews</span>
                </section>
                <section className='price-tag'>
                  <span>{price}</span>
                  &nbsp;·&nbsp;
                  <span>{tagNames.map((tag, i) => <a key={i}>{tag}</a>)}</span>
                </section>
              </div>
              <div className='info-right'>
                <button className='review-btn'>
                  <span>
                    <i className="material-icons star">star</i>
                    Write a Review
                  </span>
                </button>
                <button className='photo-btn'>
                  <span>
                    <i className="material-icons camera">camera_enhance</i>
                    Add Photo
                  </span>
                </button>
              </div>
            </div>

            <div className='map-pic'>
              <div className='map-box-wrapper'>
                <div className='outer-box'>
                  <section className='map'></section>
                  <section className='address'>
                    <ul className='info'>
                      <li>
                        <span className='icon'><i className="material-icons">place</i></span>
                        <span className='add-info'>{address}<br/>{city},&nbsp;{state}&nbsp;{zip}</span>
                      </li>
                      <li>
                        <span className='icon'><i className="material-icons">directions</i></span>
                        <a>Get Directions</a>
                      </li>
                      <li>
                        <span className='icon'><i className="material-icons">phone</i></span>
                        <span>{phoneNumber}</span>
                      </li>
                      <li>
                        <span className='icon'><i className="material-icons">phone_iphone</i></span>
                        <a>Send to your Phone</a>
                      </li>
                      <li>
                        <span className='icon'><i className="material-icons">home</i></span>
                        <Link to='/'>Yeep home</Link>
                      </li>
                    </ul>
                  </section>
                </div>
              </div>
              <div className='pic-wrapper'>
                <div className='pic-box'>
                  {

                    this.props.photos.slice(this.state.imgStart, this.state.imgEnd).map((p, i) => {
                      if (p) {

                        if (i === 1) {
                          return (
                            <div key={i} className='img center'>
                              <img src={p.url}/>
                            </div>
                          );
                        }
                        return (
                          <div key={i}
                            className='img'
                            onMouseOver={this.removeCenter}
                            onMouseOut={this.addCenter}>
                            <img src={p.url}/>
                          </div>
                        );
                      }
                    })
                  }
                </div>
                <button onClick={this.prevImg}>prev</button>
                <button onClick={this.nextImg}>Next</button>
              </div>
            </div>
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
