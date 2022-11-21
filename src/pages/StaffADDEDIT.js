import React, { useEffect, useState } from 'react'
import { useParams } from "react-router-dom"
import { Form, Row, Col, Button } from "react-bootstrap"
import Swal from "sweetalert2";
import { useNavigate, Link } from "react-router-dom";
import axios from 'axios';
import Select from "react-select"
import config from "../component/config";

const StaffADDEDIT = () => {
    let navigate = useNavigate();
    let { id } = useParams();
    const isAddMode = !{ id }.id;
    const [validated, setValidated] = useState(false);
    const [option, setoption] = useState([]);
    const [companyBranch, setcompanyBranch] = useState([]);
    const [geoTimezone, setgeoTimezone] = useState([]);
    const [department, setdepartment] = useState([]);
    const [singleStaffList, setsingleStaffList] = useState([]);
    const [Roles, setRoles] = useState([]);
    const [timezone, setTimezone] = useState('');
    const [branch, setbranch] = useState('');
    const [dept, setdept] = useState('');
    const [STATE, setSTATE] = useState("");
    const [getselected, setSelected] = useState([]);
    const [olddata, setolddata] = useState([]);
    

    const addSubmit = async (event) => {
        event.preventDefault();
        const form = event.currentTarget;
        if (form.checkValidity() === false) {
            event.stopPropagation();
        }
        setValidated(true);
        if (event.target.ACC_ID != null) {
            var bodyFormData = new FormData(event.target);
            bodyFormData.append("role",JSON.stringify(getselected));
            // console.log(Object.fromEntries(bodyFormData))
            // console.log(bodyFormData);
            var object = {};
            bodyFormData.forEach(function(value, key){
                object[key] = value;
            });
            // object.append("role","getselected");
            var json = JSON.stringify(object);
           // console.log(json);
            await axios({
                method: "post",
                url: `${config}api/addStaff`,
                data: json,
                headers: {
                    'Content-Type': 'application/json'
                  },
            }).then((response) => {
                //console.log(response.data)
                if (response.data.success === "true") {
                    navigate("/Staffbycompany");

                    Swal.fire({
                        toast: true,
                        icon: 'success',
                        title: response.data.message,
                        animation: false,
                        position: 'top',
                        showConfirmButton: false,
                        timer: 5000,
                        timerProgressBar: true,
                        didOpen: (toast) => {
                            toast.addEventListener('mouseenter', Swal.stopTimer)
                            toast.addEventListener('mouseleave', Swal.resumeTimer)
                        }
                    })
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
                        timer: 5000,
                        color: "#ff0000",
                        timerProgressBar: true,
                        didOpen: (toast) => {
                            toast.addEventListener('mouseenter', Swal.stopTimer)
                            toast.addEventListener('mouseleave', Swal.resumeTimer)
                        }
                    })
                }
            });


        } else {

            var bodyFormData = new FormData(event.target);
            bodyFormData.append("ACC_ID", JSON.parse(localStorage.getItem("Uid")));
            bodyFormData.append('olddata',JSON.stringify(olddata));
            bodyFormData.append('newdata',JSON.stringify(Roles));
            //console.log(Object.fromEntries(bodyFormData));
            var object = {};
            bodyFormData.forEach(function(value, key){
                object[key] = value;
            });
            var json = JSON.stringify(object);

            await axios({
                method: "post",
                url: `${config}api/updateStaffList`,
                data: json,
                headers: {
                    'Content-Type': 'application/json'
                  },
            }).then((response) => {
                //console.log(response.data)
                if (response.data.success === "true") {
                    navigate("/Staffbycompany");

                    Swal.fire({
                        toast: true,
                        icon: 'success',
                        title: response.data.message,
                        animation: false,
                        position: 'top',
                        showConfirmButton: false,
                        timer: 5000,
                        timerProgressBar: true,
                        didOpen: (toast) => {
                            toast.addEventListener('mouseenter', Swal.stopTimer)
                            toast.addEventListener('mouseleave', Swal.resumeTimer)
                        }
                    })
                }
            }).catch(function (error) {
                if (error.response) {
                    console.log(error.response.data);
                    Swal.fire({
                        toast: true,
                        icon: 'error',
                        title: "Error",
                        text: error.response.data.message,
                        animation: false,
                        position: 'top',
                        showConfirmButton: false,
                        timer: 5000,
                        color: "#ff0000",
                        timerProgressBar: true,
                        didOpen: (toast) => {
                            toast.addEventListener('mouseenter', Swal.stopTimer)
                            toast.addEventListener('mouseleave', Swal.resumeTimer)
                        }
                    })
                }
            });

            //alert(' hdjahfh '+ event.target.ACC_ID);
        }

    }
    

    useEffect(() => {
        axios.post(`${config}api/roleinCompany`, {}).then((response) => {
            //console.log(response.data)

            if (response.data.success === "true") {
                const dropDownValue = response.data.data.map((response) => ({
                    "value" : response.CROL_ID,
                    "label" : response.CROL_NAME
                  }))
                setoption(dropDownValue);
            }
        },);

        axios.post(`${config}api/geoTimezone`, {}).then((response) => {
           // console.log(response.data)

            if (response.data.success === "true") {
                setgeoTimezone(response.data.data);
            }
        });
        axios.post(`${config}api/companyBranch`, {}).then((response) => {
            //console.log(response.data)

            if (response.data.success === "true") {
                setcompanyBranch(response.data.data);
            }
        });
        axios.post(`${config}api/department`, {}).then((response) => {
           // console.log(response.data)

            if (response.data.success === "true") {
               // alert("hello")
                setdepartment(response.data.data);
            }
        });

    }, []);
    useEffect(() => {
        axios.post(`${config}api/singleStaffList`, { STAFF_ID: { id } }).then((response) => {
            //console.log(response)

            if (response.data.success === "true") {
             //console.log(response.data.data[0].TMZ_ID)
                setsingleStaffList(response.data.data[0]);
                
                setTimezone(response.data.data[0].TMZ_ID);
                setbranch(response.data.data[0].CBR_ID);
                setdept(response.data.data[0].CDEPT_ID);
                setSTATE(response.data.data[0].CUSR_STATE);
                const dropDownValue = response.data.data[0].role.map((response) => ({
                    "value" : response.CROL_ID,
                    "label" : response.CROL_NAME,
                    "CUT_ID":response.CUT_ID
                  }))
                  setSelected(dropDownValue);
                  setolddata(dropDownValue)
              //console.log(response.data.res.role);
                
               
            }
        });
    }, []);
    const rolechange = (e) => {
        setRoles(e.target.value);
    }
    const Timezonechange = (e) => {
        setTimezone(e.target.value);
    }
    const chnagebranch = (e) => {
        setbranch(e.target.value);
    }
    const changedept = (e) => {
        setdept(e.target.value);
    }
    const changeSTATE = (e) => {
        setSTATE(e.target.value);
    }
    //setRoles({ id }.id ?singleStaffList.role:'')
    // console.log(singleStaffList.role+"  jai sri ram")

    const handleChange = (e) => {
        setSelected(e);
        setRoles(e);
    }

    return (
        <div>
            <div className="page-wrapper" style={{ minHeight: 250 }}>
                <div className="page-breadcrumb bg-white">
                    <div className="row align-items-center">
                        <div className="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                            <h4 className="page-title">{isAddMode ? 'Add ' : 'Edit '}  STAFF</h4>
                        </div>
                        <div className="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                            <div className="d-md-flex">
                                <ol className="breadcrumb ms-auto">
                                    <li><Link to="/StaffADDEDIT" className="fw-normal">{isAddMode ? 'Add ' : 'Edit '} STAFF</Link></li>
                                </ol>
                            </div>
                        </div>
                    </div>

                </div>

                <div className="container-fluid">

                    <div className="manage-admins-main-area">
                        <div className="manage-admins-table-area">

                            <Form noValidate validated={validated} onSubmit={addSubmit} >
                                <Row className="m-3">
                                    <Form.Group as={Col} controlId="formGridEmail">
                                        <Form.Label>First Name</Form.Label>
                                        <Form.Control type="text" name="FirstName" defaultValue={{ id }.id ? singleStaffList.CUSR_FNAME : ""} placeholder="First Name" required />
                                        <Form.Control.Feedback type="invalid">
                                            Please provide a First Name.
                                        </Form.Control.Feedback>
                                    </Form.Group>
                                    <Form.Group as={Col} controlId="formGridPassword">
                                        <Form.Label>Last Name</Form.Label>
                                        <Form.Control type="text" placeholder="Last Name" defaultValue={{ id }.id ? singleStaffList.CUSR_LNAME : ''} name="LastName" required />
                                        <Form.Control.Feedback type="invalid">
                                            Please provide a  Last Name.
                                        </Form.Control.Feedback>
                                    </Form.Group>

                                </Row>
                                <Row className="m-3">
                                    <Form.Group as={Col} controlId="formGridEmail">
                                        <Form.Label>Email</Form.Label>
                                        <Form.Control type="email" placeholder="Email" name="email" defaultValue={{ id }.id ? singleStaffList.CUSR_EMAIL : ''} required />
                                        <Form.Control.Feedback type="invalid">
                                            Please provide a  Email.
                                        </Form.Control.Feedback>
                                    </Form.Group>
                                    <Form.Group as={Col} controlId="formGridPassword">
                                        <Form.Label>Phone Number</Form.Label>
                                        <Form.Control type="number" placeholder="Phone Number" name="PhoneNumber" defaultValue={{ id }.id ? singleStaffList.CUSR_PHONE : ''} required />
                                        <Form.Control.Feedback type="invalid">
                                            Please provide a  Phone Number.
                                        </Form.Control.Feedback>
                                    </Form.Group>
                                </Row>
                                <Row className="m-3">
                                    <Form.Group as={Col} controlId="formGridEmail">
                                        <Form.Label>Password</Form.Label>
                                        <Form.Control type="text" placeholder="Password" required />
                                        <Form.Control.Feedback type="invalid">
                                            Please provide a Password.
                                        </Form.Control.Feedback>
                                    </Form.Group>
                                    <Form.Group as={Col} >
                                        <Form.Label>Roles</Form.Label>
                                        {/* <Multiselect
                                            options={option}
                                            displayValue="Key"
                                        /> */}



                                        {/* <MultiSelect options={option} value={selected} onChange={setSelected} /> */}

                                        {/* <Select
                                            defaultValue={selectedOption}
                                            onChange={setSelectedOption}
                                            options={multiSelect}
                                        /> */}
                                        {/* setRoles({ id }.id ?singleStaffList.role:'') */}
                                        {/* <Form.Select  name="role"  value={Roles} onChange={rolechange} multiple required> */}
                                        {/* <option value="" disabled selected >Choose...</option>
                                        {
                                                multiSelect.map((val) => 
                                                        <option value={val.CROL_ID}>{val.CROL_NAME}</option>
                                                    
                                                )

                                            } */}
                                        {/* <select className='form-select' value={mresellerid} onChange={(e)=>{setmodelmresellerid(e.target.value)}}>
                                              <option value="">Please select an item</option>
                                              {data.map((item,i) => { 
                                                return <option value={item.resellerid}>{item.displayname}</option>
                                              })}
                                            </select>  */}
                                        {/* </Form.Select> */}
                                        <Select
                                            options={option}
                                            value={{ id }.id ? getselected : Roles}
                                            onChange={handleChange}
                                            isMulti
                                        />
                                        {/* <Select
                                            className="dropdown"
                                            placeholder="Select Option"
                                            value={option.filter(obj => selectedValue.includes(obj.value))} // set selected values
                                            options={option} // set list of the data
                                            onChange={handleChange} // assign onChange function
                                            isMulti
                                            isClearable
                                        /> */}
                                    </Form.Group>
                                </Row>
                                {/* <Row className="m-3">
                                    <Form.Group as={Col} controlId="my_multiselect_field">
                                        <Form.Label>My multiselect</Form.Label>
                                        <Form.Control as="select" value={option} onChange={e => setoption([].slice.call(e.target.selectedOptions).map(item => item.value))}>
                                            {
                                                option.map((val) =>
                                                    <option value={val.CROL_ID}>{val.CROL_NAME}</option>

                                                )

                                            }
                                            {/* <option value="field1">Field 1</option>
                                        <option value="field2">Field 2</option>
                                        <option value="field3">Field 3</option> 
                                        </Form.Control>
                                    </Form.Group>
                                </Row> */}
                                <Row className="m-3">
                                    <Form.Group as={Col} controlId="formGridEmail">
                                        <Form.Label>timeZone</Form.Label>
                                        <Form.Select required name="timeZone" value={timezone} onChange={Timezonechange}>
                                            <option value="">Choose...</option>
                                            {
                                                geoTimezone.map((val) => {
                                                    return (
                                                        <option value={val.TMZ_ID}>{val.TMZ_DES}</option>
                                                    )
                                                })
                                            }
                                            <Form.Control.Feedback type="invalid">
                                                Please select Time Zone.
                                            </Form.Control.Feedback>
                                        </Form.Select>
                                    </Form.Group>
                                    <Form.Group as={Col} controlId="formGridPassword">
                                        <Form.Label>Branch</Form.Label>
                                        <Form.Select name="CBR_ID" value={branch} onChange={chnagebranch} required>
                                            <option value="">Choose...</option>
                                            {
                                                companyBranch.map((val) => {
                                                    return (
                                                        <option value={val.CBR_ID}>{val.CBR_DES}</option>
                                                    )
                                                })

                                            }
                                        </Form.Select>
                                    </Form.Group>
                                </Row>
                                <Row className="m-3">
                                    <Form.Group as={Col} controlId="formGridEmail">
                                        <Form.Label>Department</Form.Label>
                                        <Form.Select name="Depart" value={dept} onChange={changedept} >
                                            <option value="">Choose...</option>
                                            {
                                                department.map((val) => {
                                                    return (
                                                        <option value={val.CDEPT_ID}>{val.CDEPT_DES}</option>
                                                    )
                                                })
                                            }
                                        </Form.Select>
                                        <Form.Control.Feedback type="invalid">
                                            Please provide a Department.
                                        </Form.Control.Feedback>
                                    </Form.Group>
                                    <Form.Group as={Col} controlId="formGridPassword">
                                        <Form.Label>State</Form.Label>
                                        <Form.Select name="State" value={STATE} onChange={changeSTATE}>
                                            <option value={"AC"}>AC</option>
                                            <option value={"IN"}>IN</option>
                                        </Form.Select>
                                    </Form.Group>
                                </Row>

                                <Row className="m-3">
                                    <Form.Group as={Col} controlId="formGridEmail">
                                        <Form.Label>Last Login</Form.Label>
                                        <Form.Control type="text" placeholder="Enter Style" readOnly />
                                    </Form.Group>
                                    {/* { id }.id ?  : "" */}
                                    <Form.Group as={Col} controlId="formGridPassword">
                                        <Form.Label>Login</Form.Label>
                                        <Form.Control type="text" placeholder="Enter Style" readOnly />
                                    </Form.Group>
                                </Row>
                                {

                                    { id }.id ? <input type="hidden" name='STAFF_ID' value={{ id }.id ? singleStaffList.STAFF_ID : ''} /> : <input type="hidden" name='ACC_ID' defaultValue={JSON.parse(localStorage.getItem("Uid"))} />
                                }

                                <div className="add-compnay-submit-btn">
                                    <Button className="m-3" variant="outline-danger" defaultValue={{ id }.id ? "update" : "save"} type="submit">
                                        {{ id }.id ? "update" : "Submit"}
                                    </Button>
                                </div>
                            </Form>
                        </div>
                    </div>
                </div>
            </div>
        </div >
    )
}

export default StaffADDEDIT
