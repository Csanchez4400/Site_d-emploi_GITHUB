*** Settings ***
Resource    ../Keywords/Employeur_Connexion_Site_emploi.robot
Resource    ../Keywords/1er étape du processus d’achat.robot


*** Variables ***
${URL_Page}    https://entreprises-int.oiq.qc.ca/OIQ/EntrepriseConnexion/ConnexionSiteEmploiUAT.aspx?client_id=TestSiteEmploiUAT&redirect_uri=https:%2F%2Foiqemploilaravel-uat.logientlab.com%2Fapi%2Fsocial_login_process%3Fprovider%3Dimis&scope=&response_type=code&state=TbbAijdw3wbfPN7WRUM9mCZ4Xua3N2e6OnpDszkp
${Navigateur}    chrome
${text_username_Employeur}    charlotte@diageo.ca
${text_password_Employeur}    oiq1234

*** Test Cases ***
CT_1er étape sélectionner tous les boutons Ajouter au panier
    En tant qu'employeur /Admin.client / Recruteur / Finances/, je me connecte au site d'emploi    ${URL_Page}    ${Navigateur}    ${text_username_Employeur}    ${text_password_Employeur}
    1er étape sélectionner tous les boutons Ajouter au panier