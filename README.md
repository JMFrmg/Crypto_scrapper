# Bienvenue sur mon script Crypto_scrapper!

# Fonction :
Ce programme n'a qu'une seule fonction. L'utilisateur doit choisir le nom d'une crypto-monnaie dans un menu déroulant. Le cours actuel de cette monnaie lui est alors renvoyé.

# Fonctionnement :
* Une requête GET avec comme adresse root transmise par l'utilisateur est envoyée à la méthode home du controlleur cryptos.
* Celui-ci crée un objet de la classe ScrapCryptos (app/services/scrap_cryptos.rb).
* La méthode get_cryptos de cet objet scrappe sur un site internet les noms de toutes les crypto_monnaies et les renvoie sous la forme d'une liste
* A partir de cette liste, une page html est générée avec un menue déroulant qui permet à l'utilisateur de choisir une crypto-monnaie
* Le choix de l'utilisateur est transmis par une requête POST à la méthode search du controlleur cryptos.
* Celui-ci stocke le nom de la crypto-monnais dans une variable
* Il génère un nouvel objet de la classe ScrapCrypto
* La méthode get_cryptos de cet objet renvoie un Hash avec comme clés tous les noms des crypto-monnaies et comme valeurs leurs cours actuels
* Une page html est générée. Le nom de la crypto-monnaie est obtenue à partir de la variable crée dans le controlleur. Le cours est obtenue en effectuant une recherche dans le Hash avec cette même variable (les noms des crypto-monnaies étant les clés du Hash)
* La page html est renvoyé à l'utilisateur. Un lien permet de le rediriger vers la page home. Il peut alors faire une nouvelle recherche.

Bonne lecture !
