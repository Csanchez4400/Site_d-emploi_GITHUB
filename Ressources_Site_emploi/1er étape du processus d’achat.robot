*** Settings ***
Variables    ../Page_objects_Site_emploi/Locators_site_emploi.py
Library    SeleniumLibrary

*** Keywords ***
1er étape du processus d’achat Forfait 1 
    Execute JavaScript    window.scrollBy(0,300)
    Click Element    ${page_Site_emploi_Home_Forfaits}
    Set Browser Implicit Wait    10
    Click Element    ${page_Site_emploi_Home_Acheter_un_forfait}
    Click Element    ${page_Site_emploi_Acheter_un_forfait_bouton_Ajouter_au_panier}
    Click Element    ${page_Site_emploi_Acheter_un_forfait_popup_bouton_Passer_à_la_caisse}
1er étape sélectionner tous les boutons Ajouter au panier
    Execute JavaScript    window.scrollBy(0,300)
    Click Element    ${page_Site_emploi_Home_Forfaits}
    Set Browser Implicit Wait    10
    Click Element    ${page_Site_emploi_Home_Acheter_un_forfait}
    Click Element    ${page_Site_emploi_Acheter_un_forfait_bouton_Ajouter_au_panier}
    Click Element    ${page_Site_emploi_Acheter_un_forfait_popup_bouton_Continuer_magasinage}
    Click Element    ${page_Site_emploi_Acheter_un_forfait_bouton_Ajouter_au_panier_Forfait_5_membre}
    Sleep    3
    Click Element    ${page_Site_emploi_Acheter_un_forfait_popup_bouton_Continuer_magasinage}
    Sleep    3
    Execute JavaScript    window.scrollBy(0,500)
    Sleep    3
    Click Element    ${page_Site_emploi_Acheter_un_forfait_bouton_Ajouter_au_panier_Forfait_10_membre}
    Sleep    3
    Click Element    ${page_Site_emploi_Acheter_un_forfait_popup_bouton_Continuer_magasinage}
    Sleep    3
    Click Element    ${page_Site_emploi_Acheter_un_forfait_bouton_Ajouter_au_panier_Forfait_20_membre}
    Sleep    3
    Click Element    ${page_Site_emploi_Acheter_un_forfait_popup_bouton_Continuer_magasinage}
    Sleep    3
    Execute JavaScript    window.scrollBy(0,500)
    Sleep    3
    Click Element    ${page_Site_emploi_Acheter_un_forfait_bouton_Ajouter_au_panier_Forfait_1_cpi}
    Sleep    3
    Click Element    ${page_Site_emploi_Acheter_un_forfait_popup_bouton_Continuer_magasinage}
    Sleep    3
    Execute JavaScript    window.scrollBy(0,500)
    Sleep    3
    Click Element    ${page_Site_emploi_Acheter_un_forfait_bouton_Ajouter_au_panier_Offre_vedette}
    Sleep    3
    Click Element    ${page_Site_emploi_Acheter_un_forfait_popup_bouton_Continuer_magasinage}
    Sleep    3
    Click Element    ${page_Site_emploi_Acheter_un_forfait_bouton_Ajouter_au_panier_Extension}
    Sleep    3
    Click Element    ${page_Site_emploi_Acheter_un_forfait_popup_bouton_Passer_à_la_caisse}

1er étape du processus d’achat Forfait 5 
    Execute JavaScript    window.scrollBy(0,300)
    Click Element    ${page_Site_emploi_Home_Forfaits}
    Set Browser Implicit Wait    10
    Click Element    ${page_Site_emploi_Home_Acheter_un_forfait}
    Click Element    ${page_Site_emploi_Acheter_un_forfait_bouton_Ajouter_au_panier_Forfait_5_membre}
    Click Element    ${page_Site_emploi_Acheter_un_forfait_popup_bouton_Passer_à_la_caisse}

1er étape du processus d’achat Forfait 10 
    Execute JavaScript    window.scrollBy(0,300)
    Click Element    ${page_Site_emploi_Home_Forfaits}
    Set Browser Implicit Wait    10
    Click Element    ${page_Site_emploi_Home_Acheter_un_forfait}
    Execute JavaScript    window.scrollBy(0,300)
    Click Element    ${page_Site_emploi_Acheter_un_forfait_bouton_Ajouter_au_panier_Forfait_10_membre}
    Click Element    ${page_Site_emploi_Acheter_un_forfait_popup_bouton_Passer_à_la_caisse}
1er étape du processus d’achat Forfait 20 
    Execute JavaScript    window.scrollBy(0,300)
    Click Element    ${page_Site_emploi_Home_Forfaits}
    Set Browser Implicit Wait    10
    Click Element    ${page_Site_emploi_Home_Acheter_un_forfait}
    Sleep    1
    Execute JavaScript    window.scrollBy(0,300)
    Sleep    1
    Click Element    ${page_Site_emploi_Acheter_un_forfait_bouton_Ajouter_au_panier_Forfait_20_membre}
    Click Element    ${page_Site_emploi_Acheter_un_forfait_popup_bouton_Passer_à_la_caisse}
1er étape du processus d’achat Forfait 1 CPI 
    Execute JavaScript    window.scrollBy(0,300)
    Click Element    ${page_Site_emploi_Home_Forfaits}
    Click Element    ${page_Site_emploi_Home_Acheter_un_forfait}
        Sleep    1
    Execute JavaScript    window.scrollBy(0,1000)
    Sleep    1
    Click Element    ${page_Site_emploi_Acheter_un_forfait_bouton_Ajouter_au_panier_Forfait_1_cpi}
    Sleep    2
    Wait Until Element Is Enabled    ${page_Site_emploi_Acheter_un_forfait_popup_bouton_Passer_à_la_caisse}
    Click Element    ${page_Site_emploi_Acheter_un_forfait_popup_bouton_Passer_à_la_caisse}
    Set Browser Implicit Wait    10
1er étape du processus d’achat Offre en vedette
    Execute JavaScript    window.scrollBy(0,300)
    Click Element    ${page_Site_emploi_Home_Forfaits}
    Set Browser Implicit Wait    10
    Click Element    ${page_Site_emploi_Home_Acheter_un_forfait}
    Sleep    1
    Execute JavaScript    window.scrollBy(0,2000)
    Sleep    1
    Click Element    ${page_Site_emploi_Acheter_un_forfait_bouton_Ajouter_au_panier_Offre_vedette}
    Click Element    ${page_Site_emploi_Acheter_un_forfait_popup_bouton_Passer_à_la_caisse}
1er étape du processus d’achat Offre Extension
    Execute JavaScript    window.scrollBy(0,300)
    Click Element    ${page_Site_emploi_Home_Forfaits}
    Set Browser Implicit Wait    10
    Click Element    ${page_Site_emploi_Home_Acheter_un_forfait}
    Sleep    1
    Execute JavaScript    window.scrollBy(0,1500)
    Sleep    1
    Click Element    ${page_Site_emploi_Acheter_un_forfait_bouton_Ajouter_au_panier_Extension}
    Click Element    ${page_Site_emploi_Acheter_un_forfait_popup_bouton_Passer_à_la_caisse}

