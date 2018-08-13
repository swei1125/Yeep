import React from 'react';
import NavBarContainer from '../navbar/nav_bar_container';
import { Link } from 'react-router-dom';

class UploadPhoto extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      file: null,
      url: null
    };
  }

  componentDidMount() {
    this.props.fetchBiz(this.props.match.params.bizId);
  }

  handleFile(e) {
    const file = e.currentTarget.files[0];
    const fileReader = new FileReader();
    fileReader.onloadend = () => {
      this.setState({file: file, url: fileReader.result});
    };
    if (file) {
      fileReader.readAsDataURL(file);
    }
  }

  upload(e) {
    e.preventDefault();
    const formData = new FormData();
    console.log(this);
    formData.append('upload[biz_id]', this.props.match.params.bizId);
    formData.append('upload[photo]', this.state.file);
    $.ajax({
      url: 'api/uploads',
      method: 'post',
      data: formData,
      contentType: false,
      processData: false
    }).then(
      window.setTimeout(() => {
        this.props.history.push(`/bizs/${this.props.match.params.bizId}`);
      }, 3000)
    );
  }

  render() {
    const preview = this.state.url ? <img src={this.state.url}/> : null;
    return(
      <div className='upload-wrapper'>
        <NavBarContainer />
        <div className='heading'>
          <h2>
            <Link to={`/bizs/${this.props.match.params.bizId}`}>
              {this.props.name}:
            </Link>
            <span>
              {` Add Photos`}
            </span>
          </h2>
        </div>
        <div className='upload-form'>
          <form onSubmit={this.upload.bind(this)}>
            <input type='file' onChange={this.handleFile.bind(this)}/>
            <div className='preview'>
              {preview}
            </div>
            <button type='submit'>Add Photo</button>
          </form>
        </div>
      </div>
    );
  }
}

export default UploadPhoto;
