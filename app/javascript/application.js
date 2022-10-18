// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"

import React from 'react';
import ReactDOM from 'react-dom';
import App from './components/App'
import store from "./redux/configureStore";
import { BrowserRouter } from "react-router-dom";
import { Provider } from "react-redux";

const root = ReactDOM.createRoot(document.getElementById('root'))

root.render(
    <BrowserRouter>
    <Provider store={store}>
        <App />
    </Provider>
     
    </BrowserRouter>
  
)




// ReactDOM.render(
//   <App/>,
//   document.getElementById('root'),
// );