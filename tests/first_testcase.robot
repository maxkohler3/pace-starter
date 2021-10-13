*** Settings ***

Documentation           Foundation Cert Practice TC
Library                 QWeb
Suite Setup             Open Browser    about:blank    firefox
Suite Teardown          Close All Browsers

*** Test Cases ***

Test the home page
    [Documentation]     Go to the web shop, and verify that the slogan text appears on the page.
    [Tags]              Home page
    OpenBrowser         ${Browser}      ${URL}         
    GoTo                http://automationpractice.com
    VerifyText          YourLogo
