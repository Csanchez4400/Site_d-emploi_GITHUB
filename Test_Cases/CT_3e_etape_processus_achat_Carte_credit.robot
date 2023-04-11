*** Settings ***
Resource    ../Keywords/Employeur_Connexion_Site_emploi.robot
Resource    ../Keywords/1er étape du processus d’achat.robot
Resource    ../Keywords/2e étape du processus d’achat.robot
Resource    ../Keywords/3e étape du processus d’achat.robot

*** Variables ***
${URL_Page}    https://entreprises-int.oiq.qc.ca/OIQ/EntrepriseConnexion/ConnexionSiteEmploiUAT.aspx?client_id=TestSiteEmploiUAT&redirect_uri=https:%2F%2Foiqemploilaravel-uat.logientlab.com%2Fapi%2Fsocial_login_process%3Fprovider%3Dimis&scope=&response_type=code&state=TbbAijdw3wbfPN7WRUM9mCZ4Xua3N2e6OnpDszkp
${Navigateur}    chrome
${text_username_Employeur}    william@diageo.ca
${text_password_Employeur}    oiq1234
${numerocarte_cartecredit}    4875965238548448
${prenom_cartecredit}    Test_prenom
${nom_cartecredit}    Test_nom
${dateexpirationMM_cartecredit}    03
${dateexpirationAA_cartecredit}    2033
${codesecurite_cartecredit}    250
${codepostal_cartecredit}    K1C 2L9


*** Test Cases ***
CT_3e_etape_processus_achat_paiment_Carte_credit_Forfait 1
    En tant qu'employeur /Admin.client / Recruteur / Finances/, je me connecte au site d'emploi    ${URL_Page}    ${Navigateur}    ${text_username_Employeur}    ${text_password_Employeur}
    1er étape du processus d’achat Forfait 1
    2e étape du processus d’achat
    3e étape paiment Carte de credit    ${numerocarte_cartecredit}    ${prenom_cartecredit}    ${nom_cartecredit}    ${dateexpirationMM_cartecredit}    ${dateexpirationAA_cartecredit}    ${codesecurite_cartecredit}    ${codepostal_cartecredit}
CT_3e_etape_processus_achat_paiment_Carte_credit_Forfait 5
    En tant qu'employeur /Admin.client / Recruteur / Finances/, je me connecte au site d'emploi    ${URL_Page}    ${Navigateur}    ${text_username_Employeur}    ${text_password_Employeur}
    1er étape du processus d’achat Forfait 5
    2e étape du processus d’achat
    3e étape paiment Carte de credit    ${numerocarte_cartecredit}    ${prenom_cartecredit}    ${nom_cartecredit}    ${dateexpirationMM_cartecredit}    ${dateexpirationAA_cartecredit}    ${codesecurite_cartecredit}    ${codepostal_cartecredit}
CT_3e_etape_processus_achat_paiment_Carte_credit_Forfait 10
    En tant qu'employeur /Admin.client / Recruteur / Finances/, je me connecte au site d'emploi    ${URL_Page}    ${Navigateur}    ${text_username_Employeur}    ${text_password_Employeur}
    1er étape du processus d’achat Forfait 10
    2e étape du processus d’achat
    3e étape paiment Carte de credit    ${numerocarte_cartecredit}    ${prenom_cartecredit}    ${nom_cartecredit}    ${dateexpirationMM_cartecredit}    ${dateexpirationAA_cartecredit}    ${codesecurite_cartecredit}    ${codepostal_cartecredit}
CT_3e_etape_processus_achat_paiment_Carte_credit_Forfait 20
    En tant qu'employeur /Admin.client / Recruteur / Finances/, je me connecte au site d'emploi    ${URL_Page}    ${Navigateur}    ${text_username_Employeur}    ${text_password_Employeur}
    1er étape du processus d’achat Forfait 20
    2e étape du processus d’achat
    3e étape paiment Carte de credit    ${numerocarte_cartecredit}    ${prenom_cartecredit}    ${nom_cartecredit}    ${dateexpirationMM_cartecredit}    ${dateexpirationAA_cartecredit}    ${codesecurite_cartecredit}    ${codepostal_cartecredit}
CT_3e_etape_processus_achat_paiment_Carte_credit_Forfait_1_CPI
    En tant qu'employeur /Admin.client / Recruteur / Finances/, je me connecte au site d'emploi    ${URL_Page}    ${Navigateur}    ${text_username_Employeur}    ${text_password_Employeur}
    1er étape du processus d’achat Forfait 1 CPI
    2e étape du processus d’achat
    3e étape paiment Carte de credit    ${numerocarte_cartecredit}    ${prenom_cartecredit}    ${nom_cartecredit}    ${dateexpirationMM_cartecredit}    ${dateexpirationAA_cartecredit}    ${codesecurite_cartecredit}    ${codepostal_cartecredit}
CT_3e_etape_processus_achat_paiment_Carte_credit_Offre_vedette
    En tant qu'employeur /Admin.client / Recruteur / Finances/, je me connecte au site d'emploi    ${URL_Page}    ${Navigateur}    ${text_username_Employeur}    ${text_password_Employeur}
    1er étape du processus d’achat Offre en vedette
    2e étape du processus d’achat
    3e étape paiment Carte de credit    ${numerocarte_cartecredit}    ${prenom_cartecredit}    ${nom_cartecredit}    ${dateexpirationMM_cartecredit}    ${dateexpirationAA_cartecredit}    ${codesecurite_cartecredit}    ${codepostal_cartecredit}
CT_3e_etape_processus_achat_paiment_Carte_credit_Extension
    En tant qu'employeur /Admin.client / Recruteur / Finances/, je me connecte au site d'emploi    ${URL_Page}    ${Navigateur}    ${text_username_Employeur}    ${text_password_Employeur}
    1er étape du processus d’achat Offre Extension
    2e étape du processus d’achat
    3e étape paiment Carte de credit    ${numerocarte_cartecredit}    ${prenom_cartecredit}    ${nom_cartecredit}    ${dateexpirationMM_cartecredit}    ${dateexpirationAA_cartecredit}    ${codesecurite_cartecredit}    ${codepostal_cartecredit}
CT_3e_etape_processus_achat_paiment_carte_credit_TOUS_les_forfaits
    En tant qu'employeur /Admin.client / Recruteur / Finances/, je me connecte au site d'emploi    ${URL_Page}    ${Navigateur}    ${text_username_Employeur}    ${text_password_Employeur}
    1er étape sélectionner tous les boutons Ajouter au panier
    2e étape du processus d’achat de tous les produits
    3e étape paiment carte de credit tous les produits    ${numerocarte_cartecredit}    ${prenom_cartecredit}    ${nom_cartecredit}    ${dateexpirationMM_cartecredit}    ${dateexpirationAA_cartecredit}    ${codesecurite_cartecredit}    ${codepostal_cartecredit}
    