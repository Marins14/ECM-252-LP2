import React from 'react'
import Imagem from './Imagem'
const ListaImagem = ({pics}) => {
  return (
    pics.map((pic)=>{
        return(
            <Imagem
            url = {pic.src.small}
            alt = {pic.alt}
            />
        )
    })
  )
}

export default ListaImagem