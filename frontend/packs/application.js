import React from 'react'
import ReactDOM from 'react-dom'

const FirstComponent = () => (
  <div>Hello Webpacker!</div>
)

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <FirstComponent/>,
    document.body.appendChild(document.createElement('div')),
  )
})
