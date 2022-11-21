import React, { useEffect, useState } from 'react'
import { Link, useNavigate } from 'react-router-dom'
import { Modal, Button, Form, Row, Col } from 'react-bootstrap';
import Swal from "sweetalert2";
import axios from "axios";
import $ from 'jquery'; 
import "./studentdetail.css";
import config from "../component/config";
import CircularProgress from '@mui/material/CircularProgress';
const Studentdetail = () => {
  // console.log(config);
  const [companylist, setcompanylist] = useState([]);
  let CusID; //chnage here to line 21
  if(JSON.parse(localStorage.getItem("CusID"))!==null)
  {
    CusID = JSON.parse(localStorage.getItem("CusID"));
  }
  else
  {
    CusID = ''
  }
  console.log('customerID');
  console.log(CusID); //change upto here
  const [show, setShow] = useState(false);
  const [editModels, seteditModels] = useState(false);
  // const [modeldata, setmodeldata] = useState([]);
  const [editModel, seteditModel] = useState([]);
  const [editDirectorys, seteditDirectorys] = useState(false);
  const [editDirectory, seteditDirectory] = useState([]);


  const [getId, setId] = useState('');
  const [getId2, setId2] = useState('');
  const [getPER_NAME, setPER_NAME] = useState('');
  const [getPER_LASTNAME, setPER_LASTNAME] = useState('');
  const [getPER_MAIL, setPER_MAIL] = useState('');
  const [getPER_SMAIL, setPER_SMAIL] = useState('');
  const [getPER_TMAIL, setPER_TMAIL] = useState('');
  const [getPER_PHONE, setPER_PHONE] = useState('');
  const [getPER_SPHONE, setPER_SPHONE] = useState('');
  const [getPER_TPHONE, setPER_TPHONE] = useState('');
  const [getCompanyDirectory, setCompanyDirectory] = useState([]);
  let navigate = useNavigate();
  const handleClose = () => setShow(false);
  const handleCloseEdit = () => seteditModels(false);
  const handleDirectoryCloseEdit = () => seteditDirectorys(false);
  const [validated, setValidated] = useState(false);
  const [getgeocountry, setgeocountry] = useState([]);
  const [COU_ID, setCOU_ID] = useState('');
  const [getcustomer_legal, setcustomer_legal] = useState([]);
  const [getcompaniesEmailList, setcompaniesEmailList] = useState([]);
  const [getPER_NUMBER, setPER_NUMBER] = useState('');
  const [getIssuing_location, setIssuing_location] = useState('');
  const [getGender, setGender] = useState('');
  const [getEliminado, setEliminado] = useState('');
  const [getComment, setComment] = useState('');
  const [getDocumentdata, setDocumentdata] = useState([]);
  const [editgetDocument, seteditgetDocument] = useState(false);
  const [getDocument, setDocument] = useState(false);
  const handleDocumentClose = () => setDocument(false);
  const handleDocumentCloseEdit = () => seteditgetDocument(false);
  const [getDPER_NUMBER, setDPER_NUMBER] = useState('');
  const [getDPER_STATE, setDPER_STATE] = useState('');
  const [getDPER_CITY, setDPER_CITY] = useState('');
  const [getDPER_ID, setDPER_ID] = useState('');
  const [getDPER_ISSUE_DATE, setDPER_ISSUE_DATE] = useState('');
  const [getDPER_EXPIRED_DATE, setDPER_EXPIRED_DATE] = useState('');
  const [search, setSearch] = useState("")
  

 const DataTablemy=() => {
    setTimeout(()=>{
      $(".example2").DataTable();
    },100)
}






  async function customerlist() {
    DataTablemy()
    await axios.post(`${config}api/customerList`).then((response) => {
      
      if (response.data.success === "true") {
        setcompanylist(response.data.data);
        //console.log(response.data.res);
      }
     
      
      
    });
    // DataTablemy()
    
  }
  console.log('companylist')
  console.log(companylist)


  async function customerDocument() {
    await axios.post(`${config}api/customerDocument`, { CusID: JSON.parse(localStorage.getItem("CusID")) }).then((response) => {
      //console.log(response.data)
      if (response.data.success === "true") {
        setDocumentdata(response.data.data);
        //console.log(response.data.res);
        //DataTablemy()
      }
    });
  }
  useEffect(() => {
    customerlist()
    setTimeout(() => {
      DataTablemy()
    }, 100)
    
  }, []);
  async function CompanyDirectory() {
    await axios.post(`${config}api/CustomerAddedTable`, { CusID: JSON.parse(localStorage.getItem("CusID")) }).then((response) => {
      // console.log(response.data)
      if (response.data.success === "true") {
        //console.log(response.data.res);
        setCompanyDirectory(response.data.data);
       
        //console.log(response.data.res);
      }
    });
  }




  const handleShow = (e) => {
    setCompanyDirectory([]);
    localStorage.setItem("CusID", JSON.stringify(`${e}`));
    //setmodeldata(modeldata);
    setShow(true);
    CompanyDirectory();
    DataTablemy()
    
   
  }
  const handleShowEdit = (e) => {
    //console.log(e.ACC_ID);
    setId(e.ACC_ID);
    setPER_NAME(e.PER_NAME);
    setPER_LASTNAME(e.PER_LASTNAME);
    setPER_MAIL(e.PER_MAIL);
    setPER_SMAIL(e.PER_SMAIL);
    setPER_TMAIL(e.PER_TMAIL);
    setPER_PHONE(e.PER_PHONE);
    setPER_SPHONE(e.PER_SPHONE);
    setPER_TPHONE(e.PER_TPHONE);
    //localStorage.setItem("CusID", JSON.stringify(`${e}`));
    seteditModel(editModel);
    seteditModels(true);

  }
  const handleCompanyDirectoryEdit = (e) => {

    setId(e.ACC_ID_COMPANY);
    setId2(e.ACC_ID_CUSTOMER);
    setPER_NAME(e.CV_PNAME);
    setPER_LASTNAME(e.CV_PLAST);
    setPER_MAIL(e.CV_MMAIL);
    setPER_SMAIL(e.CV_SMAIL);
    setPER_TMAIL(e.CV_TMAIL);
    setPER_PHONE(e.CV_MPHONE);
    setPER_SPHONE(e.CV_SPHONE);
    setPER_TPHONE(e.CV_TPHONE);
    setPER_NUMBER(e.CV_PER_NUMBER);
    setIssuing_location(e.CV_PER_EXP);
    setGender(e.CV_GENDER);
    setEliminado(e.CV_DELETE);
    setComment(e.CV_COMMENT);
    setCOU_ID(e.COU_ID);


    seteditDirectory(editDirectory)
    seteditDirectorys(true);
  }


  const handleCompanyDocumentEdit = (e) => {

    if (e.DPER_ID === null || e.DPER_ID === undefined) {
      setDPER_ID('');
      setDPER_NUMBER('');
      setPER_NUMBER('');
      setDPER_STATE('');
      setDPER_CITY('');
      setDPER_ISSUE_DATE('');
      setDPER_EXPIRED_DATE('');
      seteditgetDocument(true);
    } else {
      setDPER_ID(e.DPER_ID);
      setDPER_NUMBER(e.DPER_NUMBER);
      setPER_NUMBER(e.ID_ID);
      setDPER_STATE(e.DPER_STATE);
      setDPER_CITY(e.DPER_CITY);
      setDPER_ISSUE_DATE(e.DPER_ISSUE_DATE);
      setDPER_EXPIRED_DATE(e.DPER_EXPIRED_DATE);
      //console.log(e.DPER_ID);
      seteditgetDocument(true);
    }



  }
  const handleSubmit = (event) => {
    event.preventDefault();
    const form = event.currentTarget;
    if (form.checkValidity() === false) {
      event.preventDefault();
      event.stopPropagation();
    }
    setValidated(true);
    var bodyFormData = new FormData(event.target);
    var object = {};
    bodyFormData.forEach(function(value, key){
        object[key] = value;
    });
   
    var json = JSON.stringify(object);
    axios({
      method: "post",
      url: `${config}api/EditcustomerList`,
      data: json,
      headers: {
          'Content-Type': 'application/json'
        },
    }).then((response) => {
      //console.log(response.data)
      if (response.data.success === "true") {
        navigate("/studentdetail");
        seteditModels(false)
        Swal.fire({
          toast: true,
          icon: 'success',
          title: response.data.message,
          animation: false,
          position: 'top',
          showConfirmButton: false,
          timer: 1000,
          timerProgressBar: true,
          didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
          }
        })
        customerlist();
      }
    }).catch(function (error) {
      if (error.response) {
        //   console.log(error.response.data);
        Swal.fire({
          toast: true,
          icon: 'error',
          title: "Error",
          text: error.response.data.message,
          animation: false,
          position: 'top',
          showConfirmButton: false,
          timer: 1000,
          color: "#ff0000",
          timerProgressBar: true,
          didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
          }
        })
      }
    });

  };
  const handleDirectorySubmit = (event) => {
    event.preventDefault();
    const form = event.currentTarget;
    if (form.checkValidity() === false) {
      event.preventDefault();
      event.stopPropagation();
    }
    setValidated(true);
    var bodyFormData = new FormData(event.target);
    var object = {};
    bodyFormData.forEach(function(value, key){
        object[key] = value;
    });
   
    var json = JSON.stringify(object);
    axios({
      method: "post",
      url: `${config}api/EditcustomerDirectory`,
      data: json,
      headers: {
          'Content-Type': 'application/json'
        },
    }).then((response) => {
      //console.log(response.data)
      if (response.data.success === "true") {

        seteditModels(false)
        Swal.fire({
          toast: true,
          icon: 'success',
          title: response.data.message,
          animation: false,
          position: 'top',
          showConfirmButton: false,
          timer: 1000,
          timerProgressBar: true,
          didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
          }
        })
        // customerlist();
        CompanyDirectory();
        seteditDirectorys(false);
      }
    }).catch(function (error) {
      if (error.response) {
        //   console.log(error.response.data);
        Swal.fire({
          toast: true,
          icon: 'error',
          title: "Error",
          text: error.response.data.message,
          animation: false,
          position: 'top',
          showConfirmButton: false,
          timer: 1000,
          color: "#ff0000",
          timerProgressBar: true,
          didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
          }
        })
      }
    });
  }
  useEffect(() => {
    axios.post(`${config}api/geocountry`, {}).then((response) => {
      //console.log(response.data)

      if (response.data.success === "true") {
        setgeocountry(response.data.data);
      }
    });
    axios.post(`${config}api/customer_legal`, {}, { mode: 'cors' }, {
      'Content-Type': 'application/json',
    }).then((response) => {
      //console.log(response.data)
      if (response.data.success === "true") {
        setcustomer_legal(response.data.data);
        //console.log(response.data.res);
      }
    });

  }, []);
  useEffect(() => {

    axios.post(`${config}api/companiesEmailList`, { CusID: CusID }).then((response) => {
      //console.log(response.data)
      if (response.data.success === "true") {
        setcompaniesEmailList(response.data.data);
        //console.log(response.data.res);
      }
    });

  }, []);

  const selectedCOU_ID = (e) => {
    setCOU_ID(e.target.value);
  }
  const customer_legal = (e) => {
    setPER_NUMBER(e.target.value);
  }
  const Email1 = (e) => {
    setPER_MAIL(e.target.value);
  }
  const Email2 = (e) => {
    setPER_SMAIL(e.target.value);
  }
  const Email3 = (e) => {
    setPER_TMAIL(e.target.value);
  }
  const handleGender = (e) => {
    setGender(e.target.value);
  }
  const handleEliminado = (e) => {
    setEliminado(e.target.value);
  }
  const handleDocumentShow = (e) => {
    setDocumentdata([]);
    localStorage.setItem("CusID", JSON.stringify(`${e}`));
    //setmodelDocument(getDocument);
    setDocument(true);
    customerDocument()
  }
  const handleDocumentSubmit = (event) => {
    event.preventDefault();
    const form = event.currentTarget;
    if (form.checkValidity() === false) {
      event.preventDefault();
      event.stopPropagation();
    }
    setValidated(true);
    var bodyFormData = new FormData(event.target);
    bodyFormData.append('ACC_ID', CusID);
    var object = {};
    bodyFormData.forEach(function(value, key){
        object[key] = value;
    });
   
    var json = JSON.stringify(object);

    axios({
      method: "post",
      url: `${config}api/customerDocumentAddEdit`,
      data: json,
      headers: {
          'Content-Type': 'application/json'
        },
    }).then((response) => {
      console.log(response.data)
      if (response.data.success === "true") {

        seteditModels(false)
        Swal.fire({
          toast: true,
          icon: 'success',
          title: response.data.data.message,
          animation: false,
          position: 'top',
          showConfirmButton: false,
          timer: 1000,
          timerProgressBar: true,
          didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
          }
        })
        customerlist();
        //CompanyDirectory();
        customerDocument()
        seteditgetDocument(false);
      }
    }).catch(function (error) {
      if (error.response) {
        //   console.log(error.response.data);
        Swal.fire({
          toast: true,
          icon: 'error',
          title: "Error",
          text: error.response.data.message,
          animation: false,
          position: 'top',
          showConfirmButton: false,
          timer: 1000,
          color: "#ff0000",
          timerProgressBar: true,
          didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
          }
        })
      }
    });
  
  }
  
  return (
    <div>
      <div className="page-wrapper" style={{ minHeight: 250 }}>
        <div className="page-breadcrumb bg-white">
          <div className="row align-items-center">
            <div className="col-lg-3 col-md-4 col-sm-4 col-xs-12">
              <h4 className="page-title">Student Details</h4>
            </div>
            <div className="col-lg-9 col-sm-8 col-md-8 col-xs-12">
              <div className="d-md-flex">
                <ol className="breadcrumb ms-auto">
                  <li><Link to="/" className="fw-normal">Student Details</Link></li>
                </ol>

              </div>
            </div>
          </div>
          {/* /.col-lg-12 */}
        </div>
        

        <div className="container-fluid">
        
          <div className="manage-admins-main-area">
            <div className="manage-admins-table-area">
            
              <table className="table table-responsive example2"  style={{ display: "inherit" }}>
              <div className='serchbox'>
                <label>search:</label>
                <input type="search" onChange={e=>setSearch(e.target.value)} placeholder="search.."></input>
              </div>
                <thead>
                  <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th className="th-in-th-border-area">
                      <tr>
                        <th>Document Type</th>
                        <th className="th-border-main-area">Document Number</th>
                      </tr>
                    </th>
                    <th>COD_ROOT</th>
                    <th>Records</th>
                    <th>Institutions</th>
                    <th>Email 1</th>
                    <th>Email 2</th>
                    <th>Email 3</th>
                    <th>Phone 1</th>
                    <th>Phone 2</th>
                    <th>Phone 3</th>
                    <th>CreationDate</th>
                    <th>UpdateDate</th>
                    <th>Action</th>
                  </tr>
                 
            {
                companylist.length === 0 ? <CircularProgress style={{position:'relative', left:'550px', width:'50px', height:'50px'}}/> : ''
               }
                </thead>
              
                <tbody>
                
                
                  {
                    companylist.filter((item)=>
                      !search.length || item.PER_NAME
                      .toString()
                      .toLowerCase()
                      .includes(search.toString().toLowerCase())
                    ).map((val, key) => {
                      return (
                        
                    
                        <tr>
                          <td >{val.PER_NAME}</td>
                          <td >{val.PER_LASTNAME}</td>
                          {
                            val.documentdata.map((valdata)=>{
                              return(
                                <tr className='cursepointer-td-data' onClick={() => handleDocumentShow(val.ACC_ID)}>
                                <td>{valdata.COU_ISO_ALPHA} - {valdata.NAME}</td>
                                <td>{valdata.DPER_NUMBER}</td>
                                
                                </tr>
                              )
                            })
                          }
                          {/* <td   onClick={() => handleDocumentShow(val.ACC_ID)} >{val.cou_id} -{val.docName}</td>
                          <td onClick={() => handleDocumentShow(val.ACC_ID)}>{val.docNumber}</td> */}
                          <td  >{val.COD_ROOT}</td>
                          <td >{val.CodRecord}</td>
                          <td className='cursepointer-td-data' onClick={() => handleShow(val.ACC_ID)}><i className="fa fa-search" aria-hidden="true"></i>{val.institution}</td>
                          <td >{val.PER_MAIL}</td>
                          <td >{val.PER_SMAIL}</td>
                          <td >{val.PER_TMAIL}</td>
                          <td >{val.PER_PHONE}</td>
                          <td >{val.PER_SPHONE}</td>
                          <td >{val.PER_TPHONE}</td>
                          <td >{val.CREATION_DATE}</td>
                          <td >{val.UPDATE_DATE}</td>
                          <td onClick={() => handleShowEdit(val)} ><i className="fas fa-edit"></i></td>
                        </tr>
                      )

                    })
                  }
                  
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>

      <Modal show={editModels} onHide={handleCloseEdit}>
        <Modal.Header closeButton>
          <Modal.Title>Edit Customer</Modal.Title>
        </Modal.Header>
        <Modal.Body>
          <Form noValidate validated={validated} onSubmit={handleSubmit}>
            <Row className="mb-3">
              <Form.Group as={Col} md="6" controlId="validationCustom03">
                <Form.Label>First Name</Form.Label>
                <Form.Control type="text" placeholder="First Name" name='PER_NAME' defaultValue={getPER_NAME} required />
                <Form.Control.Feedback type="invalid">
                  Please provide a First Name.
                </Form.Control.Feedback>
              </Form.Group>
              <Form.Group as={Col} md="6" controlId="validationCustom03">
                <Form.Label>Last Name</Form.Label>
                <Form.Control type="text" placeholder="Last Name" name="PER_LASTNAME" defaultValue={getPER_LASTNAME} required />
                <Form.Control.Feedback type="invalid">
                  Please provide a Last Name.
                </Form.Control.Feedback>
              </Form.Group>
            </Row>
            <Row className="mb-3">
              <Form.Group as={Col} md="6" controlId="validationCustom03">
                <Form.Label>Email 1</Form.Label>
                <Form.Control type="text" placeholder="Email 1" name='PER_MAIL' defaultValue={getPER_MAIL} required />
                <Form.Control.Feedback type="invalid">
                  Please provide a valid Email 1.
                </Form.Control.Feedback>
              </Form.Group>
              <Form.Group as={Col} md="6" >
                <Form.Label>Email 2</Form.Label>
                <Form.Control type="text" placeholder="Email 2" name='PER_SMAIL' defaultValue={getPER_SMAIL} />
              </Form.Group>
            </Row>
            <Row className="mb-3">
              <Form.Group as={Col} md="6">
                <Form.Label>Email 3</Form.Label>
                <Form.Control type="text" placeholder="Email 3" name='PER_TMAIL' defaultValue={getPER_TMAIL} />

              </Form.Group>
              <Form.Group as={Col} md="6" controlId="validationCustom03">
                <Form.Label>Phone 1</Form.Label>
                <Form.Control type="text" placeholder="Phone 1" required name='PER_PHONE' defaultValue={getPER_PHONE} />
                <Form.Control.Feedback type="invalid">
                  Please provide a valid Phone 1.
                </Form.Control.Feedback>
              </Form.Group>
            </Row>
            <Row className="mb-3">
              <Form.Group as={Col} md="6" >
                <Form.Label>Phone 2</Form.Label>
                <Form.Control type="text" placeholder="Phone 2" name='PER_SPHONE' defaultValue={getPER_SPHONE} />
              </Form.Group>
              <Form.Group as={Col} md="6">
                <Form.Label>Phone 3</Form.Label>
                <Form.Control type="text" placeholder="Phone 3" name='PER_TPHONE' defaultValue={getPER_TPHONE} />
              </Form.Group>
            </Row>
            <input type="hidden" id="quantity" name="ACC_ID" defaultValue={getId} />
            <Button type="submit">update</Button>
          </Form>
        </Modal.Body>
        <Modal.Footer>
          <Button variant="secondary" onClick={handleCloseEdit}>
            Close
          </Button>
        </Modal.Footer>
      </Modal>

      <Modal className="last-login-popup-area" show={show} onHide={handleClose}>
        <Modal.Header closeButton>
          <Modal.Title>List Company Directory</Modal.Title>
        </Modal.Header>
        <Modal.Body>
          <table className="table table-responsive example2" >
            <thead>
              <tr>
                <th>ID COmpany</th>
                <th>Company Name</th>
                <th>ID User</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Country</th>
                <th>Document Type</th>
                <th>Document number</th>
                <th>Email 1</th>
                <th>Phone 1</th>
                <th>Document issuing location</th>
                <th>Email 2</th>
                <th>Phone 2</th>
                <th>Email 3</th>
                <th>Phone 3</th>
                <th>CvType</th>
                <th>Gender</th>
                <th>Eliminado</th>
                <th>Comments</th>
                <th>DATE_CREATION</th>
                <th>DATE_UPDATE</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
              {
                getCompanyDirectory.map((value, key) => {
                  return (
                    <tr>
                      <td>{value.ACC_ID_COMPANY} </td>
                      <td>{value.COM_NAME}</td>
                      <td>{value.ACC_ID_CUSTOMER}</td>
                      <td>{value.CV_PNAME} </td>
                      <td>{value.CV_PLAST}</td>
                      <td>{value.COU_ID}</td>
                      <td>{value.NAME} </td>
                      <td>{value.CV_PER_NUMBER}</td>
                      <td>{value.CV_MMAIL}</td>
                      <td>{value.CV_MPHONE} </td>
                      <td>{value.CV_PER_EXP}</td>
                      <td>{value.CV_SMAIL}</td>
                      <td>{value.CV_SPHONE} </td>
                      <td>{value.CV_TMAIL}</td>
                      <td>{value.CV_TPHONE}</td>
                      <td>{value.CV_TYPE} </td>
                      <td>{(value.CV_GENDER === "M") ? "Male" : (value.CV_GENDER === "F") ? "Female" : "Other"}</td>
                      <td>{(value.CV_DELETE === "0") ? "True" : "False"}</td>
                      <td>{value.CV_COMMENT}</td>
                      <td>{value.DATE_CREATION} </td>
                      <td>{value.DATE_UPDATE}</td>
                      <td onClick={() => handleCompanyDirectoryEdit(value)} ><i className="fas fa-edit"></i></td>
                    </tr>
                  )

                })
              }
            </tbody>
          </table>
        </Modal.Body>
        <Modal.Footer>
          <Button variant="secondary" onClick={handleClose}>
            Close
          </Button>
        </Modal.Footer>
      </Modal>


      <Modal show={editDirectorys} onHide={handleDirectoryCloseEdit}>
        <Modal.Header closeButton>
          <Modal.Title>Edit Directory</Modal.Title>
        </Modal.Header>
        <Modal.Body>
          <Form noValidate validated={validated} onSubmit={handleDirectorySubmit}>
            <Row className="mb-3">
              <Form.Group as={Col} md="6" controlId="validationCustom03">
                <Form.Label>First Name</Form.Label>
                <Form.Control type="text" placeholder="First Name" name='CV_PNAME' defaultValue={getPER_NAME} required />
                <Form.Control.Feedback type="invalid">
                  Please provide a First Name.
                </Form.Control.Feedback>
              </Form.Group>
              <Form.Group as={Col} md="6" controlId="validationCustom03">
                <Form.Label>Last Name</Form.Label>
                <Form.Control type="text" placeholder="Last Name" name="CV_PLAST" defaultValue={getPER_LASTNAME} required />
                <Form.Control.Feedback type="invalid">
                  Please provide a Last Name.
                </Form.Control.Feedback>
              </Form.Group>
            </Row>
            <Row className="mb-3">
              <Form.Group as={Col} md="6" controlId="validationCustom03">
                <Form.Label>country</Form.Label>
                <Form.Select value={COU_ID} onChange={selectedCOU_ID} name="COU_ID">
                  <option value="">Choose...</option>
                  {
                    getgeocountry.map((val) => {
                      return (
                        <option value={val.COU_ISO_ALPHA}>{val.COU_ISO_ALPHA}</option>
                      )
                    })

                  }
                </Form.Select>
              </Form.Group>
              <Form.Group as={Col} md="6" controlId="validationCustom03">
                <Form.Label>Document</Form.Label>
                <Form.Select name="CV_PER_NUMBER" value={getPER_NUMBER} onChange={customer_legal}>
                  <option value="">Choose...</option>
                  {
                    getcustomer_legal.map((val) => {
                      return (
                        <option value={val.DPER_NUMBER}>{val.COU_ISO_ALPHA} - {val.NAME} - {val.DPER_NUMBER}</option>
                      )
                    })

                  }
                </Form.Select>
              </Form.Group>
            </Row>
            <Row className="mb-3">
              <Form.Group as={Col} md="6" controlId="validationCustom03">
                <Form.Label>Email 1</Form.Label>
                <Form.Select name='CV_MMAIL' value={getPER_MAIL} onChange={Email1}>
                  <option value="">Choose...</option>
                  {
                    getcompaniesEmailList.map((val) => {
                      return (
                        <option value={val}>{val}</option>
                      )
                    })

                  }
                </Form.Select>
              </Form.Group>
              <Form.Group as={Col} md="6" controlId="validationCustom03">
                <Form.Label>Email 2</Form.Label>
                <Form.Select name='CV_SMAIL' value={getPER_SMAIL} onChange={Email2}>
                  <option value="">Choose...</option>
                  {
                    getcompaniesEmailList.map((val) => {
                      return (
                        <option value={val}>{val}</option>
                      )
                    })

                  }
                </Form.Select>
              </Form.Group>
            </Row>
            <Row className="mb-3">
              <Form.Group as={Col} md="6" controlId="validationCustom03">
                <Form.Label>Email 3</Form.Label>
                <Form.Select name='CV_TMAIL' value={getPER_TMAIL} onChange={Email3}>
                  <option value="">Choose...</option>
                  {
                    getcompaniesEmailList.map((val) => {
                      return (
                        <option value={val}>{val}</option>
                      )
                    })

                  }
                </Form.Select>
              </Form.Group>
              <Form.Group as={Col} md="6" controlId="validationCustom03">
                <Form.Label>Phone 1</Form.Label>
                <Form.Control type="text" placeholder="Phone 1" required name='CV_MPHONE' defaultValue={getPER_PHONE} />
                <Form.Control.Feedback type="invalid">
                  Please provide a valid Phone 1.
                </Form.Control.Feedback>
              </Form.Group>
            </Row>
            <Row className="mb-3">
              <Form.Group as={Col} md="6" >
                <Form.Label>Phone 2</Form.Label>
                <Form.Control type="text" placeholder="Phone 2" name='CV_SPHONE' defaultValue={getPER_SPHONE} />
              </Form.Group>
              <Form.Group as={Col} md="6">
                <Form.Label>Phone 3</Form.Label>
                <Form.Control type="text" placeholder="Phone 3" name='CV_TPHONE' defaultValue={getPER_TPHONE} />
              </Form.Group>
            </Row>
            <Row className="mb-3">
              <Form.Group as={Col} md="6" >
                <Form.Label>Document issuing location</Form.Label>
                <Form.Control type="text" placeholder="Document issuing location" name='CV_PER_EXP' defaultValue={getIssuing_location} />
              </Form.Group>
              <Form.Group as={Col} md="6" controlId="validationCustom03">
                <Form.Label>Gender</Form.Label>
                <Form.Select name="CV_GENDER" value={getGender} onChange={handleGender}>
                  <option value="">Choose...</option>
                  <option value="M">MALE</option>
                  <option value="F">FEMALE</option>
                  <option value="O">OTHER</option>

                </Form.Select>
              </Form.Group>
            </Row>
            <Row className="mb-3">
              <Form.Group as={Col} md="6" controlId="validationCustom03">
                <Form.Label>Eliminado</Form.Label>
                <Form.Select name="CV_DELETE" value={getEliminado} onChange={handleEliminado} >
                  <option value="0">True</option>
                  <option value="1">false</option>

                </Form.Select>
              </Form.Group>
            </Row>
            <Row className="mb-3">
              <Form.Group className="mb-3" controlId="validationCustom03">
                <Form.Label>Comments</Form.Label>
                <Form.Control as="textarea" name="CV_COMMENT" defaultValue={getComment} rows={3} />
              </Form.Group>
            </Row>
            <input type="hidden" id="quantity" name="ACC_ID_COMPANY" defaultValue={getId} />
            <input type="hidden" id="quantity" name="ACC_ID_CUSTOMER" defaultValue={getId2} />
            <Button type="submit">update</Button>
          </Form>
        </Modal.Body>
        <Modal.Footer>
          <Button variant="secondary" onClick={handleDirectoryCloseEdit}>
            Close
          </Button>
        </Modal.Footer>
      </Modal>


      <Modal className="last-login-popup-area" show={getDocument} onHide={handleDocumentClose}>
        <Modal.Header closeButton>
          <Modal.Title>Customer Document List</Modal.Title>
        </Modal.Header>
        <Modal.Body>
          <div className="fa-plus-circle-area">
            <i className="fa fa-plus" aria-hidden="true" onClick={handleCompanyDocumentEdit}></i>
          </div>
          <table className="table table-responsive example2" >
            <thead>
              <tr>
                <th>ID</th>
                <th>Document Type</th>
                <th>Customer Id</th>
                <th>Number</th>
                <th>Issue date</th>
                <th>Expiration date</th>
                <th>State</th>
                <th>City</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
              {
                getDocumentdata.map((value, key) => {
                  return (
                    <tr>

                      <td>{value.DPER_ID}</td>
                      <td>{value.ID_ID} </td>
                      <td>{value.ACC_ID}</td>
                      <td>{(value.DPER_NUMBER)}</td>
                      <td>{value.DPER_ISSUE_DATE}</td>
                      <td>{value.DPER_EXPIRED_DATE} </td>
                      <td>{value.DPER_STATE}</td>
                      <td>{value.DPER_CITY}</td>
                      <td onClick={() => handleCompanyDocumentEdit(value)} ><i className="fas fa-edit"></i></td>
                    </tr>
                  )
                })
              }
            </tbody>
          </table>
        </Modal.Body>
        <Modal.Footer>
          <Button variant="secondary" onClick={handleDocumentClose}>
            Close
          </Button>
        </Modal.Footer>
      </Modal>


      <Modal show={editgetDocument} onHide={handleDocumentCloseEdit}>
        <Modal.Header closeButton>
          <Modal.Title> {(getDPER_ID != '') ? "Edit Document" : "ADD Document"}</Modal.Title>
        </Modal.Header>
        <Modal.Body>
          <Form noValidate validated={validated} onSubmit={handleDocumentSubmit}>
            <Row className="mb-3">
              <Form.Group as={Col} md="6" controlId="validationCustom03">
                <Form.Label>Document</Form.Label>
                <Form.Select name="ID_ID" value={getPER_NUMBER} onChange={customer_legal}>
                  <option value="">Choose...</option>
                  {
                    getcustomer_legal.map((val) => {
                      return (
                        <option value={val.ID_ID}>{val.COU_ISO_ALPHA}   {val.NAME}   {val.TYPE}</option>
                      )
                    })

                  }
                </Form.Select>
              </Form.Group>
              <Form.Group as={Col} md="6" >
                <Form.Label>Number</Form.Label>
                <Form.Control type="text" placeholder="DPER_NUMBER" name='DPER_NUMBER' defaultValue={getDPER_NUMBER} />
              </Form.Group>
            </Row>
            <Row className="mb-3">
              <Form.Group as={Col} md="6" >
                <Form.Label>State</Form.Label>
                <Form.Control type="text" placeholder="DPER_STATE" name='DPER_STATE' pattern="[A-Za-z]{1}"  defaultValue={getDPER_STATE}  maxlength="1" />
              </Form.Group>
              <Form.Group as={Col} md="6">
                <Form.Label>City</Form.Label>
                <Form.Control type="text" placeholder="DPER_CITY" name='DPER_CITY' defaultValue={getDPER_CITY} />
              </Form.Group>
            </Row>
            <Row className="mb-3">
              <Form.Group as={Col} md="6" >
                <Form.Label>Issue date</Form.Label>
                <Form.Control type="Date" placeholder="DPER_ISSUE_DATE" name='DPER_ISSUE_DATE' defaultValue={getDPER_ISSUE_DATE} />
              </Form.Group>
              <Form.Group as={Col} md="6">
                <Form.Label>Expiration date</Form.Label>
                <Form.Control type="Date" placeholder="DPER_EXPIRED_DATE" name='DPER_EXPIRED_DATE' defaultValue={getDPER_EXPIRED_DATE} />
              </Form.Group>
            </Row>
            <input type="hidden" name="DPER_ID" defaultValue={getDPER_ID} />
            <Button type="submit">{(getDPER_ID != '') ? "UPDATE" : "ADD"}</Button>
          </Form>
        </Modal.Body>
        <Modal.Footer>
          <Button variant="secondary" onClick={handleDocumentCloseEdit}>
            Close
          </Button>
        </Modal.Footer>
      </Modal>
      
    </div>
  )
}

export default Studentdetail
