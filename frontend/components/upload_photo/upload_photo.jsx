import React from 'react';
import NavBarContainer from '../navbar/nav_bar_container';
import { Link } from 'react-router-dom';
import { css } from 'react-emotion';
import { BeatLoader } from 'react-spinners';
import Dropzone from 'react-dropzone';

class UploadPhoto extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      file: null,
      url: null,
      loading: false,
      error: []
    };
  }

  handleFile(files) {
    this.setState({error: []});
    const file = files[0];
    const fileReader = new FileReader();
    fileReader.onloadend = () => {
      this.setState({file: file, url: fileReader.result});
    };
    if (file) {
      fileReader.readAsDataURL(file);
    }
  }

  upload(e) {
    if (this.state.file) {
      this.setState({loading: true});
      const formData = new FormData();
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
          this.props.updateCurrentUser(this.props.currentUserId);
          this.props.history.push(`/bizs/${this.props.match.params.bizId}`);
        }, 6000)
      );
    }else {
      this.setState({error: ['Please choose a file.']});
    }
  }

  render() {
    const override = css`
    display: block;
    border-color: red;
    position: absolute;
    top: 50%;
    left: 45%;
    z-index: 99;
    `;
    const preview = this.state.url ? <img src={this.state.url}/> : null;
    return(
      <div className='upload-wrapper'>
        <NavBarContainer />
        <BeatLoader
          className={override}
          sizeUnit={"px"}
          size={34}
          color={'#d32323'}
          loading={this.state.loading}
        />
        <div className='heading' style={{ opacity: this.state.loading ? "0.15" : "1" }}>
          <h2>
            <Link to={`/bizs/${this.props.match.params.bizId}`}>
              {this.props.match.params.bizName}:
            </Link>
            <span>
              {` Add Photos`}
            </span>
          </h2>
        </div>
        <Dropzone
          className='dropzone-biz'
          multiple={false}
          accept="image/*"
          onDrop={this.handleFile.bind(this)}
          style={{ opacity: this.state.loading ? "0.15" : "1" }}
        >
          {this.state.url ? (
            <div className='preview'>
              <img src={this.state.url}/>
              <span className='another-one'>Change another one?</span>
            </div>
          ) : (
            <div className='upload'>
              <h1>Drag and drop your photos here</h1>
              <fieldset className='hr-line'>
                <legend>OR</legend>
              </fieldset>
              <button>Browse Files</button>
            </div>
          )}
        </Dropzone>
        <div className='btn'>
          <button
            className='submit'
            style={{display: this.state.url ? "block" : "none"}}
            disabled={this.state.loading ? "true" : ""}
            type='submit'
            onClick={this.upload.bind(this)}
            >
            Add Photo
          </button>
        </div>
      </div>
    );
  }
}

export default UploadPhoto;
