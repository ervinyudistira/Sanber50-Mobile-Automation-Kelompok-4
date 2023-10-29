*** Settings ***
Resource        ./base.robot
Variables       homepage-locator.yaml

*** Keywords ***
Verify Homepage Appears
    Wait Until Element Is Visible       ${appLogo}
    Wait Until Element Is Visible       ${signInButton}
    Wait Until Element Is Visible       //android.widget.Button[@resource-id="com.example.myapplication:id/button6" and @text="Search"]
    Wait Until Element Is Visible       //android.widget.Button[@resource-id="com.example.myapplication:id/button6" and @text="Check in"]