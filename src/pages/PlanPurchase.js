import React, { useEffect, useState } from 'react'
import "./PackagePlanCustomer.css"
import { useParams,useNavigate, Link} from "react-router-dom"
import { Form, Button } from "react-bootstrap"
import axios from 'axios'
import Swal from 'sweetalert2'
import $ from 'jquery';
import config from "../component/config";


const PlanPurchase = () => {
    const [validated, setValidated] = useState(false);
    let { id } = useParams();
    const isAddMode = !{ id }.id;
    let navigate = useNavigate();
    const [singleCreditsDetail, setSingleCreditsDetail]=useState([]);
    const [curr,setcurr]=useState('');
    const [Start,setStart]=useState('');
    const [End,setEnd]=useState('');
    const [getNumberformatA,setNumberformatA]=useState("");
    const [getNumberformatB,setNumberformatB]=useState("");
    const [getNumberformatC,setNumberformatC]=useState("");
    const [getNumberformatD,setNumberformatD]=useState("");



    const addPlanSubmit = async(event) => {
        event.preventDefault();
        const form = event.currentTarget;
        if (form.checkValidity() === false) {
            event.stopPropagation();
        }
        setValidated(true);


        
        if (event.target.ACC_ID != null) {
        var bodyFormData = new FormData(event.target);
        var object = {};
        bodyFormData.forEach(function(value, key){
            object[key] = value;
        });
        var json = JSON.stringify(object);

        
        await axios({
            method: "post",
            url: `${config}api/addCredits`,
            data: json,
            headers: {
                'Content-Type': 'application/json'
              },
        }).then((response) => {
            //console.log(response.data)
            if (response.data.success === "true") {
                navigate("/myorder");

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
    }else{
        var bodyFormData = new FormData(event.target);
        bodyFormData.append("ACC_ID",JSON.parse(localStorage.getItem("Uid")));
        var object = {};
        bodyFormData.forEach(function(value, key){
            object[key] = value;
        });
        var json = JSON.stringify(object);
        await axios({
            method: "post",
            url: `${config}api/updateCredits`,
            data: json,
            headers: {
                'Content-Type': 'application/json'
              },
        }).then((response) => {
            //console.log(response.data)
            if (response.data.success === "true") {
                navigate("/myorder");

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
        }
    }
    useEffect(()=>{
        axios.post(`${config}api/singleCreditsDetail`, {ID:{ id }}).then((response) => {
        

            if (response.data.success === "true") {
            //   const date=new Date(response.data.data[0].DATE_BEGIN).toISOString().slice(0, 10).replace('T', ' ');
            //   console.log(date)
               setSingleCreditsDetail(response.data.data[0]);
               setcurr(response.data.data[0].CURRENCY);
               setStart(new Date(response.data.data[0].DATE_BEGIN).toISOString().slice(0, 10).replace('T', ' '));
               setEnd(new Date(response.data.data[0].DATE_END).toISOString().slice(0, 10).replace('T', ' '));
            }
        });
    },[]);
   const changeCurrency =(e)=>{
       setcurr(e.target.value);
   }
   const changeStartval=(e)=>{
       setStart(e.target.value);
   }
   const changeEndval=(e)=>{
       setEnd(e.target.value);
   }
//    const commaSeparators = num => num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
//alert( singleCreditsDetail.ACC_ID);
// const commaSeparators = num => {
//     let numParts = num.toString().split('.');
//     numParts[0] = numParts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ',');
//      setnumber(numParts.join('.'));
//   };
useEffect(()=>{
    function updateTextView(_obj){
        var num = getNumber(_obj.val());
        if(num==0){
          _obj.val('');
        }else{
          _obj.val(num.toLocaleString());
        }
      }
      function getNumber(_str){
        var arr = _str.split('');
        var out = new Array();
        for(var cnt=0;cnt<arr.length;cnt++){
          if(isNaN(arr[cnt])==false){
            out.push(arr[cnt]);
          }
        }
        return Number(out.join(''));
      }
      
        $('input[type=number]').on('keyup',function(){
          updateTextView($(this));
        },[]);
})
  
 const saleAchangeformate=(e)=>{
     const formatenumber=formatenumberfunction(e.target.value);
    // console.log(formatenumber);
    setNumberformatA(formatenumber);
 }
 const saleBchangeformate=(e)=>{
    const formatenumber=formatenumberfunction(e.target.value);
   console.log(formatenumber +"  b");
   setNumberformatB(formatenumber);
}
const saleCchangeformate=(e)=>{
    const formatenumber=formatenumberfunction(e.target.value);
  console.log(formatenumber +"  c");
   setNumberformatC(formatenumber);
}
const saleDchangeformate=(e)=>{
    const formatenumber=formatenumberfunction(e.target.value);
   console.log(formatenumber +"  d");
   setNumberformatD(formatenumber);
}

function formatenumberfunction(e) {
    if(!e) return e;
    const curnumber = e.replace(/[^\d]/g,'');
    const curnumberlenght=curnumber.length
    var lastThree = curnumber.substring(curnumberlenght-3);
    var otherNumbers = curnumber.substring(0,curnumberlenght-3);
    if(otherNumbers != '')
        lastThree = '.' + lastThree;
    var res = otherNumbers.replace(/\B(?=(\d{2})+(?!\d))/g, ".") + lastThree;
    return res;

    
}

    return (
        <div>
            <div className="page-wrapper" style={{ minHeight: 250 }}>
                <div className="page-breadcrumb bg-white">
                    <div className="row align-items-center">
                        <div className="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                            <h4 className="page-title"> {isAddMode ? 'Add ' : 'Edit '} Credit details </h4>
                        </div>
                        <div className="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                            <div className="d-md-flex">
                                <ol className="breadcrumb ms-auto">
                                    <li><Link to="/AddEditCredit" className="fw-normal">{isAddMode ? 'Add ' : 'Edit '} Credit details </Link></li>
                                </ol>
                            </div>
                        </div>
                    </div>

                </div>

                <div className="container-fluid">
                    <div className="customer-type-main-area">
                        <div className="container">
                            <Form noValidate validated={validated} onSubmit={addPlanSubmit} >
                                <div className="row">

                                    <div className="col-lg-6">
                                        <div className="last-credits-main-area">
                                            <div className="form-group">
                                                <label htmlFor="css">Price</label>
                                                <input className="form-control" type="number"  placeholder="Optional amount" name="price" defaultValue={{ id }.id ?singleCreditsDetail.PRICE:""} required />
                                                <Form.Control.Feedback type="invalid">
                                                    Please provide a  Price.
                                                </Form.Control.Feedback>
                                            </div>
                                        </div>
                                    </div>
                                    <div className="col-lg-6">
                                        <div className="last-credits-main-area">
                                            <div className="form-group">
                                                <label htmlFor="css">Currency</label>
                                                <select className="form-control" name="currency" value={curr} onChange={changeCurrency} required>
                                                    <option value="" disabled selected >Select Currency</option>
                                                    <option value="COP">COP</option>
                                                    <option value="USD">USD</option>
                                                    <option value="EUR">EUR</option>
                                                    <option value="MXN">MXN</option>
                                                </select>
                                                <Form.Control.Feedback type="invalid">
                                                    Please select Currency type.
                                                </Form.Control.Feedback>
                                            </div>
                                        </div>
                                    </div>
                                    <div className="col-lg-4">
                                        <div className="select-date-heading-area">
                                            <h1>Select Dates</h1>
                                        </div>
                                    </div>
                                    <div className="col-lg-4">
                                        <div className="select-date-option-area">
                                            <div className="form-group">
                                                <label htmlFor="html">Date Begin </label>
                                                <input className="form-control" type="date"  name="dateBegin" value={Start} onChange={changeStartval}  required/>                                                <Form.Control.Feedback type="invalid">
                                                    Please provide a  Begin date.
                                                </Form.Control.Feedback>
                                            </div>
                                        </div>
                                    </div>
                                    <div className="col-lg-4">
                                        <div className="select-date-option-area">
                                            <div className="form-group">
                                                <label htmlFor="html">Date End</label>
                                                <input className="form-control" type="date"   name="dateend"  value={End} onChange={changeEndval} required />
                                                <Form.Control.Feedback type="invalid">
                                                    Please provide a  end date.
                                                </Form.Control.Feedback>
                                            </div>
                                        </div>
                                    </div>
                                    <div className="col-lg-4">
                                        <div className="my-order-list-area">
                                            <h2>My Orders</h2>
                                            <h3>Constancies</h3>
                                            <h3>Diplomas</h3>
                                            <h3>Badges</h3>
                                            <h3>Contracts</h3>
                                        </div>
                                    </div>
                                    <div className="col-lg-4">
                                        <div className="spent-total-area">
                                            <h2>Sale Price</h2>
                                            <div className="form-group">
                                                <input type="text" className="form-control" name="saleA" placeholder="Enter" onChange={e=>saleAchangeformate(e)}  value={{ id }.id ?(getNumberformatA=="")?singleCreditsDetail.TYPE_A:getNumberformatA:getNumberformatA} autoFocus required id="#" />
                                                <Form.Control.Feedback type="invalid">
                                                    Please provide a  Price.
                                                </Form.Control.Feedback>
                                            </div>
                                            <div className="form-group">
                                                <input type="text" className="form-control" name="saleB" placeholder="Enter" onChange={e=>saleBchangeformate(e)}  value={{ id }.id ?(getNumberformatB=="")?singleCreditsDetail.TYPE_B:getNumberformatB:getNumberformatB} autoFocus required/>
                                                <Form.Control.Feedback type="invalid">
                                                    Please provide a  Price.
                                                </Form.Control.Feedback>
                                            </div>
                                            <div className="form-group">
                                                <input type="text" className="form-control" name="saleC" placeholder="Enter" onChange={e=>saleCchangeformate(e)}  value={{ id }.id ?(getNumberformatC=="")?singleCreditsDetail.TYPE_C:getNumberformatC:getNumberformatC} autoFocus required />
                                                <Form.Control.Feedback type="invalid">
                                                    Please provide a  Price.
                                                </Form.Control.Feedback>
                                            </div>
                                            <div className="form-group">
                                                <input type="text" className="form-control" name="saleD" placeholder="Enter" onChange={e=>saleDchangeformate(e)} value={{ id }.id ?(getNumberformatD =="")?singleCreditsDetail.TYPE_D:getNumberformatD:getNumberformatD} autoFocus required />
                                                <Form.Control.Feedback type="invalid">
                                                    Please provide a  Price.
                                                </Form.Control.Feedback>
                                            </div>
                                        </div>
                                    </div>
                                    <div className="col-lg-4">
                                        <div className="spent-total-area">
                                            <h2>Number</h2>
                                            <div className="form-group">
                                                <input type="text" className="form-control" name="NumberA" placeholder="Enter" autoFocus required defaultValue={{ id }.id ?singleCreditsDetail.TYPE_A_PRICE:""} />
                                                <Form.Control.Feedback type="invalid">
                                                    Please provide a  Price.
                                                </Form.Control.Feedback>
                                            </div>
                                            <div className="form-group">
                                                <input type="text" className="form-control" name="NumberB" placeholder="Enter" autoFocus required defaultValue={{ id }.id ?singleCreditsDetail.TYPE_B_PRICE:""} />
                                                <Form.Control.Feedback type="invalid">
                                                    Please provide a  Price.
                                                </Form.Control.Feedback>
                                            </div>
                                            <div className="form-group">
                                                <input type="text" className="form-control" name="NumberC" placeholder="Enter" autoFocus required defaultValue={{ id }.id ?singleCreditsDetail.TYPE_C_PRICE:""} />
                                                <Form.Control.Feedback type="invalid">
                                                    Please provide a  Price.
                                                </Form.Control.Feedback>
                                            </div>
                                            <div className="form-group">
                                                <input type="text" className="form-control" name="NumberD" placeholder="Enter" autoFocus required defaultValue={{ id }.id ?singleCreditsDetail.TYPE_D_PRICE:""}/>
                                                <Form.Control.Feedback type="invalid">
                                                    Please provide a  Price.
                                                </Form.Control.Feedback>
                                            </div>
                                        </div>
                                    </div>
                                    <div className="col-lg-12">
                                        <div className="comment-write-main-area">
                                            <div className="form-group">
                                                <label>Comments</label>
                                                <textarea className="form-control" placeholder="Enter Message  " name="comment" defaultValue={{ id }.id ?singleCreditsDetail.COMMENTS:""}  required></textarea>
                                                <Form.Control.Feedback type="invalid">
                                                    Please provide a  Comments.
                                                </Form.Control.Feedback>
                                            </div>
                                        </div>
                                    </div>
                                    {

                                 { id }.id ? <input type="hidden" name='ID_PLAN'defaultValue={{ id }.id ?singleCreditsDetail.ID_PLAN_PURCHASE:""}  /> :<input type="hidden" name='ACC_ID' defaultValue={JSON.parse(localStorage.getItem("Uid"))} />
                                          } 
                                      <div className="col-lg-12">
                                        <div className="customer-type-sbt-btn">
                                        <Button className="m-3 customer-sbt-btn" variant="outline-danger" defaultValue={{ id }.id ? "update" : "save"} type="submit">
                                        {{ id }.id ? "update" : "Submit"}
                                    </Button>
                                        </div>
                                    </div>

                                </div>
                            </Form>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    )
}

export default PlanPurchase
