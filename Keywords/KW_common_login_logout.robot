*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#${URL_Page}    https://entreprises-int.oiq.qc.ca/OIQ/EntrepriseConnexion/ConnexionSiteEmploiUAT.aspx?client_id=TestSiteEmploiUAT&redirect_uri=https:%2F%2Foiqemploilaravel-uat.logientlab.com%2Fapi%2Fsocial_login_process%3Fprovider%3Dimis&scope=&response_type=code&state=TbbAijdw3wbfPN7WRUM9mCZ4Xua3N2e6OnpDszkp
#${Navigateur}    chrome

*** Keywords ***
Ouvrir cas de test
    [Arguments]    ${URL_Page}    ${Navigateur}
    Open Browser    ${URL_Page}    ${Navigateur}
    Maximize Browser Window
    Sleep    2
Fermer cas de test
    Close Browser

