*** Settings ***
Resource    ../OR_Site_emploi/Ressources01.robot

*** Test Cases ***
TC_01 Connexion en tant qu'Admin au Site d'emploi
    En tant qu’Admin OIQ, je me connecte à Laravel
    En tant qu’Admin OIQ, je rentre au Site d’emploi à partir de Laravel
TC_02_processus_d'achat
    #En tant qu’Admin OIQ, je me connecte à Laravel
    #En tant qu’Admin OIQ, je rentre au Site d’emploi à partir de Laravel
    En tant que responsable principal.e / Administrateur Client, je me connecte à Laravel
    En tant que XXX, je rentre dans la 1er étape du processus d’achat
    En tant que XXX, je rentre dans la 2e étape du processus d’achat
    En tant que XXX, je rentre dans la 3e étape du processus d’achat
TC_03_Création_offre
    En tant qu’Admin OIQ, je me connecte à Laravel
    En tant qu’Admin OIQ, je rentre au Site d’emploi à partir de Laravel
    En tant que XXX, je veux créer une offre : Détail de l'offre
TC_04_Communications 
    En tant qu’Admin OIQ, je me connecte à Laravel
    En tant qu’Admin OIQ, je rentre au Site d’emploi à partir de Laravel
    En tant que XXX, je navigue dans la section "Mes communications"