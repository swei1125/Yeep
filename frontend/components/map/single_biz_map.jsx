import React from 'react';

class SingleBizMap extends React.Component {

  componentDidMount() {
    const mapOptions = {
      center: { lat: this.props.lat, lng: this.props.lng },
      zoom: 16
    };

    this.map = new google.maps.Map(this.mapNode, mapOptions);

    const pos = new google.maps.LatLng(this.props.lat, this.props.lng);
    const marker = new google.maps.Marker({
      position: pos,
      map: this.map
    });
  }

  render() {

    return(
      <div id='map-container' ref={ map => this.mapNode = map }>
      </div>
    );
  }
}

export default SingleBizMap;
