import { BrowserRouter as Router, Switch, Route } from "react-router-dom";
import "./App.css";
import PatientComponent from "./components/PatientComponent";
import NavComponent from "./components/NavComponent";
import HomeComponent from "./components/HomeComponent";

function App() {
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

              <Route exact path="/Patients" component={PatientComponent} />
            </Switch>
          </div>
        </div>
      </Router>
    </>
  );
}

export default App;
