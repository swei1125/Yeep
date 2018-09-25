import React from 'react';
import { Link } from 'react-router-dom';
import SingleBizMap from '../map/single_biz_map';

class MapBox extends React.Component {

  render() {
    const { address, city, state, zip, phoneNumber, lat, lng } = this.props;
    return(
      <div className='map-box-wrapper'>
        <div className='outer-box'>
          <section className='map'>
            <SingleBizMap lat={lat} lng={lng}/>
          </section>
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
                <a style={{cursor: "no-drop"}}>Get Directions</a>
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
                <a style={{cursor: "no-drop"}}>Send to your Phone</a>
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
