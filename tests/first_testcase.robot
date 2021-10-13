*** Settings ***
Documentation           Foundation Cert Practice TC
Library                 QWeb
Resource                ../resources/keywords.robot
Resource                ../resources/locators.robot
Suite Setup             Start Suite
Suite Teardown          End Suite             

*** Test Cases ***
Sign In
    [Documentation]     Second Exercise
    [Tags]              Training
    OpenBrowser         about:blank    ${Browser}
    GoTo                ${URL}
    ClickText           Sign in
    TypeText            Email address    training.qentinel@gmail.com    Password
    TypeSecret           Password         ${PASSWORD}
    ClickText           Sign in          Forgot your password?
    
Test the home page
    [Documentation]     First Exercise
    [Tags]              Training
    OpenBrowser         about:blank    ${BROWSER}               
    GoTo                ${URL}
    VerifyText          Specials
