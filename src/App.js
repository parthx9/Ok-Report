import { BrowserRouter as Router, Switch, Route, Redirect } from "react-router-dom";
import "./App.css";
import PatientComponent from "./components/PatientComponent";
import NavComponent from "./components/NavComponent";
import HomeComponent from "./components/HomeComponent";
import { Component } from "react";

class App extends Component{
  constructor(props){
    super(props)

    this.state = ({
      doctorData : null
    })
  }

  componentDidMount(){
    fetch('http://localhost:8000/api/doctor/getdoctordetails', {
      // 
      method: 'POST', // *GET, POST, PUT, DELETE, etc.
      mode: 'cors', // no-cors, *cors, same-origin
      cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
      credentials: 'same-origin', // include, *same-origin, omit
      headers: {
        'Content-Type': 'application/json'
        // 'Content-Type': 'application/x-www-form-urlencoded',
      },
      redirect: 'follow', // manual, *follow, error
      referrerPolicy: 'no-referrer', // no-referrer, *no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
      body: JSON.stringify({"_id": "5f9e109d3b9867c4c581f227"}) // body data type must match "Content-Type" header
  
    }).then( (data) => data.json())
    .then((data)=> {console.log(data)
    this.setState({
      doctorData : data.doctor
    })})

    
  }

  render(){
    return (
      <>
      <Router>
        <div className="row">
          <div className="col-3 side-navbar">
            {console.log(this.state.doctorData)}
            <NavComponent />
          </div>
          <div className="col-9 main-area">
            {(this.state.doctorData)? (            
            <Switch>
              <Route exact path="/Home">
                <HomeComponent doctorData = {this.state.doctorData} />
              </Route>
              <Route exact path="/Patients" >
                <PatientComponent doctorData = {this.state.doctorData} />
              </Route>
              <Redirect from='/' to='/Home' />
            </Switch>):('Loading...')}
          </div>
        </div>
      </Router>
    </>
    )
  }
}

export default App;
