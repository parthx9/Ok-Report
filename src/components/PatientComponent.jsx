import React, { Component } from 'react';

class Patient extends Component{
    render(){
        return(
            <div className='containing'>
                <div className='row'>
                    <form>
                        <input className='form-control search' type='text' value='Search'></input>
                    </form>
                </div>
                <div className='row pb-4 pt-4'>
                    <div className='col-6'>
                        <div className='card'>
                            <div className='card-body'>

                            </div>
                        </div>
                    </div>
                    <div className='col-6'>
                        <div className='card'>
                            <div className='card-body'>

                            </div>
                        </div>
                    </div>
                </div>
                <div className='row pb-4'>
                    <div className='col-6'>
                        <div className='card'>
                            <div className='card-body'>

                            </div>
                        </div>
                    </div>
                    <div className='col-6'>
                        <div className='card'>
                            <div className='card-body'>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        )
    }
}

export default Patient