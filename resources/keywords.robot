*** Settings ***
Documentation            Reusable keywords and variables for CRT training
Library                  QWeb
Library                  String    

*** Variables ***
${BROWSER}               chrome
${URL}                   http://automationpractice.com/

*** Keywords ***

Appstate
       [Documentation]         Checks which actions should be taken prior to testing and does them
       [Arguments]             ${state}
       ${state}=               Convert To Lowercase    ${state}
       Run Keyword If           '${state}'=='homepage'
       ...                                 Homepage
       Run Keyword If         '${state}'=='sign in'
       ...                     Sign in

Homepage
         GoTo                   ${URL}
         VerifyText            Automation Practice Website

Sign in
      Homepage
      ${signed_in}=          IsText                 Sign out
      Run Keyword If         ${signed_in}
      ...                    ClickText              Sign out
      ClickText              Sign in
      TypeText               Email address          mdkohler86@gmail.com         Password
      TypeSecret             Password                ${PASSWORD}
      ClickText              Sign in                 Forgot your password?
      VerifyText             Welcome to your account.
      
Start Suite             
    OpenBrowser          about:blank    ${BROWSER}
    SetConfig            SearchMode     draw

End suite
    CloseAllBrowsers