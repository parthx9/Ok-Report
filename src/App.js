import { BrowserRouter as Router, Switch, Route } from "react-router-dom";
import "./App.css";
import PatientComponent from "./components/PatientComponent";
import NavComponent from "./components/NavComponent";
import HomeComponent from "./components/HomeComponent";

function App() {
  function Doctor() {
    var myHeaders = new Headers();
    myHeaders.append("Content-Type", "application/json");

    var raw = JSON.stringify({ _id: "5f9c3ae6b6a05e2c29dc3cfa" });

    var requestOptions = {
      method: "POST",
      headers: myHeaders,
      body: raw,
      redirect: "follow",
    };

    fetch(
      "http://88a58535d3d0.ngrok.io/api/doctor/getdoctordetails",
      requestOptions
    )
      .then((response) => response.json())
      // .then((response) => this.setState.doctor(patientDetails:))
      .then((result) => {
        this.setState({ doctor: result.doctor });
      })
      .catch((error) => console.log("error", error));
  }

  return (
    <>
      <Router>
        <div className="row">
          <div className="col-3 side-navbar">
            {" "}
            <NavComponent />
          </div>
          <div className="col-9 main-area">
            <Switch>
              <Route exact path="/Home" component={HomeComponent} />

              <Route exact path="/Patients">
                <PatientComponent doctorData={Doctor()} />
              </Route>
            </Switch>
          </div>
        </div>
      </Router>
    </>
  );
}

export default App;
