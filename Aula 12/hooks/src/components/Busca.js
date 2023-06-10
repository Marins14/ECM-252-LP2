import React, { useState, useEffect } from 'react'
import { InputText } from 'primereact/inputtext'
import axios from 'axios'
import {Button} from 'primereact/button'
//import striptags from 'striptags'
const Busca = () => {
    const [termoDeBusca, setTermoDeBusca] = useState('Java')
    const [resultados, setResultados] = useState([])
    console.log(resultados)
    useEffect(()=>{
        const fazBusca = async () => {
            const {data} = await axios.get(
                'https://en.wikipedia.org/w/api.php',{
                    params: {
                        action: 'query',
                        list: 'search',
                        format: 'json',
                        origin: '*',
                        srsearch: termoDeBusca
                    }
                }
            ) 
            setResultados(data.query.search)
        }
        if (termoDeBusca)
            fazBusca()
    },[termoDeBusca])
  return (
    <div>
        <span className="p-input-icon-left">
            <i className="pi pi-search"></i>
            <InputText
                onChange={(e)=>setTermoDeBusca(e.target.value)} />
        </span>
        {
            resultados.map(resultado => (
                <div key={resultado.pageid} className='my-2 border border-1 border-400'>
                    <div className='border-bottom border border-1 border-400 p- text-center font-bold'>
                        {resultado.title}
                        <span>
                            <Button
                            icon="pi pi-send"
                            className='ml-2 p-button-rounded p-button-secondary'
                            onClick={()=>window.open(
                                `https://en.wikipedia.org?curid=${resultado.pageid}`
                            )}
                            />
                        </span>
                        <div className="p-2">
                            {/* {striptags(resultado.snippet)} */}
                            <span dangerouslySetInnerHTML={{__html: resultado.snippet}}></span>
                        </div>
                    </div>
                </div>
            ))
        }
    </div>
  )
}

export default Busca