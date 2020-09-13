import React from "react"
import {
  BrowserRouter as Router,
  Switch,
  Route,
  Link
} from "react-router-dom"
import Home from 'pages/Home'
import Product from 'pages/Product'
import Signup from 'pages/Signup'
import Signin from 'pages/Signin'
import Payment from 'pages/Payment'
import Thankyou from 'pages/Thankyou'
import MyPage from 'pages/MyPage'
import NotFound from 'pages/NotFound'

export default function App() {
  return (
    <Router>
      <Switch>
        <Route exact path="/" component={Home}/>
        <Route path="/products/:id" component={Product}/>
        <Route path="/signup" component={Signup}/>
        <Route path="/signin" component={Signin}/>
        <Route path="/payment" component={Payment}/>
        <Route path="/thankyou" component={Thankyou}/>
        <Route path="/mypage" component={MyPage}/>
        <Route component={NotFound}/>
      </Switch>
    </Router>
  )
}
