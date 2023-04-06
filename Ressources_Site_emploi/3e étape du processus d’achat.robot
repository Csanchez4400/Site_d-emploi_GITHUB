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
3e étape paiment Paypal
    [Arguments]    ${username_paypal}    ${password_paypal}
    Execute JavaScript    window.scrollBy(0,1000)
    Sleep    1
    Click Element    ${page_Site_emploi_Processus_achat_bouton_Paypal}
    Click Element    ${page_Site_emploi_Processus_achat_checkbox_Copie_compte_payable}
    Click Element    ${page_Site_emploi_Processus_achat_bouton_Reviser}
    Wait Until Element Is Visible    ${page_Site_emploi_Processus_achat_imgage_Paypal}    
    Element Should Be Visible    ${page_Site_emploi_Processus_achat_imgage_Paypal}  
    Sleep    3    
    Click Element    ${page_Site_emploi_Processus_achat_checkbox_conditions_vie_privee}
    Execute JavaScript    window.scrollBy(0,200)
    Sleep    1
    Click Element    ${page_Site_emploi_Processus_achat_bouton_completer_achat}
    Sleep    3
    Wait Until Element Is Visible    ${page_Paypal_img_Paypal}    
    Element Should Be Visible    ${page_Paypal_img_Paypal}
    Clear Element Text    ${page_Paypal_username_Paypal}
    Input Text    ${page_Paypal_username_Paypal}    ${username_paypal}
    Clear Element Text    ${page_Paypal_password_Paypal}
    Input Password    ${page_Paypal_password_Paypal}    ${password_paypal}
    Click Element    ${page_Paypal_bouton_connexion_Paypal}
    Sleep    3
    #Click Element    ${page_Paypal_checkbox_Make_this_my_preferred_rate}
    Click Element    ${page_Paypal_boutton_completer_purchase}
    Sleep    5
    Execute JavaScript    window.scrollBy(0,700)
    Sleep    1
    Click Element    ${page_Paypal_bouton_retour_merchant_Paypal}
    Sleep    3
    Click Element    ${page_Site_emploi_Home_Forfaits}
    Click Element    ${page_Site_emploi_Home_Mes_forfaits}
    Sleep    3

3e étape paiment Paypal tous les produits
    [Arguments]    ${username_paypal}    ${password_paypal}
    Execute JavaScript    window.scrollBy(0,1000)
    Sleep    1
    Click Element    ${page_Site_emploi_Processus_achat_bouton_Paypal}
    Click Element    ${page_Site_emploi_Processus_achat_checkbox_Copie_compte_payable}
    Click Element    ${page_Site_emploi_Processus_achat_bouton_Reviser}
    Wait Until Element Is Visible    ${page_Site_emploi_Processus_achat_imgage_Paypal}    
    Element Should Be Visible    ${page_Site_emploi_Processus_achat_imgage_Paypal}  
    Sleep    3 
    Execute JavaScript    window.scrollBy(0,700)
    Sleep    1   
    Click Element    ${page_Site_emploi_Processus_achat_checkbox_conditions_vie_privee}
    Execute JavaScript    window.scrollBy(0,200)
    Sleep    1
    Click Element    ${page_Site_emploi_Processus_achat_bouton_completer_achat}
    Sleep    3
    Wait Until Element Is Visible    ${page_Paypal_img_Paypal}    
    Element Should Be Visible    ${page_Paypal_img_Paypal}
    Clear Element Text    ${page_Paypal_username_Paypal}
    Input Text    ${page_Paypal_username_Paypal}    ${username_paypal}
    Clear Element Text    ${page_Paypal_password_Paypal}
    Input Password    ${page_Paypal_password_Paypal}    ${password_paypal}
    Click Element    ${page_Paypal_bouton_connexion_Paypal}
    Sleep    3
    #Click Element    ${page_Paypal_checkbox_Make_this_my_preferred_rate}
    Click Element    ${page_Paypal_boutton_completer_purchase}
    Sleep    5
    Execute JavaScript    window.scrollBy(0,700)
    Sleep    1
    Click Element    ${page_Paypal_bouton_retour_merchant_Paypal}
    Sleep    3
    Click Element    ${page_Site_emploi_Home_Forfaits}
    Click Element    ${page_Site_emploi_Home_Mes_forfaits}
    Sleep    3
