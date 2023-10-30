*** Settings ***
Resource    ../base.robot

Resource    ../homePage.robot

Resource    ../signIn.robot

Variables    Booking-locator.yaml

*** Keywords ***

click booking button
    Click Element    ${BookButton}

waiting book page appears
    Wait Until Element Is Visible    ${LogoApp}
    Wait Until Element Is Visible    ${OneWay}
    Wait Until Element Is Visible    ${Round}
    Wait Until Element Is Visible    ${FromCity}

click round trip
    Click Element    ${Round}

click from city 
    Click Element    ${FromCity}

waiting choose from city appears 
    Wait Until Element Is Visible    ${ListViewFrom}
    Wait Until Element Is Visible    ${Toronto}
    
choose city Toronto
    Click Element    ${Toronto}

click to city
    Click Element   ${ToCity}

waiting choose to city appears
    Wait Until Element Is Visible    ${ListViewTo}
    Wait Until Element Is Visible    ${Otawa}

choose city otawa 
    Click Element    ${Otawa}

choose class
    Click Element    ${Class}

waiting choose class appears
    Wait Until Element Is Visible    ${ListViewClass}
    Wait Until Element Is Visible    ${Business}

choose business 
    Click Element    ${Business}

choose start date
    Click Element    ${StartDate}

waiting choose start date appears 
    Wait Until Element Is Visible    ${PickStart}
    Wait Until Element Is Visible    ${StartOk}

choose 1 august
    Click Element    ${PickStart}
    Click Element    ${StartOk}

choose end date
    Click Element    ${EndDate}

waiting choose end date appears
    Wait Until Element Is Visible    ${PickEnd}
    Wait Until Element Is Visible    ${EndOK}

choose 22 august
    Click Element    ${PickEnd}
    Click Element    ${EndOK}

choose flight and hotel
    Click Element    ${FlightandHotel}

click booking
    Click Element    ${Booking}

wait price page appears
    Wait Until Element Is Visible    ${StartReturn}
    Wait Until Element Is Visible    ${Price}
    Wait Until Element Is Visible    ${Confirm}

choose price
    Click Element    ${Price}

click Confirm
    Click Element    ${Confirm}
    

