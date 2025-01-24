***Settings**

Library        SeleniumLibrary
Library        Collections
Variables        ../Locators/herokoo.py
Library        support.py


*** Variables ***
${BROWSER}        chrome

*** Test Cases ***
Open HerokupaaAlert
    ${url} =    support.read_xml    iframeurl
    Open Browser    ${url}   ${BROWSER}
    Maximize Browser Window
    Sleep         2
    Select Frame    id:singleframe
    Input Text    //input[@type='text']    Testing
    Sleep    5
    Unselect Frame

    Close Browser