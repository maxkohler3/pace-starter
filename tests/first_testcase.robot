*** Settings ***

Documentation           Foundation Cert Practice TC
Library                 QWeb
Resource                ../resources/keywords.robot
Resource                ../resources/locators.robot
Suite Setup             
Suite Teardown              

*** Test Cases ***

Test the home page
    [Documentation]     Go to the web shop, and verify that the slogan text appears on the page.
    [Tags]              Home page
    Open Browser         ${Browser}               
    GoTo                ${URL}
    VerifyText          YourLogo
