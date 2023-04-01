import React from 'react'
import ReactDOM from 'react-dom'
import 'bootstrap/dist/css/bootstrap.min.css'
import '@fortawesome/fontawesome-free/css/all.min.css'
import Pedido from './pedido.js'

const App = ()=>(
    <div className='container border rounded mt-2'>
        <div ClassName = 'row border-bottom my-2'>
            <div className = 'col-12'>
                <h1 className = 'display-5 text-center'>Seus pedidos</h1>
            </div>
        </div>
        <div className = 'row'>
            <div className = 'col-12 col-lg-6 col-xxl-4 my-2'>
            <Pedido data="22/04/2023" 
            icone="fas fa-ghost fa 2x"
            titulo = "SSD"
            descricao = "SSD Kinsgton A400 - SATA"  />
            </div>
            <div className = 'col-12 col-lg-6 col-xxl-4 my-2'>
            <Pedido data="23/04/2023" 
            icone="fas fa-book fa 2x"
            titulo = "Livro"
            descricao = "Concrete Mathematics - Donald Knuth"  />
            </div>
            <div className = 'col-12 col-lg-6 col-xxl-4 my-2'>
            <Pedido data="26/04/2023" 
            icone="fas fa-laptop fa 2x"
            titulo = "Laptop"
            descricao = "Notebook DELL - 8gb - 256GB"  /> 
            </div>
        </div>
    </div>
)

ReactDOM.render(
    <App />, 
        document.querySelector('#root'))