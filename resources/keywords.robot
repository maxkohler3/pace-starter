*** Settings ***
Documentation            Reusable keywords and variables for CRT training
Library                  QWeb
Library                  String    

*** Variables ***
${Browser}               chrome
${Home}                  about.blank
${Email}                 maxdkohler@gmail.com

*** Keywords ***
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