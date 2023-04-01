import React from 'react'
import ReactDOM from 'react-dom'
import 'bootstrap/dist/css/bootstrap.min.css'
import '@fortawesome/fontawesome-free/css/all.min.css'

const App = ()=>(
    <div className='container border rounded mt-2'>
        <div ClassName = 'row border-bottom my-2'>
            <div className = 'col-12'>
                <h1 className = 'display-5 text-center'>Seus pedidos</h1>
            </div>
        </div>
        <div className = 'row'>
            <div className = 'col-12 col-lg-6 col-xxl-4 my-2'>
                <div className="card">
                    <div className="card-header text-muted">22/04/2023</div>
                    <div className="card-body d-flex">
                        <div className="d-flex align-items-center">
                            <i className="fas fa-ghost fa-2x"></i>
                        </div>
                        <div className="flex-grown-1 ms-2 border">
                            <h4 className="text-center">SSD</h4>
                            <p className="text-center">SSD-Kingston A400 -SATA</p>
                        </div>
                    </div>

                </div>
            </div>
            <div className = 'col-12 col-lg-6 col-xxl-4 my-2'>
            <div className="card">
                    <div className="card-header text-muted">26/04/2023</div>
                    <div className="card-body d-flex">
                        <div className="d-flex align-items-center">
                            <i className="fas fa-book fa-2x"></i>
                        </div>
                        <div className="flex-grown-1 ms-2 border">
                            <h4 className="text-center">Livro</h4>
                            <p className="text-center">Concrete Mathematics - Donald Knuth</p>
                        </div>
                    </div>

                </div>
            </div>
            <div className = 'col-12 col-lg-6 col-xxl-4 my-2'>
            <div className="card">
                    <div className="card-header text-muted">27/04/2023</div>
                    <div className="card-body d-flex">
                        <div className="d-flex align-items-center">
                            <i className="fas fa-laptop fa-2x"></i>
                        </div>
                        <div className="flex-grown-1 ms-2 border">
                            <h4 className="text-center">Notebook</h4>
                            <p className="text-center">Dell - 8GB -256GB </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
)

ReactDOM.render(
    <App />, 
        document.querySelector('#root'))