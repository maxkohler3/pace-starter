*** Settings ***
Documentation            Reusable keywords and variables for CRT training
Library                  QWeb
Library                  String    

*** Variables ***
${BROWSER}               chrome
${URL}                   http://automationpractice.com/

*** Keywords ***
Start Suite             
    OpenBrowser          about:blank    ${BROWSER}
    SetConfig            SearchMode     draw

End suite
    CloseAllBrowsers

