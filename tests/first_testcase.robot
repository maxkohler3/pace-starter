*** Settings ***
Documentation           Foundation Cert Practice TC
Library                 QWeb
Resource                ../resources/keywords.robot
Resource                ../resources/locators.robot         

*** Test Cases ***
Test the home page
    [Documentation]     First Exercise
    [Tags]              Training
    OpenBrowser         about:blank    ${BROWSER}               
    GoTo                ${URL}
    VerifyText          YourLogo
