
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}         https://robotsparebinindustries.com/
${BROWSER}     chrome
${USERNAME}    maria
${PASSWORD}    thoushallnotpass

*** Keywords ***
Open Robot SpareBin Website
    [Documentation]    Opens the Chrome browser and navigates to the Robot SpareBin Industries application.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    id=username    10s

Login To Application
    [Documentation]    Enters valid username and password and logs into the application.
    Input Text        id=username    ${USERNAME}
    Input Password    id=password    ${PASSWORD}
    Click Button      Log in

Verify Login Is Successful
    [Documentation]    Verifies successful login by checking the logged-in username and Log out button.
    Wait Until Page Contains          maria    10s
    Wait Until Element Is Visible     xpath=//button[contains(.,'Log out')]    10s

Logout From Application
    [Documentation]    Logs out from the application and verifies the login page is displayed again.
    Click Button    xpath=//button[contains(.,'Log out')]
    Wait Until Element Is Visible    id=username    10s