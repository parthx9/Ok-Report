import React, { Component } from "react";
import Chart from "react-apexcharts";

class Home extends Component {
  constructor(props) {
    super(props);

    this.state = {
      options: {
        chart: {
          id: "basic-bar",
        },
        xaxis: {
          categories: [1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998],
        },
      },
      series: [
        {
          name: "series-1",
          data: [30, 40, 45, 50, 49, 60, 70, 91],
        },
      ],
      doctor: [],
      arrayLength: 0,
    };
  }
  componentDidMount() {
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
        console.log(result);
        this.setState({ arrayLength: result.doctor.patientDetails.length() });
        this.setState({ doctor: result.doctor });
      })
      .catch((error) => console.log("error", error));
  }

  render() {
    return (
      <div className="containing">
        {console.log(this.state.doctor)}
        <div className="row">
          <form>
            <input
              className="form-control search"
              type="text"
              value="Search"
            ></input>
          </form>
        </div>
        <div className="row pt-4 pb-4 overview-area">
          <div className="col-3 ">
            <div className="card">
              <div className="card-body">
                <div className="row">
                  <div className="col-4">
                    <i className="fa fa-car fa-lg p-1"></i>
                  </div>
                  <div className="col-8">
                    <h6>New Patients</h6>
                    <h4>07</h4>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div className="col-3 ">
            <div className="card">
              <div className="card-body">
                <div className="row">
                  <div className="col-4">
                    <i className="fa fa-car fa-lg p-1"></i>
                  </div>
                  <div className="col-8">
                    <h6>Operations</h6>
                    <h4>09</h4>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div className="col-3 ">
            <div className="card">
              <div className="card-body">
                <div className="row">
                  <div className="col-4">
                    <i className="fa fa-car fa-lg p-1"></i>
                  </div>
                  <div className="col-8">
                    <h6>ICU Beds Vacant</h6>
                    <h4>21</h4>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div className="col-3 ">
            <div className="card">
              <div className="card-body">
                <div className="row">
                  <div className="col-4">
                    <i className="fa fa-car fa-lg p-1"></i>
                  </div>
                  <div className="col-8">
                    <h6>Workload</h6>
                    <h4>21</h4>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div className="row pb-4 image-area">
          <div className="col-12 image-section">
            <div className="card">
              <div className="card-body"></div>
            </div>
          </div>
        </div>
        <div className="row pb-4 detail-area">
          <div className="col-5 pr-2">
            <div className="card">
              <div className="card-body">
                <Chart
                  options={this.state.options}
                  series={this.state.series}
                  type="bar"
                  width="90%"
                  height="100%"
                />
              </div>
            </div>
          </div>
          <div className="col-5 pr-2">
            <div className="card">
              <div className="card-body">
                <Chart
                  options={this.state.options}
                  series={this.state.series}
                  type="bar"
                  width="90%"
                  height="100%"
                />
              </div>
            </div>
          </div>
          <div className="col-2">
            <div className="card">
              <div className="card-body">
                Latest Patient
                {this.state.doctor == null
                  ? null
                  : this.state.doctor.patientDetails.last()}
              </div>
            </div>
          </div>
        </div>
        <div className="row appointment-area">
          <div className="col-12">
            <div className="card">
              <h4 className="p-3">Appointment Details</h4>
              <div className="card-body">
                <table class="table table-striped">
                  <thead>
                    <tr>
                      <th scope="col">Name</th>
                      <th scope="col">E-mail</th>
                      <th scope="col">Date</th>
                      <th scope="col">Visit Time</th>
                      <th scope="col">Medical Assistant</th>
                      <th scope="col">Conditions</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">Parth Arora</th>
                      <td>parth@gmail.com</td>
                      <td>10/10/1000</td>
                      <td>12:00-1:00 PM</td>
                      <td>Mary Smith</td>
                      <td>Mumps</td>
                    </tr>
                    <tr>
                      <th scope="row">Parth Arora</th>
                      <td>parth@gmail.com</td>
                      <td>10/10/1000</td>
                      <td>12:00-1:00 PM</td>
                      <td>Mary Smith</td>
                      <td>Mumps</td>
                    </tr>
                    <tr>
                      <th scope="row">Parth Arora</th>
                      <td>parth@gmail.com</td>
                      <td>10/10/1000</td>
                      <td>12:00-1:00 PM</td>
                      <td>Mary Smith</td>
                      <td>Mumps</td>
                    </tr>
                    <tr>
                      <th scope="row">Parth Arora</th>
                      <td>parth@gmail.com</td>
                      <td>10/10/1000</td>
                      <td>12:00-1:00 PM</td>
                      <td>Mary Smith</td>
                      <td>Mumps</td>
                    </tr>
                    <tr>
                      <th scope="row">Parth Arora</th>
                      <td>parth@gmail.com</td>
                      <td>10/10/1000</td>
                      <td>12:00-1:00 PM</td>
                      <td>Mary Smith</td>
                      <td>Mumps</td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default Home;
