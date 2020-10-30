import { NavLink } from 'react-router-dom';
import React, { Component } from 'react';



class Nav extends Component{
    constructor(props){
        super(props)

        this.state = {
            coronaData : [],
            isLoading : true,
            name: null,
            location: null
        }

        this.registerPatientHandler = this.registerPatientHandler.bind(this);
        this.handleLocationChange = this.handleLocationChange.bind(this);
        this.handleNameChange = this.handleNameChange.bind(this)

    }

    registerPatientHandler(e){
        var myHeaders = new Headers();
        myHeaders.append("Authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI1ZjljM2FlNmI2YTA1ZTJjMjlkYzNjZmEiLCJleHBpcmVzSW4iOjM2MDAwMCwiaWF0IjoxNjA0MDc4OTY0fQ.pXv8UelRMA9gbtCJlEnPh9ePShCpXQbVkkDcHubkMkY");
        myHeaders.append("Content-Type", "application/json");
    
        var raw = JSON.stringify({name: this.state.name, location: this.state.location});
    
        var requestOptions = {
        method: 'POST',
        headers: myHeaders,
        body: raw,
        redirect: 'follow'
        };
    
        fetch("http://1a3e1467c8df.ngrok.io/api/doctor/createpatient", requestOptions)
        .then(response => response.json())
        .then(result => console.log(result))
        .catch(error => console.log('error', error));

        e.preventDefault();

        this.setState({
            name: '',
            location: ''
        })
        
    }

    handleLocationChange(e){
        this.setState({
            location: e.target.value
        })
        console.log(this.state.location)
    }

    handleNameChange(e){
        this.setState({
            name: e.target.value
        })

        console.log(this.state.name)
    }


    componentDidMount(){
        fetch('https://covid19.mathdro.id/api').then(
            res => res.json()
            .then((data) => {
                this.setState({
                    coronaData: data,
                    isLoading : false
                })
                console.log(this.state.coronaData)
            })
        )
    }
    render(){
        return(
            <>
            <ul class="nav flex-column text-center p-3">
                <div className='navbar-brand'>
                    <p className='brand-name'>OK Report</p>
                </div>
                <div>
                    <button data-toggle="modal" data-target="#registerModal" type="button" className='btn register-patient-btn'>Register Patient <i className='fa pl-2 fa-plus'></i></button>
                </div>
                <li class="nav-item pt-5">
                    <NavLink to='/Home' class="nav-link active"><i className='fas fa-chart-pie pr-2'></i> Dashboard</NavLink>
                </li> 
                <li class="nav-item">
                    <NavLink class="nav-link" to='/Patients'> <i className='fas fa-user-injured'></i>Patients</NavLink>
                </li>
                <li class="nav-item">
                    <a class="nav-link" >Appointments</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" >Messages</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" >Announcements</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" >Schedule</a>
                </li>
                <div className='card corona-card mt-5 text-left p-3'>
                    <h3>Corona Information</h3>
                    <h5><i className='fa fa-world'></i>  World</h5>
                    <h5>Infected: </h5>
                    <h3>{(!this.state.isLoading)? this.state.coronaData.confirmed.value:1}</h3>
                    <h5>Recovered: </h5>
                    <h3>{(!this.state.isLoading)? this.state.coronaData.recovered.value:1}</h3>
                    <h5>Deaths: </h5>
                    <h3>{(!this.state.isLoading)? this.state.coronaData.deaths.value:1}</h3>
                </div>
            </ul>
            <div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div className="modal-content">
                    <div className="modal-header">
                        <h5 className="modal-title" id="exampleModalLabel">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div className="modal-body">
                        <form onSubmit={this.registerPatientHandler}>
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input type="text" className="form-control" id="name" value={this.state.name} onChange={this.handleNameChange} aria-describedby="name" placeholder="Enter name" />
                            </div>
                            <div class="form-group">
                                <label for="location">Location</label>
                                <input type="text" className="form-control" value={this.state.location} onChange={this.handleLocationChange} id="location" placeholder="Location" />
                            </div>
                            <button type="submit" className="btn btn-primary">Submit</button>
                        </form>
                    </div>
                    <div className="modal-footer">
                        <button type="button" className="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" className="btn btn-primary">Save changes</button>
                    </div>
                    </div>
                </div>
            </div>
            </>

        )
    }
}

export default Nav;