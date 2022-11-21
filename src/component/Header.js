import React from 'react'
import { Link } from 'react-router-dom';
import { Dropdown } from 'react-bootstrap';

const Header = () => {
  const myfun = () => {
    // return(
    alert("hello")
    // $('#setdat').html('<div class="dropdown"><button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Tutorials<span class="caret"></span></button><ul class="dropdown-menu"><li><a href="#">HTML</a></li><li><a href="#">CSS</a></li><li><a href="#">JavaScript</a></li><li class="divider"></li><li><a href="#">About Us</a></li></ul></div>');
    // )
  }
  return (
    <div>
      <header className="topbar" data-navbarbg="skin5">
        <nav className="navbar top-navbar navbar-expand-md navbar-dark">
          <div className="navbar-header" data-logobg="skin6">
            <Link className="navbar-brand" to="/">

              <b className="logo-icon">

                <img src={process.env.PUBLIC_URL + "/admin/images/fasttrack.png"} alt="homepage" />
              </b>

              {/* <span className="logo-text">
        
          <img src={process.env.PUBLIC_URL +"admin/plugins/images/logo-text.png"} alt="homepage" />
        </span> */}
            </Link>

            <Link to="/" className="nav-toggler waves-effect waves-light text-dark d-block d-md-none" ><i className="ti-menu ti-close" /></Link>
          </div>

          <div className="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">

            <ul className="navbar-nav ms-auto d-flex align-items-center">

              <li className=" in">
                <form role="search" className="app-search d-none d-md-block me-3">
                  <input type="text" placeholder="Search..." className="form-control mt-0" />
                  <Link to="/" className="active">
                    <i className="fa fa-search" />
                  </Link>
                </form>
              </li>

              <li>
                <Dropdown className="user-drop-main-area">
                  <Dropdown.Toggle variant="success" id="dropdown-basic">
                  <img src={process.env.PUBLIC_URL +"/admin/plugins/images/users/varun.jpg"} alt="user-img" width={36} className="img-circle" /><span className="text-white font-medium">Steave</span>
                  </Dropdown.Toggle>
                  <Dropdown.Menu>
                    <Dropdown.Item href="#/logout" >Logout</Dropdown.Item>
                  </Dropdown.Menu>
                </Dropdown>
              </li>

              {/* <li>
          <Link className="profile-pic" onClick={myfun} to="/dashboard">
            <img src={process.env.PUBLIC_URL +"/admin/plugins/images/users/varun.jpg"} alt="user-img" width={36} className="img-circle" /><span className="text-white font-medium">Steave</span></Link>
        </li> */}
              <div id='setdat'></div>
            </ul>
          </div>
        </nav>
      </header>

    </div>
  )
}

export default Header
