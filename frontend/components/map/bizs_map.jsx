import React from 'react';
import { withRouter } from 'react-router-dom';

class BizsMap extends React.Component {
  constructor(props) {
    super(props);
    this.state = { markers: [] };
  }

  createMarker(biz) {
    const pos = new google.maps.LatLng(biz.latitude, biz.longitude);
    const marker = new google.maps.Marker({
      position: pos,
      map: this.map,
      label: `${this.props.bizs.indexOf(biz) + 1}`
    });
  }

  // componentDidMount() {
  //   const location = this.props.match.params.location;
  //   const center = location === 'default' ? 'San Francisco' : location;
  //   let geocoder = new google.maps.Geocoder();
  //   const mapOptions = {
  //     center: { lat: 0, lng: 0 },
  //     zoom: 12
  //   };
  //   this.map = new google.maps.Map(this.mapNode, mapOptions);
  //   const that = this;
  //   geocoder.geocode({'address': center}, function(results, status) {
  //     if (status === 'OK') {
  //       that.map.setCenter(results[0].geometry.location);
  //       that.props.bizs.forEach(biz => that.createMarker(biz));
  //     } else {
  //       alert('Geocode was not successful for the following reason: ' + status);
  //     }
  //   });
  // }

  componentWillReceiveProps(newProps) {
    const urlDiff = this.props.match.url !== newProps.match.url;
    const bizsDiff = this.props.bizs.length !== newProps.bizs.length;
    console.log(newProps);
    if (urlDiff || bizsDiff) {
      const location = newProps.match.params.location;
      const center = location === 'default' ? 'San Francisco' : location;
      let geocoder = new google.maps.Geocoder();
      const mapOptions = {
        center: { lat: 0, lng: 0 },
        zoom: 12
      };
      this.map = new google.maps.Map(this.mapNode, mapOptions);
      const that = this;
      geocoder.geocode({'address': center}, function(results, status) {
        if (status === 'OK') {
          that.map.setCenter(results[0].geometry.location);
          newProps.bizs.forEach(biz => that.createMarker(biz));
        } else {
          alert('Geocode was not successful for the following reason: ' + status);
        }
      });
    }
  }
  render() {
    return(
      <div id='map-container' ref={ map => {this.mapNode = map;} }>
      </div>
    );
  }
}



export default withRouter(BizsMap);
