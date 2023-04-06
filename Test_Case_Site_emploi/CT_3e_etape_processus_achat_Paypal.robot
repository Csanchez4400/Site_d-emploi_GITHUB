*** Settings ***
Resource    ../Ressources_Site_emploi/Employeur_Connexion_Site_emploi.robot
Resource    ../Ressources_Site_emploi/1er étape du processus d’achat.robot
Resource    ../Ressources_Site_emploi/2e étape du processus d’achat.robot
Resource    ../Ressources_Site_emploi/3e étape du processus d’achat.robot


*** Variables ***
${URL_Page}    https://entreprises-int.oiq.qc.ca/OIQ/EntrepriseConnexion/ConnexionSiteEmploiUAT.aspx?client_id=TestSiteEmploiUAT&redirect_uri=https:%2F%2Foiqemploilaravel-uat.logientlab.com%2Fapi%2Fsocial_login_process%3Fprovider%3Dimis&scope=&response_type=code&state=TbbAijdw3wbfPN7WRUM9mCZ4Xua3N2e6OnpDszkp
${Navigateur}    chrome
${text_username_Employeur}    alfred@diageo.ca
${text_password_Employeur}    oiq1234
${text_Processus_achat}    Processus d'achat
${text_Info_facturation}    Informations de facturation
${text_Info_personnelles}    Informations personnelles
${text_Prenom}    PRÉNOM
${text_Nom}    NOM
${text_Poste_entreprise}    POSTE DANS L'ENTREPRISE
${text_Groupe}    GROUPE
${text_Info_entreprise}    Informations de l'entreprise
${text_titre_Entreprise}    ENTREPRISE
${text_titre_Adresse}    ADRESSE
${text_Mode_paiement}    Mode de paiement
${text_Toutes_transactions_chiffrées}    Toutes les transactions sont sécurisées et chiffrées.
${username_paypal}    sb-fcff725285289@personal.example.com
${password_paypal}    r/e0Ftr_

*** Test Cases ***
CT_3e_etape_processus_achat_vérification_items
    En tant que responsable principal.e / Administrateur Client, je me connecte au site d'emploi    ${URL_Page}    ${Navigateur}    ${text_username_Employeur}    ${text_password_Employeur}
    1er étape du processus d’achat Forfait 1
    2e étape du processus d’achat
    3e étape du processus d’achat    ${text_Processus_achat}    ${text_Info_facturation}    ${text_Info_personnelles}    ${text_Prenom}    ${text_Nom}    ${text_Poste_entreprise}    ${text_Groupe}    ${text_Info_entreprise}    ${text_titre_Entreprise}    ${text_titre_Adresse}    ${text_Mode_paiement}    ${text_Toutes_transactions_chiffrées}
CT_3e_etape_processus_achat_paiment_Paypal_Forfait 1
    En tant que responsable principal.e / Administrateur Client, je me connecte au site d'emploi    ${URL_Page}    ${Navigateur}    ${text_username_Employeur}    ${text_password_Employeur}
    1er étape du processus d’achat Forfait 1
    2e étape du processus d’achat
    3e étape paiment Paypal    ${username_paypal}    ${password_paypal}
CT_3e_etape_processus_achat_paiment_Paypal_Forfait 5
    En tant que responsable principal.e / Administrateur Client, je me connecte au site d'emploi    ${URL_Page}    ${Navigateur}    ${text_username_Employeur}    ${text_password_Employeur}
    1er étape du processus d’achat Forfait 5
    2e étape du processus d’achat
    3e étape paiment Paypal    ${username_paypal}    ${password_paypal}
CT_3e_etape_processus_achat_paiment_Paypal_Forfait 10
    En tant que responsable principal.e / Administrateur Client, je me connecte au site d'emploi    ${URL_Page}    ${Navigateur}    ${text_username_Employeur}    ${text_password_Employeur}
    1er étape du processus d’achat Forfait 10
    2e étape du processus d’achat
    3e étape paiment Paypal    ${username_paypal}    ${password_paypal}
CT_3e_etape_processus_achat_paiment_Paypal_Forfait 20
    En tant que responsable principal.e / Administrateur Client, je me connecte au site d'emploi    ${URL_Page}    ${Navigateur}    ${text_username_Employeur}    ${text_password_Employeur}
    1er étape du processus d’achat Forfait 20
    2e étape du processus d’achat
    3e étape paiment Paypal    ${username_paypal}    ${password_paypal}
CT_3e_etape_processus_achat_paiment_Paypal_Forfait_1_CPI
    En tant que responsable principal.e / Administrateur Client, je me connecte au site d'emploi    ${URL_Page}    ${Navigateur}    ${text_username_Employeur}    ${text_password_Employeur}
    1er étape du processus d’achat Forfait 1 CPI
    2e étape du processus d’achat
    3e étape paiment Paypal    ${username_paypal}    ${password_paypal}
CT_3e_etape_processus_achat_paiment_Paypal_Offre_vedette
    En tant que responsable principal.e / Administrateur Client, je me connecte au site d'emploi    ${URL_Page}    ${Navigateur}    ${text_username_Employeur}    ${text_password_Employeur}
    1er étape du processus d’achat Offre en vedette
    2e étape du processus d’achat
    3e étape paiment Paypal    ${username_paypal}    ${password_paypal}
CT_3e_etape_processus_achat_paiment_Paypal_Offre_Extension
    En tant que responsable principal.e / Administrateur Client, je me connecte au site d'emploi    ${URL_Page}    ${Navigateur}    ${text_username_Employeur}    ${text_password_Employeur}
    1er étape du processus d’achat Offre Extension
    2e étape du processus d’achat
    3e étape paiment Paypal    ${username_paypal}    ${password_paypal}
CT_3e_etape_processus_achat_paiment_Paypal_TOUS_les_forfaits
    En tant que responsable principal.e / Administrateur Client, je me connecte au site d'emploi    ${URL_Page}    ${Navigateur}    ${text_username_Employeur}    ${text_password_Employeur}
    1er étape sélectionner tous les boutons Ajouter au panier
    2e étape du processus d’achat de tous les produits
    3e étape paiment Paypal tous les produits    ${username_paypal}    ${password_paypal}