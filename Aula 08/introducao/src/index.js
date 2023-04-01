import React from "react";
import ReactDOM from "react-dom";
import './styles.css'
// JSX: JavaScript Extension (XML)
const App = () =>{
    const EstiloBotao = {marginTop:12, paddingBottom:8,paddingTop:8, backgroundColor: "blueviolet",color: "white",border:"none", width: "100%", borderRadius: 8}

    const TextoRotulo = 'Nome'
    const obterTextoBotao = ()=> "Enviar" 
    const onClique = () => alert('Click')
    return(
        <div style={{
        margin: "auto",
        width: 768,
        backgroundColor: "#EEE",
        padding: 12,
        borderRadius: 8}}>
            <label htmlFor="nome" style={{
                dispay: "block",
                marginBottom: 4,
                }}>
                    {TextoRotulo}
            </label>
            <input 
                type="text" 
                id="nome" 
                style={{paddingTop: 8,paddingBottom: 8, borderStyle: "hidden", outline: "none", width: "100%", borderRadius: 8,boxSizing: 'border-box'}}/>
            <button 
            onClick = {onClique}
            style={EstiloBotao}>
                {obterTextoBotao()}
            </button>

            
        </div>
    )
}

ReactDOM.render(
    <App />,
    document.querySelector('#root')
)