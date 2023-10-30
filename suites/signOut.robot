*** Settings ***
Resource        ../../pageObjects/base/base.robot
Resource        ../../pageObjects/signOutPage/signOutPage.robot


*** Test Cases ***
Logout Test
    Open Application                         
    Wait Until Element Is Visible       
    Click Element                       
    Wait Until Element Is Visible       
    Click Element                      
    Wait Until Element Is Visible       
    Close Application
