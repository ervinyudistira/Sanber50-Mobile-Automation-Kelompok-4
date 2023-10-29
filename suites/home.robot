*** Settings ***
Resource        ../pageObjects/homePage.robot

*** Test Cases ***
Successfully Open Flight Homepage
    Open Flight Application
    Verify Homepage Appears
    Close Flight Application
    