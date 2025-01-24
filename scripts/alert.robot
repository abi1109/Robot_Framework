***Settings**

Library        SeleniumLibrary
Library        Collections
Variables        ../Locators/herokoo.py
Library        support.py


*** Variables ***
${BROWSER}        chrome

*** Test Cases ***
Open HerokupaaAlert
    ${url} =    support.read_xml    herokuappurl
    ${ALERT_TEXT}=    support.Read Xml    alerttext
    Open Browser    ${url}   ${BROWSER}
    Maximize Browser Window
    Sleep         2
    Click Element        ${java_alert}
    Sleep         3
    Click Element        ${JavascriptButton}
    ${Text}=        Handle Alert
    Sleep         5
    Click Element        ${Js_confirm}
    Sleep         3
    ${Text}=    Handle Alert    action=DISMISS
    Click Element        ${Js_prompt}
    Sleep         3
    Input Text Into Alert   ${ALERT_TEXT}
    Sleep        3
    Close Browser

Window handling
    ${URL}=    support.Read Xml    applicationurl1
    Open Browser    ${URL}    ${BROWSER}
    Sleep    2
    Click Element    ${Open_window}
    Sleep    3
    ${win}=    Get Window Handles
    Switch Window    ${win}[1]
    Element Should Be Visible        //a[text() ='Sign In']
    Click Element        //a[text() ='Sign In']
    Sleep    3
    Close Window
    Switch Window    ${win}[0]
    Sleep    3
    Element Should Be Visible    ${Open_window}
    ${classname}=    Get Element Attribute    //button[@id = 'openwindow']    class
    Log   ${classname}
    Close Browser


