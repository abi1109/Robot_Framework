*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Headlesschrome
${SAUCE_URL}        https://www.saucedemo.com/
${CHROME_URL}        https://www.google.com/

*** Test Cases ***
Open Google
    Open Browser    ${CHROME_URL}    ${BROWSER}
    Sleep           3 seconds
    Close Browser

Open SauceDemo
    Open Browser    ${SAUCE_URL}    ${BROWSER}
    Sleep           3 seconds
    Close Browser
