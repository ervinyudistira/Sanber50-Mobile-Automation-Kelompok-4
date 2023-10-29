*** Settings ***
Resource        ../pageObjects/signIn.robot

*** Test Cases ***
Sign In success 
    Open Flight Application
    Click Button Sign In
    Fill Username
    Fill Password
    Click Button Login
    Close Flight Application