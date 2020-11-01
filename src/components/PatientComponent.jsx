import React, { Component } from 'react';






class Patient extends Component{
    constructor(props){
        super(props)

        this.state = ({
            doctorData : this.props.doctorData
        })
    }


 


    componentDidMount(){
    }

    render(){
        const getPatients=(
            this.state.doctorData.patientDetails.map(patient => {
                return(
                <div className='col-6 mt-4'>
                    <div className='card'>
                        <div className='card-body'>
                            {patient.name}
                            {console.log(patient.name)}
                        </div>
                    </div>
                </div>
                )
                // <PatientDetails patientdetail= {patient}/>
                console.log(patient.name)
            })
        )
        return(
            <div className='containing'>
                <div className='row pb-4'>
                    <form>
                        <input className='form-control search' type='text' value='Search'></input>
                    </form>
                </div>
                <div className='row'>
                    {getPatients}
                    {console.log(this.state.doctorData)}
                </div>
            </div>
        )
    }
}

export default Patient