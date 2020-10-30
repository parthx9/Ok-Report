import { getDefaultNormalizer } from '@testing-library/react';
import React, { Component } from 'react';



class Nav extends Component{
    constructor(props){
        super(props)

        this.state = {
            coronaData : [],
            isLoading : true
        }
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
            <ul class="nav flex-column text-center p-3">
                <div className='navbar-brand'>
                    <p className='brand-name'>OK Report</p>
                </div>
                <div>
                    <button className='btn register-patient-btn'>Register Patient <i className='fa pl-2 fa-plus'></i></button>
                </div>
                <li class="nav-item pt-5">
                    <a class="nav-link active"><i className='fas fa-chart-pie pr-2'></i> Dashboard</a>
                </li> 
                <li class="nav-item">
                    <a class="nav-link" > <i className='fas fa-user-injured'></i>Patients</a>
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

        )
    }
}

export default Nav;