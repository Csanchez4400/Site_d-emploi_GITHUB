*** Settings ***
Variables    ../Page_objects/Locators_site_emploi.py
Library    SeleniumLibrary
Library    DataDriver    ../Data_test/V.2 JD 2023-03-02.xlsx    sheet_name=Data_paiement    


*** Keywords ***
En tant qu'employeur /Admin.client / Recruteur / Finances/, je me connecte au site d'emploi
    [Arguments]    ${URL_Page}    ${Navigateur}    ${text_username_Employeur}    ${text_password_Employeur}
    Open Browser    ${URL_Page}    ${Navigateur}
    Maximize Browser Window
    Clear Element Text    ${page_de_connexion_username_Employeur}
    Input Text    ${page_de_connexion_username_Employeur}    ${text_username_Employeur}
    Clear Element Text    ${page_de_connexion_password_Employeur}
    Input Password    ${page_de_connexion_password_Employeur}    ${text_password_Employeur}
    Click Element    ${page_de_connexion_bouton_connexion_Employeur}
    Sleep    3
