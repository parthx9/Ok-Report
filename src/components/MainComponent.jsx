import React, { Component } from 'react';
import { Switch, Route } from 'react-router-dom';
import Home from './HomeComponent';
import Nav from './NavComponent';
import Patient from './PatientComponent';

class MainComponent extends Component{
    render(){
        return(
            <div className='row '>
                <div className='col-3 side-navbar'>
                    <Nav />
                </div>
                <div className='col-9 main-area'> 
                    <Switch>
                        <Route path='/Home' component={Home}/>
                        <Route path='/Patients' component={Patient}/>
                    </Switch>
                </div>
            </div>
        )
    }
}

export default MainComponent;