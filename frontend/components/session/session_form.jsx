import React from 'react';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = props.user;
    this.handleSubmit = this.handleSubmit.bind(this);
    this.update = this.update.bind(this);
    this.setState = this.setState.bind(this);
  }

  update(type) {

    return (e) => this.setState({[type]: e.target.value});
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.action(this.state);
  }

  componentWillUnmount() {
    this.props.clearSessionErrors();
  }

  render() {
    const {props, update, handleSubmit} = this;
    let display;
    if(this.props.formType === 'Sign Up') {
      return(
        <div className='session'>
          <h2>{props.formType}</h2>
          <form className="session-form" onSubmit={handleSubmit}>
            <input className="f-name-inp"
              value={props.first_name}
              onChange={update("first_name")}
              placeholder='First Name'
              type='text'
              required/>
            <input className="l-name-inp"
                value={props.last_name}
                onChange={update("last_name")}
                placeholder='Last Name'
                type='text'
                required/>
            <input className="email-inp"
              value={props.email}
              onChange={update("email")}
              placeholder='Email'
              type='text'
              required/>
            <input className="password-inp"
              value={props.password}
              onChange={update("password")}
              placeholder='Password'
              type='password'
              required/>
            <button type='submit'>{props.formType}</button>
            {props.errors.map((err, i) => <li key={i}>{err}</li>)}
          </form>
        </div>
      );
    }else {
      return(
        <div className='session'>
          <h2>{props.formType}</h2>
          <form className="session-form" onSubmit={handleSubmit}>
            <input className="email-inp"
              value={props.email}
              onChange={update("email")}
              placeholder='Email'
              type='text'
              required/>
            <input className="password-inp"
              value={props.password}
              onChange={update("password")}
              placeholder='Password'
              type='password'
              required/>
            <button type='submit'>{props.formType}</button>
            {props.errors.map((err, i) => <li key={i}>{err}</li>)}
          </form>
        </div>
      );
    }
  }
}
export default SessionForm;
