*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Safari
${LETSKODEIT_URL}        https://www.letskodeit.com/practice

*** Test Cases ***
Open Letskodeit
    Open Browser    ${LETSKODEIT_URL}    ${BROWSER}
    Maximize Browser Window
    Sleep           3
    Radio Button Should Not Be Selected    cars
    Select Radio Button    cars    bmw
    Sleep           1
    Radio Button Should Be Set To    cars   bmw
    Log   BMW Radio button is selected 
    Select Radio Button    cars    benz
    Sleep           1
    Radio Button Should Be Set To    cars   benz
    Log   Benz Radio button is selected
    Select Radio Button    cars    honda
    Sleep           1
    Radio Button Should Be Set To    cars   honda
    Log   Honda Radio button is selected
    Close Browser

Test Checkbox
    Open Browser    ${LETSKODEIT_URL}    ${BROWSER}
    Maximize Browser Window
    Sleep           3
    Checkbox Should Not Be Selected    id=bmwcheck
    Click Element    id=bmwcheck
    Checkbox Should Be Selected    id=bmwcheck
    Log   BMW Checkbox is selected
    Sleep           1
    Unselect Checkbox    id=bmwcheck
    Checkbox Should Not Be Selected    id=bmwcheck
    Log    BMW Checkbox is unselected
    Checkbox Should Not Be Selected    id=benzcheck
    Click Element    id=benzcheck
    Checkbox Should Be Selected    id=benzcheck
    Log   Benz Checkbox is selected
    Sleep           1
    Unselect Checkbox    id=benzcheck
    Checkbox Should Not Be Selected    id=benzcheck
    Log    Benz Checkbox is unselected
    Checkbox Should Not Be Selected    id=hondacheck
    Click Element    id=hondacheck
    Checkbox Should Be Selected    id=hondacheck
    Log   Honda Checkbox is selected
    Sleep           1
    Unselect Checkbox    id=hondacheck
    Checkbox Should Not Be Selected    id=hondacheck
    Log    Honda Checkbox is unselected
    ${Checkbox_Count}   Get Element Count    //input[@type="checkbox" and @name="cars"]
    Should Be True    ${Checkbox_Count}==3
    Close Browser

Test Dropdown
    Open Browser    ${LETSKODEIT_URL}    ${BROWSER}
    Maximize Browser Window
    Sleep           3
    Select From List By Value    id=carselect    benz
    Sleep           1
    Log   Benz is selected from the list
    Select From List By Index    id=carselect    2
    Sleep           1
    Log   Honda is selected from the list
    Close Browser
