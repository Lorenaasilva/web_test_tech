*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/keywords.robot

*** Keywords ***
user is on the login page
    Open the homepage

user enters valid credentials
    login to the webpage

user should be redirected to the homepage
    the homepage is visible

user is on the homepage
    Open the homepage
    login to the webpage
    the homepage is visible
user searches for a product
    search for a product
search results should be displayed
    the product is displayed

user is on the product page
    Open the homepage
    login to the webpage
    the homepage is visible

user adds a product to the shopping list
    add a new product

product should be added to the shopping list successfully
    verify if the product is added to the shopping list

user navigates to the shopping list
    open the shopping list
shopping list should be displayed successfully
    verify that the shopping list is displayed