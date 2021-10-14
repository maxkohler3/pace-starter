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
    TypeText            Email address    mdkohler86@gmail.com    Password
    TypeSecret          Password         ${PASSWORD}
    ClickText           Sign in          Forgot your password?
    
Test the home page
    [Documentation]     First Exercise
    [Tags]              Training
    OpenBrowser         about:blank    ${BROWSER}               
    GoTo                ${URL}
    VerifyText          Specials
        

Add product to shopping cart and cancel
    [Documentation]    User is able to add product to shopping cart and cancel         
    [Tags]             Shopping cart
    Appstate           Sign in
    ClickText          Dresses
    ClickText          Printed Dresses
    ClickElement       ${icon_plus} 
    DropDown           Size            M
    ClickText          Add to cart
    VerifyText         Product Successfully added to your shopping cart     
    VerifyText         There are 2 items in your shopping cart.
    ClickText          Proceed to checkout
    VerifyText         Size : M
    ClickItem          Delete
    VerifyText         Your shopping cart is empty.
    ClickItem          Return to Home
    VerifyNoItem       Return to Home
    ClickText          Sign out
