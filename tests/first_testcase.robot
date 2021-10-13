*** Settings ***
    Documentation           Foundation Cert Practice TC
    Resource                ../resources/keywords.robot
    Resource                ../resources/locators.robot         

*** Test Cases ***
Test the home page
    [Documentation]     First Exercise
    [Tags]              Training
    OpenBrowser         ${BROWSER}               
    GoTo                ${URL}
    VerifyText          YourLogo
