*** Settings ***
Documentation           Foundation Cert Practice TC
Library                 QWeb
Resource                ../resources/keywords.robot
Resource                ../resources/locators.robot         

*** Test Cases ***
Sign In
    [Documentation]     Second Exercise
    [Tags]              Training
    OpenBrowser         ${Browser}
    GoTo                ${URL}
    ClickText           Sign in
    TypeText            Email address    2    training.qentinel@gmail.com
    TypeText            Password         ${PASSWORD}
    ClickText           Sign in          Forgot your password?
    
Test the home page
    [Documentation]     First Exercise
    [Tags]              Training
    OpenBrowser         about:blank    ${BROWSER}               
    GoTo                ${URL}
    VerifyText        Specials
