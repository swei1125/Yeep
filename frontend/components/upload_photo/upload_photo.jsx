import React from 'react';
import NavBarContainer from '../navbar/nav_bar_container';
import { Link } from 'react-router-dom';
import { css } from 'react-emotion';
import { BeatLoader } from 'react-spinners';


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

  // componentDidMount() {
  //   this.props.fetchBiz(this.props.match.params.bizId);
  // }

  handleFile(e) {
    this.setState({error: []});
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
    // e.preventDefault();
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
    left: 50%;
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
        <div className='upload-form' style={{ opacity: this.state.loading ? "0.15" : "1" }}>

          <form onSubmit={this.upload.bind(this)}>
            <input type='file' onChange={this.handleFile.bind(this)}/>
            <div className='preview'>
              {preview}
            </div>
            <button disabled={this.state.loading ? "true" : ""} type='submit'>Add Photo</button>
            {this.state.error.map((err, i) => <li className='err' key={i}>{err}</li>)}
          </form>
        </div>
      </div>
    );
  }
}

export default UploadPhoto;
