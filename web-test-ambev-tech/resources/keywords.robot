*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/steps.robot

*** Variables ***
${LOGIN_URL}                            https://front.serverest.dev/login
${BROWSER}                              chrome
${TITLE_LOGIN}                    //h1[contains(text(), 'Login')]
${INPUT_EMAIL}                          //input[@id='email']
${INPUT_PASSWORD}                       //input[@id='password']
${USER_EMAIL}                           dory.user@qa.com.br
${USER_PASSWORD}                        teste123
${LOGIN_BUTTON}                         //button[normalize-space()='Entrar']  
${TITLE_HOME_LOGIN}                   //h1[normalize-space()='Serverest Store'] 
${SEARCH_INPUT}                         //*[@id="root"]/div/div/div[1]/div/div[2]/input
${SEARCH_BUTTON}                        //button[normalize-space()='Pesquisar']
${PRODUCT_ELEMENT_1}                   //h2[contains(text(), 'Logitech MX Vertical')]
${PRODUCT_ELEMENT_1_SHOPPING_LIST}     //*[@id="root"]/div/div/div[2]/div/section/div/div/h5
${PRODUCT_ELEMENT_2}                  //h5[normalize-space()='Gorgeous Aluminum Mouse']
${PRODUCT_ELEMENT_2_SHOPPING_LIST}    //div[normalize-space()='Produto:Gorgeous Aluminum Mouse']
${BUTTON_ADD_TO_LIST}                //div[@class='container-fluid']//div//div[1]//div[1]//div[1]//a[2]//button[1]
${TITLE_SHOPPING_LIST}               //h1[normalize-space()='Lista de Compras']
${HOME_SHOPPING_LIST_TITLE}         //a[normalize-space()='Lista de Compras']

*** Keywords ***
Open the navigator
    Open Browser    browser=chrome   

Close the navigator
    Close Browser

Open the homepage
    Go To    ${LOGIN_URL}
    Maximize Browser Window
    Wait Until Element Is Visible    ${TITLE_LOGIN}

login to the webpage
    Click Element    locator=${INPUT_EMAIL}
    Input Text    locator=${INPUT_EMAIL}    text=${USER_EMAIL}
    Click Element    locator=${INPUT_PASSWORD}
    Input Text    locator=${INPUT_PASSWORD}    text=${USER_PASSWORD}
    Click Element    locator=${LOGIN_BUTTON}

the homepage is visible
    Wait Until Page Contains Element    ${TITLE_HOME_LOGIN}

search for a product
    Wait Until Page Contains Element    ${SEARCH_INPUT}
    Double Click Element    locator=${SEARCH_INPUT}
    Input Text              locator=${SEARCH_INPUT}    text=Logitech MX Vertical
    Click Element           locator=${SEARCH_BUTTON}

the product is displayed
    #Sleep   5
    Wait Until Page Contains Element    ${PRODUCT_ELEMENT_1_SHOPPING_LIST}

add a new product
    Wait Until Page Contains Element    ${PRODUCT_ELEMENT_2}
    Click Element                      locator=${BUTTON_ADD_TO_LIST}

verify if the product is added to the shopping list
    Wait Until Page Contains Element    ${TITLE_SHOPPING_LIST}
    Wait Until Page Contains Element    ${PRODUCT_ELEMENT_2_SHOPPING_LIST}

open the shopping list
    Wait Until Page Contains Element    ${HOME_SHOPPING_LIST_TITLE}
    Click Element    locator=${HOME_SHOPPING_LIST_TITLE}

verify that the shopping list is displayed
    Wait Until Page Contains Element    ${TITLE_SHOPPING_LIST}