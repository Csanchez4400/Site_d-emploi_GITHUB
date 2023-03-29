*** Settings ***
Variables    ../Page_objects_Site_emploi/Locators_site_emploi.py
Library    SeleniumLibrary

*** Keywords ***
1er étape du processus d’achat
    Execute JavaScript    window.scrollBy(0,300)
    Click Element    ${page_Site_emploi_Home_Forfaits}
    Set Browser Implicit Wait    10
    Click Element    ${page_Site_emploi_Home_Acheter_un_forfait}
    Click Element    ${page_Site_emploi_Acheter_un_forfait_bouton_Ajouter_au_panier}
    Click Element    ${page_Site_emploi_Acheter_un_forfait_popup_bouton_Passer_à_la_caisse}
   