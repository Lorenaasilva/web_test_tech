*** Settings ***
Resource         ../resources/keywords.robot
Resource         ../resources/steps.robot
Library          SeleniumLibrary

Test Setup       Open the navigator
#Test Teardown    Close the navigator


*** Test Cases ***
Scenario: CT 01 - Verify that the user can log in with valid credentials
    [Documentation]  This test case verifies that a user can successfully log in using valid credentials.
    [Tags]    login
    GIVEN user is on the login page
    WHEN user enters valid credentials
    THEN user should be redirected to the homepage

Scenario: CT 02 - Check if it is possible to search for a product
    [Documentation]  This test case checks if the user can search for a product on the homepage.
    [Tags]    search_product
    GIVEN user is on the homepage
    WHEN user searches for a product
    THEN search results should be displayed

Scenario: CT 03 - Verify that the user can add a product to the shopping list
    [Documentation]  This test case verifies that a user can add a product to the shopping list.
    [Tags]    add_to_list
    GIVEN user is on the product page
    WHEN user adds a product to the shopping list
    THEN product should be added to the shopping list successfully

Scenario: CT 04 - Verify that the user can access the shopping list
    [Documentation]  This test case verifies that a user can access the shopping list.
    [Tags]    open_shopping_list
    GIVEN user is on the homepage
    WHEN user navigates to the shopping list
    THEN shopping list should be displayed successfully