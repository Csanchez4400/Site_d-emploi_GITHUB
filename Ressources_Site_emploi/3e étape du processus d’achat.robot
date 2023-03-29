*** Settings ***
Variables    ../Page_objects_Site_emploi/Locators_site_emploi.py
Library    SeleniumLibrary

*** Keywords ***
3e étape du processus d’achat
    [Arguments]    ${text_Processus_achat}    ${text_Info_facturation}    ${text_Info_personnelles}    ${text_Prenom}    ${text_Nom}    ${text_Poste_entreprise}    ${text_Groupe}    ${text_Info_entreprise}    ${text_titre_Entreprise}    ${text_titre_Adresse}    ${text_Mode_paiement}    ${text_Toutes_transactions_chiffrées}
    Wait Until Element Is Visible    ${page_Site_emploi_Processus_achat_titre_Processus_achat}
    Element Should Be Visible    ${page_Site_emploi_Processus_achat_titre_Processus_achat}
    Element Text Should Be    ${page_Site_emploi_Processus_achat_titre_Processus_achat}    ${text_Processus_achat}
    Wait Until Element Is Visible    ${page_Site_emploi_Processus_achat_titre_Info_facturation}
    Element Should Be Visible    ${page_Site_emploi_Processus_achat_titre_Info_facturation}
    Element Text Should Be    ${page_Site_emploi_Processus_achat_titre_Info_facturation}    ${text_Info_facturation}
    #Wait Until Element Is Visible    ${page_Site_emploi_Processus_achat_titre_Info_personnelles}
    #Element Should Be Visible    ${page_Site_emploi_Processus_achat_titre_Info_personnelles}
    #Element Text Should Be    ${page_Site_emploi_Processus_achat_titre_Info_personnelles}    ${text_Info_personnelles}
    Wait Until Element Is Visible    ${page_Site_emploi_Processus_achat_titre_Prenom}
    Element Should Be Visible    ${page_Site_emploi_Processus_achat_titre_Prenom}
    Element Text Should Be    ${page_Site_emploi_Processus_achat_titre_Prenom}    ${text_Prenom}
    Wait Until Element Is Visible    ${page_Site_emploi_Processus_achat_titre_Nom}
    Element Should Be Visible    ${page_Site_emploi_Processus_achat_titre_Nom}
    Element Text Should Be    ${page_Site_emploi_Processus_achat_titre_Nom}    ${text_Nom}
    Wait Until Element Is Visible    ${page_Site_emploi_Processus_achat_titre_Poste_entreprise}
    Element Should Be Visible    ${page_Site_emploi_Processus_achat_titre_Poste_entreprise}
    Element Text Should Be    ${page_Site_emploi_Processus_achat_titre_Poste_entreprise}    ${text_Poste_entreprise}
    Wait Until Element Is Visible    ${page_Site_emploi_Processus_achat_titre_Groupe}
    Element Should Be Visible    ${page_Site_emploi_Processus_achat_titre_Groupe}
    Element Text Should Be    ${page_Site_emploi_Processus_achat_titre_Groupe}    ${text_Groupe}
    Wait Until Element Is Visible    ${page_Site_emploi_Processus_achat_titre_Info_entreprise}
    Element Should Be Visible    ${page_Site_emploi_Processus_achat_titre_Info_entreprise}
    Element Text Should Be    ${page_Site_emploi_Processus_achat_titre_Info_entreprise}    ${text_Info_entreprise}
    Wait Until Element Is Visible    ${page_Site_emploi_Processus_achat_titre_Entreprise}
    Element Should Be Visible    ${page_Site_emploi_Processus_achat_titre_Entreprise}
    Element Text Should Be    ${page_Site_emploi_Processus_achat_titre_Entreprise}    ${text_titre_Entreprise}
    Wait Until Element Is Visible    ${page_Site_emploi_Processus_achat_titre_Adresse}
    Element Should Be Visible    ${page_Site_emploi_Processus_achat_titre_Adresse}
    Element Text Should Be    ${page_Site_emploi_Processus_achat_titre_Adresse}    ${text_titre_Adresse}
    Wait Until Element Is Visible    ${page_Site_emploi_Processus_achat_titre_Mode_paiement}
    Element Should Be Visible    ${page_Site_emploi_Processus_achat_titre_Mode_paiement}
    Element Text Should Be    ${page_Site_emploi_Processus_achat_titre_Mode_paiement}    ${text_Mode_paiement}
    Wait Until Element Is Visible    ${page_Site_emploi_Processus_achat_texte_Toutes_transactions_chiffrées}
    Element Should Be Visible    ${page_Site_emploi_Processus_achat_texte_Toutes_transactions_chiffrées}
    Element Text Should Be    ${page_Site_emploi_Processus_achat_texte_Toutes_transactions_chiffrées}    ${text_Toutes_transactions_chiffrées}


