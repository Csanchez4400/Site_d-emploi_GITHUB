*** Settings ***
Variables    ..//Page_objects/Locators_site_emploi.py
Library    SeleniumLibrary

*** Keywords ***
En tant qu’Admin OIQ, je me connecte à Laravel
    [Arguments]    ${URL_Page}    ${Navigateur}    ${text_username_Admin}    ${text_password_Admin}    
    Open Browser    ${URL_Page}    ${Navigateur}
    Maximize Browser Window
    Clear Element Text   ${page_de_connexion_username_Admin} 
    Input Text    ${page_de_connexion_username_Admin}    ${text_username_Admin} 
    Clear Element Text   ${page_de_connexion_password_Admin}
    Input Password    ${page_de_connexion_password_Admin}    ${text_password_Admin}
    Click Element    ${page_de_connexion_bouton_connexion_Admin}     


En tant qu’Admin OIQ, je rentre au Site d’emploi à partir de Laravel
    Click Element    ${page_Laravel_bouton_Site_Web_Admin}
    Click Element    ${page_Site_emploi_Logo_ING}