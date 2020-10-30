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
            </div>
        )
    }
}

export default Home