3e étape paiment Carte de credit
    [Arguments]    ${numerocarte_cartecredit}    ${prenom_cartecredit}    ${nom_cartecredit}    ${dateexpirationMM_cartecredit}    ${dateexpirationAA_cartecredit}    ${codesecurite_cartecredit}    ${codepostal_cartecredit}
    Execute JavaScript    window.scrollBy(0,1000)
    Sleep    1
    Click Element    ${page_Site_emploi_Processus_achat_bouton_carte_credit}
    Input Text    ${page_Site_emploi_Processus_achat_input_numero_carte}    ${numerocarte_cartecredit}
    Input Text    ${page_Site_emploi_Processus_achat_input_prenom}    ${prenom_cartecredit} 
    Input Text    ${page_Site_emploi_Processus_achat_input_nom}    ${nom_cartecredit}
    Input Text    ${page_Site_emploi_Processus_achat_input_date_expiration_MM}    ${dateexpirationMM_cartecredit}
    Input Text    ${page_Site_emploi_Processus_achat_input_date_expiration_AA}    ${dateexpirationAA_cartecredit}
    Input Text    ${page_Site_emploi_Processus_achat_input_code_securite}    ${codesecurite_cartecredit}
    Input Text    ${page_Site_emploi_Processus_achat_input_code_postal}    ${codepostal_cartecredit}
    Sleep    1 
    Execute JavaScript    window.scrollBy(0,300)
    Sleep    1 
    Click Element    ${page_Site_emploi_Processus_achat_checkbox_Copie_compte_payable}
    Click Element    ${page_Site_emploi_Processus_achat_bouton_Reviser}
    Sleep    1 
    #Execute JavaScript    window.scrollBy(0,400)
    #Sleep    1   
    Click Element    ${page_Site_emploi_Processus_achat_checkbox_conditions_vie_privee}
    Sleep    2
    Execute JavaScript    window.scrollBy(0,200)
    Sleep    2
    Wait Until Element Is Enabled    ${page_Site_emploi_Processus_achat_bouton_completer_achat_V2}
    Click Button    ${page_Site_emploi_Processus_achat_bouton_completer_achat_V2}
    Sleep    2
3e étape paiment carte de credit tous les produits
    [Arguments]    ${numerocarte_cartecredit}    ${prenom_cartecredit}    ${nom_cartecredit}    ${dateexpirationMM_cartecredit}    ${dateexpirationAA_cartecredit}    ${codesecurite_cartecredit}    ${codepostal_cartecredit}
    Execute JavaScript    window.scrollBy(0,1000)
    Sleep    1
    Click Element    ${page_Site_emploi_Processus_achat_bouton_carte_credit}
    Input Text    ${page_Site_emploi_Processus_achat_input_numero_carte}    ${numerocarte_cartecredit}
    Input Text    ${page_Site_emploi_Processus_achat_input_prenom}    ${prenom_cartecredit} 
    Input Text    ${page_Site_emploi_Processus_achat_input_nom}    ${nom_cartecredit}
    Input Text    ${page_Site_emploi_Processus_achat_input_date_expiration_MM}    ${dateexpirationMM_cartecredit}
    Input Text    ${page_Site_emploi_Processus_achat_input_date_expiration_AA}    ${dateexpirationAA_cartecredit}
    Input Text    ${page_Site_emploi_Processus_achat_input_code_securite}    ${codesecurite_cartecredit}
    Input Text    ${page_Site_emploi_Processus_achat_input_code_postal}    ${codepostal_cartecredit}
    Sleep    1 
    Execute JavaScript    window.scrollBy(0,300)
    Sleep    1 
    Click Element    ${page_Site_emploi_Processus_achat_checkbox_Copie_compte_payable}
    Click Element    ${page_Site_emploi_Processus_achat_bouton_Reviser}
    Sleep    1 
    Execute JavaScript    window.scrollBy(0,400)
    Sleep    1   
    Click Element    ${page_Site_emploi_Processus_achat_checkbox_conditions_vie_privee}
    Sleep    2
    Execute JavaScript    window.scrollBy(0,200)
    Sleep    2
    Wait Until Element Is Enabled    ${page_Site_emploi_Processus_achat_bouton_completer_achat_V2}
    Click Button    ${page_Site_emploi_Processus_achat_bouton_completer_achat_V2}
    Sleep    2

    





    


