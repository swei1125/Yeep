import React from 'react';
import { Link } from 'react-router-dom';

class ReviewForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.reviewState;
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount() {
    if (this.props.formType === 'edit') {
      this.props.fetchBiz(this.props.match.params.bizId)
      .then(() => {
        this.setState(this.props.reviewState);
        const stars = document.querySelector('div.stars');
        stars.style.backgroundPosition = this.state.starPos;
      });
    }
  }
  componentWillUnMount() {
    this.props.clearReviewErrors();
  }

  update() {
    return (e) => this.setState({body: e.target.value});
  }

  handleSubmit(e) {
    e.preventDefault();
    const review = {
      body: this.state.body,
      rating: +this.state.rating,
      id: +this.state.id
    };
    this.props.action(review, this.props.match.params.bizId)
    .then(() => {
      if (this.props.errors.length === 0){
        this.props.history.push(`/bizs/${this.props.match.params.bizId}`);
      }else {
        return;
      }
    });
  }

  updateMsg(tag, pos) {
    return (e) => {
      e.preventDefault();
      const label = document.querySelector(tag);
      const el = document.getElementById('rating-msg');
      el.innerText = label.innerText;
      const stars = document.querySelector('div.stars');
      stars.style.backgroundPosition = pos;
    };
  }

  removeMsg() {
    return (e) => {
      e.preventDefault();
      const el = document.getElementById('rating-msg');
      el.innerText = this.state.msg;
      const stars = document.querySelector('div.stars');
      stars.style.backgroundPosition = this.state.starPos;
    };
  }

  setRating(tag, pos) {
    return (e) => {
      e.preventDefault();
      const label = document.querySelector(tag);
      this.setState({rating: e.currentTarget.value});
      this.setState({msg: label.innerText});
      this.setState({starPos: pos});
    };
  }

  render() {
    console.log(this.state);
    if (!this.props.errors) return null;
    const header = this.props.formType === 'create' ? (
      <h1>Write a Review</h1>) : (<h1>Update Your Review</h1>);
    const btn = this.props.formType === 'create' ? ('Post Review') : ('Update Review');
    const { bizId, bizName } = this.props.match.params;
    const placeholder = "Your review helps others learn about great local businesses.\n\nPlease don't review this business if you received a freebie for writing this review, or if you're connected in any way to the owner or employees.";
    return (
      <div className='review-main-wrapper'>
        <div className='heading'>
          <div className='heading-wrapper'>
            <div className='logo'><Link to='/'><img src={window.images.logo}/></Link></div>
            <div className='header'>{header}</div>
          </div>
        </div>
        <div className='content-wrapper'>
          <div className='bizName'>
            <Link to={`/bizs/${bizId}`}>{bizName}</Link>
          </div>

          <div className='form-wrapper'>
            <div className='rating'>
              <div className='stars'>
                <li className='star'
                  onMouseEnter={this.updateMsg('label#rating-1', '0 -30px')}
                  onMouseLeave={this.removeMsg()}
                >
                  <input
                    onClick={this.setRating('label#rating-1', '0 -30px')}
                    id='rating-1' value='1' type='radio'/>
                  <label id='rating-1'>Eek! Methinks not.</label>
                </li>
                <li className='star'
                  onMouseEnter={this.updateMsg("label#rating-2", '0 -60px')}
                  onMouseLeave={this.removeMsg()}
                >
                  <input
                    id='rating-2' value='2' type='radio'
                    onClick={this.setRating("label#rating-2", '0 -60px')}/>
                  <label id='rating-2'>"Meh. I've experienced better."</label>
                </li>
                <li className='star'
                  onMouseEnter={this.updateMsg('label#rating-3', '0 -90px')}
                  onMouseLeave={this.removeMsg()}
                >
                  <input
                    id='rating-3' value='3' type='radio'
                    onClick={this.setRating("label#rating-3", '0 -90px')}/>
                  <label id='rating-3'>A-OK.</label>
                </li>
                <li className='star'
                  onMouseEnter={this.updateMsg("label#rating-4", '0 -120px')}
                  onMouseLeave={this.removeMsg()}
                >
                  <input
                    id='rating-4' value='4' type='radio'
                    onClick={this.setRating("label#rating-4", '0 -120px')}/>
                  <label id='rating-4'>Yay! I'm a fan.</label>
                </li>
                <li className='star'
                  onMouseEnter={this.updateMsg('label#rating-5', '0 -150px')}
                  onMouseLeave={this.removeMsg()}
                >
                  <input
                    id='rating-5' value='5' type='radio'
                    onClick={this.setRating("label#rating-5", '0 -150px')}/>
                  <label id='rating-5'>Woohoo! As good as it gets!</label>
                </li>
              </div>
              <span><p id='rating-msg'>{this.state.msg}</p></span>
            </div>
            <textarea
              className='body'
              value={this.state.body}
              placeholder={placeholder}
              maxLength='5000'
              onChange={this.update('body')}>
            </textarea>
            <div className='errors'>
              <span>{this.props.errors[0]}</span>
            </div>
          </div>
          <button onClick={this.handleSubmit}>{btn}</button>
        </div>
      </div>
    );
  }
}

export default ReviewForm;
