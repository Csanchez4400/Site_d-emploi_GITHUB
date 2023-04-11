*** Settings ***
Variables    ../Page_objects/Locators_site_emploi.py
Library    SeleniumLibrary


*** Keywords ***
2e étape du processus d’achat
    Click Element    ${page_Site_emploi_Panier_bouton_Appliquer}
    Execute JavaScript    window.scrollBy(0,700)
    Sleep    1
    Click Element    ${page_Site_emploi_Panier_check_box_Accepter_conditions}
    Click Element    ${page_Site_emploi_Panier_bouton_Passer_à_la_caisse}
2e étape du processus d’achat de tous les produits
    Sleep    1
    Execute JavaScript    window.scrollBy(0,500)
    Sleep    1
    Click Element    ${page_Site_emploi_Panier_bouton_Appliquer}
    Execute JavaScript    window.scrollBy(0,700)
    Sleep    1
    Click Element    ${page_Site_emploi_Panier_check_box_Accepter_conditions}
    Click Element    ${page_Site_emploi_Panier_bouton_Passer_à_la_caisse}


    