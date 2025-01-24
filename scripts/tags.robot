*** Settings ***
Documentation    Tags in Robot Framework
*** Variables ***
*** Test Cases ***
Test Case 7
    [tags]    Smoke
    Log To Console    This is test case 1
Test Case 8
    [tags]    Regression
    Log To Console    This is test case 2
Test Case 9
    [tags]    Regression
    Log To Console    This is test case 3
Test Case 10
    [tags]    Smoke
    Log To Console    This is test case 4
Test Case 11
    [tags]    Sanity
    Log To Console    This is test case 5

Test Case 12
    [tags]    Jayanna
    Log To Console    This is test case 6
*** Keywords ***