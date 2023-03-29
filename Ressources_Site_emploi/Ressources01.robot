*** Settings ***
Library    SeleniumLibrary
Library    XML
Resource    ../../PJ02_Robot_pj1/Ressources/ressosyncho01.robot

*** Variables ***
${URL_Site_emploi_Admin_OIQ}=    https://oiqemploilaravel-uat.logientlab.com/admin/login
${URL_Site_emploi_employeurs}=    https://entreprises-int.oiq.qc.ca/OIQ/EntrepriseConnexion/ConnexionSiteEmploiUAT.aspx?client_id=TestSiteEmploiUAT&redirect_uri=https:%2F%2Foiqemploilaravel-uat.logientlab.com%2Fapi%2Fsocial_login_process%3Fprovider%3Dimis&scope=&response_type=code&state=TbbAijdw3wbfPN7WRUM9mCZ4Xua3N2e6OnpDszkp
${Navigateur}=    chrome

  
*** Keywords ***
En tant qu’Admin OIQ, je me connecte à Laravel 
    Open Browser    ${URL_Site_emploi_Admin_OIQ}    ${Navigateur}
    #Set Window Size    1900    2000
    Maximize Browser Window
    Input Text    xpath://input[@id="username"]    admin_user
    Input Password    xpath://input[@id="password"]    7HDIpUH6F%!97Md%     
    Click Button    //button[@class="btn btn-outline-primary btn-sm"]
