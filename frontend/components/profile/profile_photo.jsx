import React from 'react';
import NavbarContainer from '../navbar/nav_bar_container';
import Dropzone from 'react-dropzone';
import { css } from 'react-emotion';
import { BeatLoader } from 'react-spinners';

class ProfilePhoto extends React.Component {
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
      this.upload();
    };
    if (file) {
      fileReader.readAsDataURL(file);
    }
  }

  upload() {
    if (this.state.file) {
      this.setState({loading: true});
      const formData = new FormData();
      formData.append('user[profile_img]', this.state.file);
      $.ajax({
        url: `api/users/${this.props.currentUserId}`,
        method: 'patch',
        data: formData,
        contentType: false,
        processData: false
      }).then(
        window.setTimeout(() => {
          this.props.updateCurrentUser(this.props.currentUserId);
          this.props.history.push(`/profile`);
        }, 6000)
      );
    }else {
      this.setState({error: ['Please choose a file.']});
    }
  }

  render(){
    const override = css`
    display: block;
    border-color: red;
    position: absolute;
    top: 50%;
    left: 45%;
    z-index: 99;
    `;
    return(
      <div className='profile-photo-change'>
        <NavbarContainer singleBiz={true}/>
        <BeatLoader
          className={override}
          sizeUnit={"px"}
          size={34}
          color={'#d32323'}
          loading={this.state.loading}
        />
        <div className='update-photo-wrapper' style={{ opacity: this.state.loading ? "0.15" : "1" }}>
          <h2>Update profile photo</h2>
          <Dropzone
            className='dropzone'
            multiple={false}
            accept="image/*"
            onDrop={this.handleFile.bind(this)}
          >
            {this.state.url ? (
              <div className='preview'>
                <img src={this.state.url}/>
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
        </div>
      </div>
    );
  }
}

export default ProfilePhoto;
