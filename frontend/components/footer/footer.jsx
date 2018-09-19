import React from 'react';

class Footer extends React.Component {

  render() {
    return (
      <div className='footer-main'>
        <div className='footer-content'>
          <div className='links-wrapper'>
            <div className='about'>
              <h3>About</h3>
              <ul className='link-list'>
                <li><a href='https://github.com/swei1125/Yeep'>About Yeep</a></li>
                <li><a href='http://shiyuwei-94.com/'>About Developer</a></li>
              </ul>
            </div>
            <div className='dicover'>
              <h3>Dicover More Projects</h3>
              <ul className='link-list'>
                <li><a href='https://swei1125.github.io/Bounce/'>Bounce</a></li>
                <li><a href='https://let-us-eat.herokuapp.com/#/'>Let's Eat</a></li>
              </ul>
            </div>
            <div className='contact'>
              <h3>Contact</h3>
              <ul className='link-list'>
                <li>Phone: (626) 371-5714</li>
                <li>Email: shiyuwei941125@gmail.com</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    );
  }
}
// <a href='https://github.com/swei1125/Yeep'>
//   <i className="fab fa-github"></i>Github
//   </a>
//   <a href='https://www.linkedin.com/feed/'>
//     <i className="fab fa-linkedin-in"></i>LinkedIn
//     </a>

export default Footer;
