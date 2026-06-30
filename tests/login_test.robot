
*** Settings ***
Resource    ../resources/keywords.robot
Test Teardown    Close Browser

*** Test Cases ***
Verify Successful Login And Logout
    Open Robot SpareBin Website
    Login To Application
    Verify Login Is Successful
    Logout From Application