*** Settings ***
Resource        ./base.robot
Variables       homepage-locator.yaml

*** Keywords ***
Click Button Sign In
    Click Element    //android.widget.Button[@resource-id="com.example.myapplication:id/login"]

Fill Username
    #Wait Until Element Is Visible       //android.widget.text[@resource-id="com.example.myapplication:id/textView2"]
    #Input Text    //android.widget.Fill[@resource-id="com.example.myapplication:id/username"]   "support@ngendigital.com"
    Input Text    id=com.example.myapplication:id/username  "support@ngendigital.com"
    
    