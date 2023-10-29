*** Settings ***
Library            AppiumLibrary

*** Variable ***
${REMOTE_URL}               http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}            Android
${PLATFORM_VERSION}         13
*** Keywords ***
Open Flight Application
    Open Application        ${REMOTE_URL}       
    ...                     platformName=${PLATFORM_NAME}
    ...                     platformVersion=${PLATFORM_VERSION}  
    ...                     deviceName=RMX3472
    ...                     appPackage=com.example.myapplication
    ...                     appActivity=com.example.myapplication.MainActivity
    
Close Flight Application
    Close Application