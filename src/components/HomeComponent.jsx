import React, { Component } from 'react';

class Home extends Component {
    render(){
        return(
            <div className='containing'>
                <div className='row'>
                    <form>
                        <input className='form-control search' type='text' value='Search'></input>
                    </form>
                </div>
                <div className='row pt-4 pb-4'>
                    <div className='col-3 '>
                        <div className='card'>
                            <div className='card-body'>
                                <i className='fa fa-car fa-lg p-1'></i>
                            </div>
                        </div>
                    </div>
                    <div className='col-3 '>
                        <div className='card'>
                            <div className='card-body'>
                                <i className='fa fa-car fa-lg p-1'></i>
                            </div>
                        </div>
                    </div>
                    <div className='col-3 '>
                        <div className='card'>
                            <div className='card-body'>
                                <i className='fa fa-car fa-lg p-1'></i>
                            </div>
                        </div>
                    </div>
                    <div className='col-3 '>
                        <div className='card'>
                            <div className='card-body'>
                                <i className='fa fa-car fa-lg p-1'></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='row pb-4 image-area'>
                    <div className='col-12 image-section'>
                        <div className='card'>
                            <div className='card-body'>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='row pb-4 detail-area'>
                    <div className='col-5 pr-2'>
                        <div className='card'>
                            <div className='card-body'>
                            </div>
                        </div>
                    </div>
                    <div className='col-5 pr-2'>
                        <div className='card'>
                            <div className='card-body'>
                            </div>
                        </div>
                    </div>
                    <div className='col-2'>
                        <div className='card'>
                            <div className='card-body'>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='row appointment-area'>
                    <div className='col-12'>
                        <div className='card'>
                            <div className='card-header'>
                                <h5>Appointment Details</h5>
                            </div>
                            <div className='card-body'>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        )
    }
}

export default Home