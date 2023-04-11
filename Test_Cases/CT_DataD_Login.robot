*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    ..//Data/V.2 JD 2023-03-02.xlsx    sheet_name=Data_paiement    
Resource    ..//Keywords/KW_common_login_logout.robot
Variables    ..//Page_objects/Locators_site_emploi.py



Test Setup    KW_common_login_logout.Ouvrir cas de test    ${URL_Page}    ${Navigateur}    
Test Teardown    KW_common_login_logout.Fermer cas de test
Test Template    Login et Logout

*** Variables ***
${URL_Page}    https://entreprises-int.oiq.qc.ca/OIQ/EntrepriseConnexion/ConnexionSiteEmploiUAT.aspx?client_id=TestSiteEmploiUAT&redirect_uri=https:%2F%2Foiqemploilaravel-uat.logientlab.com%2Fapi%2Fsocial_login_process%3Fprovider%3Dimis&scope=&response_type=code&state=TbbAijdw3wbfPN7WRUM9mCZ4Xua3N2e6OnpDszkp    
${Navigateur}    chrome 

*** Test Cases ***
Verifier login et logout    ${text_username_Employeur}    ${text_password_Employeur}    


*** Keywords ***
 Login et Logout
    [Arguments]    ${text_username_Employeur}    ${text_password_Employeur}    
    Clear Element Text    ${page_de_connexion_username_Employeur}
    Input Text    ${page_de_connexion_username_Employeur}    ${text_username_Employeur}
    Clear Element Text    ${page_de_connexion_password_Employeur}
    Input Password    ${page_de_connexion_password_Employeur}    ${text_password_Employeur}
    Click Element    ${page_de_connexion_bouton_connexion_Employeur}
    Sleep    3
    Wait Until Element Is Enabled    ${page_Site_emploi_Home_Forfaits}
    Element Should Be Visible    ${page_Site_emploi_Home_Forfaits}


    