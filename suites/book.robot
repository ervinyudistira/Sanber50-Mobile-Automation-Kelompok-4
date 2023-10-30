*** Settings ***
Resource    ../pageObjects/booking/Booking.robot
Resource    ../pageObjects/base.robot
Resource    ../pageObjects/homePage.robot
Resource    ../pageObjects/signIn.robot

*** Test Cases ***

Successfully booking flight 
    Open Flight Application
    Click Button Sign In
    Fill Username
    Fill Password
    Click Button Login
    homePage.Verify homePage Appears
    Booking.click booking button
    Booking.waiting book page appears
    Booking.click round trip
    Booking.click from city
    Booking.waiting choose from city appears
    Booking.choose city Toronto
    Booking.click to city
    Booking.waiting choose to city appears
    Booking.choose city otawa
    Booking.choose class
    Booking.waiting choose class appears
    Booking.choose business
    Booking.choose start date
    Booking.waiting choose start date appears
    Booking.choose 1 august
    Booking.choose end date
    Booking.waiting choose end date appears
    Booking.choose 22 august
    Booking.choose flight and hotel
    Booking.click booking
    Booking.wait price page appears
    Booking.choose price
    Booking.click Confirm