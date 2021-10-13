#*** Settings ***
Documentation            Reusable keywords and variables for CRT training
Library                  QWeb
Library                  String    

*** Variables ***
${Browser}               firefox
${URL}                   http://automationpractice.com/
${Email}                 maxdkohler@gmail.com

#*** Keywords ***
AppState
    [Documentation]
    [Arguments]
    ${state}=
    Run Keyword If
    ...
    Run Keyword If
    ...

Homepage
    GoTo    ${Home}