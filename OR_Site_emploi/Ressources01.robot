*** Settings ***
Library    SeleniumLibrary
Library    XML
Resource    ../../PJ02_Robot_pj1/Ressources/ressosyncho01.robot

*** Variables ***
${URL_Site_emploi}=    https://oiqemploilaravel-uat.logientlab.com/admin/login
${Navigateur}=    chrome
  
*** Keywords ***
En tant qu’Admin OIQ, je me connecte à Laravel 
    Open Browser    ${URL_Site_emploi}    ${Navigateur}
    #Set Window Size    1900    2000
    Maximize Browser Window
    Input Text    xpath://input[@id="username"]    admin_user
    Input Password    xpath://input[@id="password"]    7HDIpUH6F%!97Md%     
    Click Button    //button[@class="btn btn-outline-primary btn-sm"]
En tant qu’Admin OIQ, je rentre au Site d’emploi à partir de Laravel 
    Wait Until Element Is Visible    (//span[@class="d-none d-md-block ml-1"])[1]
    Click Element    (//span[@class="d-none d-md-block ml-1"])[1]
En tant qu’Admin OIQ, je rentre dans la 1er étape du processus d’achat  
    Click Element    //a[@data-item-id="37"]
    Click Element    //a[@data-item-id="90"]
    Click Element    (//a[@class="btn-arrow"])[1]
    Wait Until Element Is Visible    //a[@class="mw-checkout-modal-buttons btn btn-primary float-end ms-2"]
    Click Element    //a[@class="mw-checkout-modal-buttons btn btn-primary float-end ms-2"]
    Sleep    2
    #Wait Until Element Is Visible    //*[@id="terms-check"and@name="terms-check"]
    #Select Checkbox    //input[@id="terms-check"]
    #Click Element    //input[@type="checkbox"]
    #Scroll Element Into View    //*[@id="terms-check"and@name="terms-check"]
    #Sleep    3
    #Click Element    //*[@id="terms-check"and@name="terms-check"]
    #Set Selenium Implicit Wait    10
    #Click Element At Coordinates    //div[@class="terms-check"]    1309    606
    #Sleep    3
    #Scroll Element Into View    //*[@id="terms-container"] 
    #Set Selenium Implicit Wait    5
En tant qu’Admin OIQ, je rentre dans la 2e étape du processus d’achat
    Click Element    //button[@id="promo-cart"]
    #Click Element    //a[@type="button"]
    #Scroll Element Into View    a[@type="button"]
    Sleep    2
    #Set Selenium Implicit Wait    10
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
En tant qu’Admin OIQ, je rentre dans la 3e étape du processus d’achat
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
    #Execute Javascript    window.scrollTo(0,400)
    #Sleep    1
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
    Element Text Should Be    (//div[@class="custom-control custom-radio checkout-v2-radio pl-0 pt-2"])[1]    Moneris payment
    Page Should Contain Radio Button    (//input[@type="radio"])[2]
    Wait Until Element Is Visible    (//div[@class="custom-control custom-radio checkout-v2-radio pl-0 pt-2"])[2]
    Element Should Be Visible    (//div[@class="custom-control custom-radio checkout-v2-radio pl-0 pt-2"])[2]
    Element Text Should Be    (//div[@class="custom-control custom-radio checkout-v2-radio pl-0 pt-2"])[2]    Paypal Express
    Execute JavaScript    window.scrollBy(0,1000)
    Sleep    1
    Click Element    (//div[@class="custom-control custom-radio checkout-v2-radio pl-0 pt-2"])[2]
    Click Element    (//div[@class="custom-control custom-radio checkout-v2-radio pl-0 pt-2"])[1]
    


    
En tant qu’Admin OIQ, je veux créer une offre : Détail de l'offre
    Click Element    //a[@class="btn-arrow white btn-offer-creation"]
    Wait Until Element Is Visible    //h5[text()="Détails de l'offre"]
    Element Should Be Visible    //h5[text()="Détails de l'offre"]
    Element Text Should Be    //h5[text()="Détails de l'offre"]    Détails de l'offre
    
    
    