import React from 'react';
import { Link } from 'react-router-dom';
import NavBarContainer from '../navbar/nav_bar_container';
import BizsMapContainer from '../map/bizs_map_container';

class BizsIndex extends React.Component {

  render() {
    const heading = this.props.bizs.length ? (
      <h1>
        {this.props.match.params.search_term === 'default' ? (
          `Best Places in Yeep`
        ) : (`Best ${this.props.match.params.search_term}`)}
        &nbsp;
        <span>
          {this.props.match.params.location === 'default' ? (
            "in Yeep"
          ) : (
            `near ${this.props.match.params.location}`
          )}
        </span>
      </h1>
    ) : (
      <h1>{`No Result for ${this.props.match.params.search_term}`}</h1>
    );

    return(
      <div className='bizs-wrapper'>
        <NavBarContainer singleBiz={this.props.singleBiz}/>
        <div className='top-shelf'>
          <div className='top-content'>

            {heading}
          </div>
        </div>

        <div className='main-content'>
          <div className='bizs-column'>
            <ul className='bizs-list'>
              {this.props.bizs.map((biz, idx) => {
                if (!biz.tagNames) return null;
                const {
                  id,
                  address,
                  city,
                  name,
                  phoneNumber,
                  photo,
                  rating,
                  price,
                  reviewCount,
                  state,
                  tagNames,
                  topReview,
                  zip} = biz;
                const starPos = {
                  0: "0 -240px",
                  1: "0 -258px",
                  1.5: "0 -276px",
                  2: "0 -294px",
                  2.5: "0 -312px",
                  3: "0 -330px",
                  3.5: "0 -348px",
                  4: "0 -366px",
                  4.5: "0 -384px",
                  5: "0 -402px"
                };
                return (
                <li key={idx}>
                  <div className='biz-wrapper'>
                    <div className='pic-wrapper'>
                      <img src={biz.photo}/>
                    </div>
                    <div className='info-wrapper'>
                      <div className='info-top'>
                        <div className='info-left'>
                          <h1>
                            <span>{idx+1}.</span>
                            &nbsp;
                            <Link to={`/bizs/${biz.id}`}>{name}</Link>
                          </h1>
                          <section className='review'>
                            <div className='star' style={{backgroundPosition: starPos[rating]}}></div>
                            <span className='review-count'>{reviewCount} reviews</span>
                          </section>
                          <section className='price-tag'>
                            <span className='price-span'>{price}</span>

                            <span>
                              {tagNames.map((tag, i) => (
                                <Link to={`/search/${tag}&default`} key={i}>{tag}</Link>
                              ))}
                            </span>
                          </section>
                        </div>
                        <div className='info-right'>
                          <span>{phoneNumber}</span>
                          <span>{address}</span>
                          <span>{city},&nbsp;{state}</span>
                        </div>
                      </div>
                      <div className='info-btm'>
                        <p>
                          {'"' + topReview.slice(0, 150) + '..."'}
                          &nbsp;
                          <Link to={`/bizs/${biz.id}`}>read more</Link>
                        </p>

                      </div>
                    </div>
                  </div>
                </li>
              );})}
            </ul>
          </div>
          <div className='map-column'>
            <div className='map-box'>
              <BizsMapContainer />
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default BizsIndex;
