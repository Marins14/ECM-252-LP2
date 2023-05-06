import React, {useState} from 'react'
import {InputText} from 'primereact/inputtext'
import { Button} from 'primereact/button'

const busca = (props) => {
      // const lista = useState('')
    // const termoDeBusca = lista[0]
    // const setTermodeBusca = lista[1] 
    const [termoDeBusca, setTermodeBusca] = useState('') 
  return(
    <div className="flex flex-column">
        <span className="p-input-icon-left w-full">
            <i className="pi pi-search">
                <InputText
                 className='w-full'
                 placeholder={props.dica}
                 />
            </i>
        </span>
        <Button
          label='OK'
          className='p-button-outlined mt-2'/>
    </div>
  )
}

busca.defaultProps = {
    dica: 'Digite algo q deseja ver....'
}

export default busca