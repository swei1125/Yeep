import React from 'react';
import { Link } from 'react-router-dom';

class MapBox extends React.Component {

  render() {
    const { address, city, state, zip, phoneNumber } = this.props;
    return(
      <div className='map-box-wrapper'>
        <div className='outer-box'>
          <section className='map'></section>
          <section className='address'>
            <ul className='info'>
              <li>
                <span className='icon'>
                  <i className="material-icons">place</i>
                </span>
                <span className='add-info'>
                  {address}<br/>{city},&nbsp;{state}&nbsp;{zip}
                </span>
              </li>
              <li>
                <span className='icon'>
                  <i className="material-icons">directions</i>
                </span>
                <a>Get Directions</a>
              </li>
              <li>
                <span className='icon'>
                  <i className="material-icons">phone</i>
                </span>
                <span>{phoneNumber}</span>
              </li>
              <li>
                <span className='icon'>
                  <i className="material-icons">phone_iphone</i>
                </span>
                <a>Send to your Phone</a>
              </li>
              <li>
                <span className='icon'>
                  <i className="material-icons">home</i>
                </span>
                <Link to='/'>Yeep home</Link>
              </li>
            </ul>
          </section>
        </div>
      </div>
    );
  }
}

export default MapBox;
