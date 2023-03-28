*** Settings ***
Resource    ../OR_Site_emploi/Ressources01.robot

*** Test Cases ***
TC_01_processus_d'achat
    En tant qu’Admin OIQ, je me connecte à Laravel
    En tant qu’Admin OIQ, je rentre au Site d’emploi à partir de Laravel
    En tant qu’Admin OIQ, je rentre dans la 1er étape du processus d’achat
    En tant qu’Admin OIQ, je rentre dans la 2e étape du processus d’achat
    En tant qu’Admin OIQ, je rentre dans la 3e étape du processus d’achat
TC_02_Création_offre
    En tant qu’Admin OIQ, je me connecte à Laravel
    En tant qu’Admin OIQ, je rentre au Site d’emploi à partir de Laravel
    En tant qu’Admin OIQ, je veux créer une offre : Détail de l'offre