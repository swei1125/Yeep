import React from 'react';

class SideBar extends React.Component {

  parseHours() {
    let newHours = [];
    this.props.moreInfo.hours.forEach(hrArr => {
      let newRange = [];
      hrArr.forEach(time => {
        time = time.split(":");
        if (+time[0] > 12 ) {
          newRange.push(`${+time[0] - 12}:${time[1]} pm`);
        } else if(+time[0] === 12) {
          newRange.push(`${+time[0]}:${time[1]} pm`);
        } else {
          newRange.push(`${time.join(":")} am`);
        }
      });
      newHours.push(newRange);
    });

    return newHours;
  }

  today() {
    const date = new Date();
    const hours = this.parseHours();
    const today = hours[date.getDay()];
    return `${today[0]} - ${today[1]}`;
  }

  remainder() {
    switch (this.props.price.length) {
      case 1:
        return "$$$";
      case 2:
        return "$$";
      case 3:
        return "$";
      case 4:
        return "";
    }
  }

  render() {
    const {
      applePay,
      creditCard,
      googlePay,
      parking,
      bikeParking,
      takeOut,
      delivery,
      outdoorSeat,
      wifi,
      hasTv,
      dogAllowed,
      reservation,
      goodFor,
      waiterService,
      caters,
      forGroup,
      forKids,
      attier,
    } = this.props.moreInfo;
    const hours = this.parseHours();
    const today = this.today();
    const priceRemainder = this.remainder();
    const infoReservation = reservation ? (
      <dl>
        <dt>Takes Reservations</dt>
        <dd>{reservation}</dd>
      </dl>
    ) : "";
    const infoDelivery = delivery ? (
      <dl>
        <dt>Delivery</dt>
        <dd>{delivery}</dd>
      </dl>
    ) : "";
    const infoTakeout = takeOut ? (
      <dl>
        <dt>Take-out</dt>
        <dd>{takeOut}</dd>
      </dl>
    ) : "";
    const infoCreditCard = creditCard ? (
      <dl>
        <dt>Accepts Credit Cards</dt>
        <dd>{creditCard}</dd>
      </dl>
    ) : "";
    const infoApplePay = applePay ? (
      <dl>
        <dt>Accepts Apple Pay</dt>
        <dd>{applePay}</dd>
      </dl>
    ) : "";
    const infoGooglePay = googlePay ? (
      <dl>
        <dt>Accepts Google Pay</dt>
        <dd>{googlePay}</dd>
      </dl>
    ) : "";
    const infoGoodfor = goodFor ? (
      <dl>
        <dt>Good For</dt>
        <dd>{goodFor}</dd>
      </dl>
    ) : "";
    const infoParking = parking ? (
      <dl>
        <dt>Parking</dt>
        <dd>{parking}</dd>
      </dl>
    ) : "";
    const infoBikeParking = bikeParking ? (
      <dl>
        <dt>Bike Parking</dt>
        <dd>{bikeParking}</dd>
      </dl>
    ) : "";
    const infoForKids = forKids ? (
      <dl>
        <dt>Good for Kids</dt>
        <dd>{forKids}</dd>
      </dl>
    ) : "";
    const infoForGroup = forGroup ? (
      <dl>
        <dt>Good for Groups</dt>
        <dd>{forGroup}</dd>
      </dl>
    ) : "";
    const infoAttier = attier ? (
      <dl>
        <dt>Attier</dt>
        <dd>{attier}</dd>
      </dl>
    ) : "";
    const infoOutdoorSeat = outdoorSeat ? (
      <dl>
        <dt>Outdoor Seating</dt>
        <dd>{outdoorSeat}</dd>
      </dl>
    ) : "";
    const infoDogAllowed = dogAllowed ? (
      <dl>
        <dt>Dog Allowed</dt>
        <dd>{dogAllowed}</dd>
      </dl>
    ) : "";
    const infoWifi = wifi ? (
      <dl>
        <dt>Wi-Fi</dt>
        <dd>{wifi}</dd>
      </dl>
    ) : "";
    const infoHasTV = hasTv ? (
      <dl>
        <dt>Has TV</dt>
        <dd>{hasTv}</dd>
      </dl>
    ) : "";
    const infoWaiterService = waiterService ? (
      <dl>
        <dt>Waiter Service</dt>
        <dd>{waiterService}</dd>
      </dl>
    ) : "";
    const infoCaters = caters ? (
      <dl>
        <dt>Caters</dt>
        <dd>{caters}</dd>
      </dl>
    ) : "";
    return(
      <div className='side-bar'>
        <div className='little-summary'>
          <ul>
            <li>
              <div className='icon today'>
                <div className='icon-wrapper'>
                  <i className="material-icons">schedule</i>
                </div>
              </div>
              <div className='content-wrapper'>
                <div className='content'>
                  <span className='key'>Today</span>
                  <span className='value'>{today}</span>
                </div>
              </div>
            </li>
            <li>
              <div className='icon price'>
                <div className='icon-wrapper'>
                  <span className='price'>{this.props.price}</span>
                  <span className='remainder'>{priceRemainder}</span>
                </div>
              </div>
              <div className='content-wrapper'>
                <div className='content'>
                  <span className='key'>Price range</span>
                  <span className='value'>{this.props.priceRange}</span>
                </div>
              </div>
            </li>
          </ul>
        </div>
        <div className='hours-info'>
          <h3>Hours</h3>
          <table className='hour-table'>
            <tbody>
              <tr>
                <th>Mon</th>
                <td>
                  <span>{hours[1][0]}</span>&nbsp;-&nbsp;<span>{hours[1][1]}</span>
                </td>
                <td className='extra'></td>
              </tr>
              <tr>
                <th>Tue</th>
                <td>
                  <span>{hours[2][0]}</span>&nbsp;-&nbsp;<span>{hours[2][1]}</span>
                </td>
                <td className='extra'></td>
              </tr>
              <tr>
                <th>Wed</th>
                <td>
                  <span>{hours[3][0]}</span>&nbsp;-&nbsp;<span>{hours[3][1]}</span>
                </td>
                <td className='extra'></td>
              </tr>
              <tr>
                <th>Thu</th>
                <td>
                  <span>{hours[4][0]}</span>&nbsp;-&nbsp;<span>{hours[4][1]}</span>
                </td>
                <td className='extra'></td>
              </tr>
              <tr>
                <th>Fri</th>
                <td>
                  <span>{hours[5][0]}</span>&nbsp;-&nbsp;<span>{hours[5][1]}</span>
                </td>
                <td className='extra'></td>
              </tr>
              <tr>
                <th>Sat</th>
                <td>
                  <span>{hours[6][0]}</span>&nbsp;-&nbsp;<span>{hours[6][1]}</span>
                </td>
                <td className='extra'></td>
              </tr>
              <tr>
                <th>Sun</th>
                <td>
                  <span>{hours[0][0]}</span>&nbsp;-&nbsp;<span>{hours[0][1]}</span>
                </td>
                <td className='extra'></td>
              </tr>
            </tbody>
          </table>
        </div>
        <div className='more-info'>
          <h3>More business info</h3>
          <ul className='info-list'>
            {infoReservation}
            {infoDelivery}
            {infoTakeout}
            {infoCreditCard}
            {infoApplePay}
            {infoGooglePay}
            {infoGoodfor}
            {infoParking}
            {infoBikeParking}
            {infoForKids}
            {infoForGroup}
            {infoAttier}
            {infoOutdoorSeat}
            {infoDogAllowed}
            {infoWifi}
            {infoHasTV}
            {infoWaiterService}
            {infoCaters}
          </ul>
        </div>
      </div>
    );
  }
}

export default SideBar;
