*** Settings ***
Resource    ../Ressources_Site_emploi/Employeur_Connexion_Site_emploi.robot
Resource    ../Ressources_Site_emploi/1er étape du processus d’achat.robot
Resource    ../Ressources_Site_emploi/2e étape du processus d’achat.robot
Resource    ../Ressources_Site_emploi/3e étape du processus d’achat.robot

*** Variables ***
${URL_Page}    https://entreprises-int.oiq.qc.ca/OIQ/EntrepriseConnexion/ConnexionSiteEmploiUAT.aspx?client_id=TestSiteEmploiUAT&redirect_uri=https:%2F%2Foiqemploilaravel-uat.logientlab.com%2Fapi%2Fsocial_login_process%3Fprovider%3Dimis&scope=&response_type=code&state=TbbAijdw3wbfPN7WRUM9mCZ4Xua3N2e6OnpDszkp
${Navigateur}    chrome
${text_username_Employeur}    charlotte@diageo.ca
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

*** Test Cases ***
CT_2e_etape_processus_achat
    En tant que responsable principal.e / Administrateur Client, je me connecte au site d'emploi    ${URL_Page}    ${Navigateur}    ${text_username_Employeur}    ${text_password_Employeur}
    1er étape du processus d’achat
    2e étape du processus d’achat
    3e étape du processus d’achat    ${text_Processus_achat}    ${text_Info_facturation}    ${text_Info_personnelles}    ${text_Prenom}    ${text_Nom}    ${text_Poste_entreprise}    ${text_Groupe}    ${text_Info_entreprise}    ${text_titre_Entreprise}    ${text_titre_Adresse}    ${text_Mode_paiement}    ${text_Toutes_transactions_chiffrées}