En tant qu’Admin OIQ, je rentre au Site d’emploi à partir de Laravel 
    Wait Until Element Is Visible    (//span[@class="d-none d-md-block ml-1"])[1]
    Click Element    (//span[@class="d-none d-md-block ml-1"])[1]
    Click Element    //a[@class="logo-footer"]

En tant que responsable principal.e / Administrateur Client, je me connecte à Laravel
    Open Browser    ${URL_Site_emploi_employeurs}    ${Navigateur}
    Maximize Browser Window
    Input Text    //*[@id="ctl01_TemplateBody_WebPartManager1_gwpciModuleconnexion_ciModuleconnexion_signInUserName"]    charlotte@diageo.ca
    Set Selenium Implicit Wait    10 
    Input Password    xpath://input[@name="ctl01$TemplateBody$WebPartManager1$gwpciModuleconnexion$ciModuleconnexion$signInPassword"]    oiq1234     
    Click Button    //*[@id="ctl01_TemplateBody_WebPartManager1_gwpciModuleconnexion_ciModuleconnexion_SubmitButton"]

En tant que XXX, je rentre dans la 1er étape du processus d’achat
    Execute JavaScript    window.scrollBy(0,300)
    Click Element    //a[@data-item-id="37"]
    Set Selenium Implicit Wait    10 
    Click Element    //a[@data-item-id="90"]
    Click Element    (//a[@class="btn-arrow"])[1]
    Wait Until Element Is Visible    //a[@class="mw-checkout-modal-buttons btn btn-primary float-end ms-2"]
    Click Element    //a[@class="mw-checkout-modal-buttons btn btn-primary float-end ms-2"]
    Sleep    2
En tant que XXX, je rentre dans la 2e étape du processus d’achat
    Click Element    //button[@id="promo-cart"]
    Sleep    2
    Wait Until Page Contains    J'accepte les conditions générales et vie privé
    Wait Until Element Is Enabled    //div[@class="terms-check"]
    Wait Until Element Is Visible    //div[@class="terms-check"]
    #Checkbox Should Be Selected    //div[@class="terms-check"]
    #Mouse Down    //div[@class="terms-check"]
    #Click Element    //div[@class="terms-check"]
    #Click Element At Coordinates    //div[@class="terms-check"]    0    0
    #Click Element    //a[@id="pre-submit"]
    #Sleep    2
    Wait Until Element Is Enabled    //input[@type="checkbox"]
    Wait Until Element Is Visible    //input[@type="checkbox"]
    Set Selenium Implicit Wait    10
    #Scroll Element Into View    //a[@itemprop="url" and @data-item-id="11"]
    #Scroll Element Into View    (//span[text()= "Centre d'aide" ])[2]
    #Scroll Element Into View    //a[@id="pre-submit"]
    Execute JavaScript    window.scrollBy(0,700)
    Sleep    1
    Click Element    //input[@type="checkbox"]
    Click Element    //a[@id="pre-submit"]
En tant que XXX, je rentre dans la 3e étape du processus d’achat
    Wait Until Element Is Visible    //h2[@class="is-process"]
    Element Should Be Visible    //h2[@class="is-process"]
    Element Text Should Be    //h2[@class="is-process"]    Processus d'achat
    Wait Until Element Is Visible    //h5[text()= "Informations de facturation" ]
    Element Should Be Visible    //h5[text()= "Informations de facturation" ]
    Element Text Should Be    //h5[text()= "Informations de facturation" ]    Informations de facturation
    Wait Until Element Is Visible    (//div[@class="box-title"])[1]
    Element Should Be Visible    (//div[@class="box-title"])[1]
    #BUG Element Text Should Be    (//div[@class="box-title"])[1]    Informations personnelles
    Wait Until Element Is Visible    //div[@class="prefix"][text()="Prénom" ]
    Element Should Be Visible    //div[@class="prefix"][text()="Prénom" ]
    Element Text Should Be    //div[@class="prefix"][text()="Prénom" ]    PRÉNOM
    Wait Until Element Is Visible    //div[@class="prefix"][text()="Nom" ]
    Element Should Be Visible    //div[@class="prefix"][text()="Nom" ]
    Element Text Should Be    //div[@class="prefix"][text()="Nom" ]    NOM
    Wait Until Element Is Visible    //div[@class="prefix"][text()="Poste dans l'entreprise" ]
    Element Should Be Visible    //div[@class="prefix"][text()="Poste dans l'entreprise" ]
    Element Text Should Be    //div[@class="prefix"][text()="Poste dans l'entreprise" ]    POSTE DANS L'ENTREPRISE
    Wait Until Element Is Visible    //div[@class="prefix"][text()="Groupe" ]
    Element Should Be Visible    //div[@class="prefix"][text()="Groupe" ]
    Element Text Should Be    //div[@class="prefix"][text()="Groupe" ]    GROUPE
    Wait Until Element Is Visible    //div[@class="box-title"][text()="Informations de l'entreprise" ]
    Element Should Be Visible    //div[@class="box-title"][text()="Informations de l'entreprise" ]
    Element Text Should Be    //div[@class="box-title"][text()="Informations de l'entreprise" ]    Informations de l'entreprise
    Wait Until Element Is Visible    //div[@class="prefix"][text()="Entreprise" ]
    Element Should Be Visible    //div[@class="prefix"][text()="Entreprise" ]
    Element Text Should Be    //div[@class="prefix"][text()="Entreprise" ]    ENTREPRISE
    Wait Until Element Is Visible    //div[@class="prefix"][text()="Adresse" ]
    Element Should Be Visible    //div[@class="prefix"][text()="Adresse" ]
    Element Text Should Be    //div[@class="prefix"][text()="Adresse" ]    ADRESSE
    Wait Until Element Is Visible    //h5[text()="Mode de paiement"]
    Element Should Be Visible    //h5[text()="Mode de paiement"]
    Element Text Should Be    //h5[text()="Mode de paiement"]    Mode de paiement
    Wait Until Element Is Visible    //span[@class="is-process"]
    Element Should Be Visible    //span[@class="is-process"]
    Element Text Should Be    //span[@class="is-process"]    Toutes les transactions sont sécurisées et chiffrées.
    Page Should Contain Radio Button    (//input[@type="radio"])[1]
    Wait Until Element Is Visible    (//div[@class="custom-control custom-radio checkout-v2-radio pl-0 pt-2"])[1]
    Element Should Be Visible    (//div[@class="custom-control custom-radio checkout-v2-radio pl-0 pt-2"])[1]
    Element Text Should Be    (//div[@class="custom-control custom-radio checkout-v2-radio pl-0 pt-2"])[1]    Carte de crédit
    Page Should Contain Radio Button    (//input[@type="radio"])[2]
    Wait Until Element Is Visible    (//div[@class="custom-control custom-radio checkout-v2-radio pl-0 pt-2"])[2]
    Element Should Be Visible    (//div[@class="custom-control custom-radio checkout-v2-radio pl-0 pt-2"])[2]
    Element Text Should Be    (//div[@class="custom-control custom-radio checkout-v2-radio pl-0 pt-2"])[2]    Paypal
    Execute JavaScript    window.scrollBy(0,1000)
    Sleep    1
    Click Element    (//div[@class="custom-control custom-radio checkout-v2-radio pl-0 pt-2"])[2]
    Click Element    (//div[@class="custom-control custom-radio checkout-v2-radio pl-0 pt-2"])[1]
    


    
En tant que XXX, je veux créer une offre : Détail de l'offre
    Click Element    //a[@class="btn-arrow white btn-offer-creation"]
    Wait Until Element Is Visible    //h5[text()="Détails de l'offre"]
    Element Should Be Visible    //h5[text()="Détails de l'offre"]
    Element Text Should Be    //h5[text()="Détails de l'offre"]    Détails de l'offre

En tant que XXX, je navigue dans la section "Mes communications"
    Click Element    //a[@data-item-id="95"]
    Wait Until Element Is Visible    //a[@data-item-id="38"]
    Element Should Be Visible    //a[@data-item-id="38"]
    Element Text Should Be    //a[@data-item-id="38"]    Mes alertes
    Wait Until Element Is Visible    //a[@data-item-id="39"]
    Element Should Be Visible    //a[@data-item-id="39"]
    Element Text Should Be    //a[@data-item-id="39"]    Entreprises suivies
    Wait Until Element Is Visible    //a[@data-item-id="96"]
    Element Should Be Visible    //a[@data-item-id="96"]
    Element Text Should Be    //a[@data-item-id="96"]    Infolettre

    
    
    