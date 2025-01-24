*** Settings ***
Library           SeleniumLibrary
Library          support.py
Variables        ../Locators/Katalon.py

*** Variables ***
${BROWSER}        chrome

*** Test Cases ***
Open Katalon
    ${url} =    support.read_xml    applicationurl
    Open Browser    ${url}   ${BROWSER}
    Maximize Browser Window
    Sleep           3
    Element Should Be Visible    ${katalon_logo}
    Log    Kalaton logo is visible
    Sleep        1
    Close Browser

    