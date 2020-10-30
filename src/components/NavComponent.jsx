import React, { Component } from 'react';

class Nav extends Component{
    render(){
        return(
            <ul class="nav flex-column text-center pr-3 pl-3">
                <div className='navbar-brand'>
                    <p className='brand-name'>OKREPORT</p>
                </div>
                <div>
                    <button className='btn register-patient-btn'>Register Patient <i className='fa pl-2 fa-plus'></i></button>
                </div>
                <li class="nav-item">
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
            </ul>
        )
    }
}

export default Nav;