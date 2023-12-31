"use client";
import clsx from 'clsx';
import React, { useState,useEffect  } from 'react'
export default function Home() {
  const[choice,setChoice] = useState("Volunteer");
  return (
<div className="w-full mx-auto h-screen grid grid-cols-2">
    <div className="container px-20 py-24 mx-auto w-full">
        <h1 className="text-xl py-4 px-10 font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white">
                  Sign up to create an account
              </h1>
      <div className = "px-10 content-center" >
      <button type="button" onClick={() =>setChoice("Volunteer")} className={clsx("border border-gray-900px-4 p-4 text-sm font-large text-gray-900 ", choice == "Volunteer" && 'bg-red-600 text-white')}>
    Volunteer
  </button>
  <button type="button"  onClick={() =>setChoice("Organization")} className={clsx("border border-gray-900px-4 p-4 text-sm font-large text-gray-900 ", choice == "Organization" && 'bg-red-600 text-white')}>
    Organization
  </button>
      </div>
      
<form className='w-full px-10 max-w-screen-md'>
  <div className="mb-6 mt-8">
    <label className="block mb-2 text-sm font-medium text-gray-900 dark:text-white">{choice} Name</label>
    <input type="text" id="large-input" className="block w-full px-4 h-11 text-gray-900 border border-gray-400 rounded-lg bg-gray-50 sm:text-md focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"></input>
  </div>
  <div className="mb-6">
    <label  className="block mb-2 text-sm font-medium text-gray-900 dark:text-white">{choice} email</label>
    <input type="text" id="large-input" className="block w-full px-4 h-11 text-gray-900 border border-gray-400 rounded-lg bg-gray-50 sm:text-md focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"></input>
  
    </div>
    <div className="mb-6 mt-8">
    <label className="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Password</label>
    <input type="text" id="large-input" className="block w-full px-4 h-11 text-gray-900 border border-gray-400 rounded-lg bg-gray-50 sm:text-md focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"></input>
  </div>
  <div className="mb-6 mt-8">
    <label className="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Confirm</label>
    <input type="text" id="large-input" className="block w-full px-4 h-11 text-gray-900 border border-gray-400 rounded-lg bg-gray-50 sm:text-md focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"></input>
  </div>

  <div className="flex items-start mb-6">
    <div className="flex items-center h-5">
     </div>
  </div>
  
  <button type="submit" className="text-white bg-red-600 hover:bg-red-900 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Submit</button>
  <div className=" mt-2 mr-1 flex items-center justify-left">
    Already have an account? Sign in
    <a href="/login" className="ml-1 text-red-600">
  here
</a>
    </div>
</form>
</div>
<div className="overflow-hidden" >
<img className="w-full overflow-clip" src={"https://images.unsplash.com/photo-1616680213669-92c78de95f38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzZ8fHZvbHVudGVlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"} />

</div>

   
    </div>
  )
}
