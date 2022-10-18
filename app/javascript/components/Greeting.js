import React from 'react'
import { useEffect } from 'react';
import { useDispatch, useSelector, shallowEqual } from 'react-redux';
import { getGreeting } from '../redux/greetingReducer';

const Greeting = () => {
    const dispatch = useDispatch()
    const greeting = useSelector((state) => state.greetings, shallowEqual);

    useEffect(() => {
        dispatch(getGreeting())
    }, []);
  return (
    <>
     <div>Greeting</div>
     <p>{greeting}</p>
    </>
   
  )
}

export default Greeting