*** Settings ***
Resource        ./base.robot
Variables       homepage-locator.yaml

*** Keywords ***
Verify Homepage Appears
    Wait Until Element Is Visible       ${appLogo}
    Wait Until Element Is Visible       ${signInButton}
    Wait Until Element Is Visible       //android.widget.Button[@resource-id="com.example.myapplication:id/book"]
    

Verify Home login Appears
    Wait Until Element Is Visible       ${appLogo}
    Wait Until Element Is Visible       ${signInButton}