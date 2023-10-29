*** Settings ***
Resource        ./base.robot
Variables       homepage-locator.yaml

*** Keywords ***
Click Button Sign In
    Click Element    //android.widget.Button[@resource-id="com.example.myapplication:id/login"]

Fill Username
    Wait Until Element Is Visible       //android.widget.TextView[@resource-id="com.example.myapplication:id/textView2" and @text="Enter username"]
    Click Element    //android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    Input Text    //android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    text="support@ngendigital.com"

Fill Password
    Wait Until Element Is Visible       //android.widget.TextView[@resource-id="com.example.myapplication:id/textView5" and @text="Enter password"]
    Click Element    //android.widget.EditText[@resource-id="com.example.myapplication:id/password"]
    Input Text    //android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    text="abc123"
    Hide Keyboard

Click Button Login
    Click Element    //android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Fill Invalid Username
    Wait Until Element Is Visible       //android.widget.TextView[@resource-id="com.example.myapplication:id/textView2" and @text="Enter username"]
    Click Element    //android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    Input Text    //android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    text="supportngendigital.com"

Verify Login Failed
    Wait Until Element Is Visible    //android.view.ViewGroup[@resource-id="com.example.myapplication:id/toolbar"]
    
