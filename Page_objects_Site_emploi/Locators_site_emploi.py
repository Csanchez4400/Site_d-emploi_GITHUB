# Localisateurs pour Admin_Connexion_Site_emploi
page_de_connexion_username_Admin="//input[@id='username']"
page_de_connexion_password_Admin="//input[@id='password']"
page_de_connexion_bouton_connexion_Admin="//button[@class='btn btn-outline-primary btn-sm']"
page_Laravel_bouton_Site_Web_Admin="(//span[@class='d-none d-md-block ml-1'])[1]"
page_Site_emploi_Logo_ING="//a[@class='logo-footer']"

# Localisateurs pour Employeur_Connexion_Site_emploi
page_de_connexion_username_Employeur="//*[@id='ctl01_TemplateBody_WebPartManager1_gwpciModuleconnexion_ciModuleconnexion_signInUserName']"
page_de_connexion_password_Employeur="//input[@name='ctl01$TemplateBody$WebPartManager1$gwpciModuleconnexion$ciModuleconnexion$signInPassword']"
page_de_connexion_bouton_connexion_Employeur="//*[@id='ctl01_TemplateBody_WebPartManager1_gwpciModuleconnexion_ciModuleconnexion_SubmitButton']"

# Home
page_Site_emploi_Home_Forfaits="//a[@data-item-id='37']"
page_Site_emploi_Home_Acheter_un_forfait="//a[@data-item-id='90']"
page_Site_emploi_Home_Mes_forfaits='//a[@data-item-id="83"]'

# 1er étape du processus d’achat
page_Site_emploi_Acheter_un_forfait_bouton_Ajouter_au_panier='//a[@class="btn-arrow" and @onclick="mw.cart.add(\'.forfait.item-32\');"]' #Forfait_1_membre
page_Site_emploi_Acheter_un_forfait_popup_bouton_Passer_à_la_caisse='//a[@class="mw-checkout-modal-buttons btn btn-primary float-end ms-2"]'
page_Site_emploi_Acheter_un_forfait_bouton_Ajouter_au_panier_Forfait_5_membre='//a[@class="btn-arrow" and @onclick="mw.cart.add(\'.forfait.item-33\');"]'
page_Site_emploi_Acheter_un_forfait_bouton_Ajouter_au_panier_Forfait_10_membre='//a[@class="btn-arrow" and @onclick="mw.cart.add(\'.forfait.item-34\');"]'
page_Site_emploi_Acheter_un_forfait_bouton_Ajouter_au_panier_Forfait_20_membre='//a[@class="btn-arrow" and @onclick="mw.cart.add(\'.forfait.item-35\');"]'
page_Site_emploi_Acheter_un_forfait_bouton_Ajouter_au_panier_Forfait_1_cpi='//a[@class="btn-arrow" and @onclick="mw.cart.add(\'.forfait.item-36\');"]'
page_Site_emploi_Acheter_un_forfait_bouton_Ajouter_au_panier_Offre_vedette='//a[@class="btn-arrow" and @onclick="mw.cart.add(\'.forfait.item-31\');"]'
page_Site_emploi_Acheter_un_forfait_bouton_Ajouter_au_panier_Extension='//a[@class="btn-arrow" and @onclick="mw.cart.add(\'.forfait.item-37\');"]'
page_Site_emploi_Acheter_un_forfait_popup_bouton_Continuer_magasinage='//a[@class="mw-checkout-modal-buttons btn btn-outline-primary"]'


# 2e étape du processus d’achat
page_Site_emploi_Panier_bouton_Appliquer='//button[@id="promo-cart"]'
page_Site_emploi_Panier_textclick_Accepter_conditions='//div[@class="terms-check"]'
page_Site_emploi_Panier_check_box_Accepter_conditions='//input[@type="checkbox"]'
page_Site_emploi_Panier_bouton_Passer_à_la_caisse='//a[@id="pre-submit"]'

# 3e étape du processus d’achat
page_Site_emploi_Processus_achat_titre_Processus_achat='//h2[@class="is-process"]'
page_Site_emploi_Processus_achat_titre_Info_facturation='//h5[text()= "Informations de facturation" ]'
page_Site_emploi_Processus_achat_titre_Info_personnelles='(//div[@class="box-title"])[1]'
page_Site_emploi_Processus_achat_titre_Prenom='//div[@class="prefix"][text()="Prénom" ]'
page_Site_emploi_Processus_achat_titre_Nom='//div[@class="prefix"][text()="Nom" ]'
page_Site_emploi_Processus_achat_titre_Poste_entreprise='//div[@class="prefix"][text()="Poste dans l\'entreprise" ]'
page_Site_emploi_Processus_achat_titre_Groupe='//div[@class="prefix"][text()="Groupe" ]'
page_Site_emploi_Processus_achat_titre_Info_entreprise='//div[@class="box-title"][text()="Informations de l\'entreprise" ]'
page_Site_emploi_Processus_achat_titre_Entreprise='//div[@class="prefix"][text()="Entreprise" ]'
page_Site_emploi_Processus_achat_titre_Adresse='//div[@class="prefix"][text()="Adresse" ]'
page_Site_emploi_Processus_achat_titre_Mode_paiement='//h5[text()="Mode de paiement"]'
page_Site_emploi_Processus_achat_texte_Toutes_transactions_chiffrées='//span[@class="is-process"]'
page_Site_emploi_Processus_achat_bouton_Paypal='//input[@id="payment-option-1"]'
page_Site_emploi_Processus_achat_checkbox_Copie_compte_payable='//input[@id="copy-send"]'
page_Site_emploi_Processus_achat_bouton_Reviser='//a[@id="btn-reviser"]'
page_Site_emploi_Processus_achat_imgage_Paypal='//div[@id="paypal"]'
page_Site_emploi_Processus_achat_checkbox_conditions_vie_privee='//div[@class="checkmark"]'
page_Site_emploi_Processus_achat_bouton_completer_achat='//button[@id="btn-complete"]'

# Paypal
page_Paypal_img_Paypal='//p[@class="paypal-logo paypal-logo-long"]'
page_Paypal_username_Paypal='//input[@id="email"]'
page_Paypal_password_Paypal='//input[@id="password"]'
page_Paypal_bouton_connexion_Paypal='//button[@id="btnLogin"]'
page_Paypal_checkbox_Make_this_my_preferred_rate='CC-4GJCCSD6F3QNU-make-preferred'
page_Paypal_boutton_completer_purchase='//button[@id="payment-submit-btn"]'
page_Paypal_bouton_retour_merchant_Paypal='//button[@class="donepage-return-to-merchant-button css-2vilsm-button-button-Button-css-buttonStyles-buttonStyles"]'




