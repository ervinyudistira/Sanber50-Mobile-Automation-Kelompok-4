*** Settings ***
Variables                            signInPage-locators.yaml
Resource                             ../base/base.robot

*** Keywords ***

Verify Sign In Page Appears
    Wait Until Element Is Visible    ${appLogo2}
    Wait Until Element Is Visible    ${signOutButton4}

Open Application    
        ${APP_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP_PATH}

Wait Until Element Is Visible    
        ${Logout Button Locator}    timeout=30 seconds

Click Element    
        ${Logout Button Locator}

Wait Until Element Is Visible    
        ${Confirm Logout Button Locator}    timeout=30 seconds

Click Element    
        ${Confirm Logout Button Locator}

Wait Until Element Is Visible    
        ${Login Button Locator}    timeout=30 seconds
Close Application
