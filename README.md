## Utilisation du module

* Ce module utilise les "hiera", veuillez créer un répertoire "postfix" dans le dossier hieradata.
* Dans ce nouveau répertoire veuillez créer un fichier portant le nom suivant : srv1.dev.yaml
* Ce fichier doit contenir ce qui suit :

```
---
postfix::mail_domain : 'example.com'
```
Remarque : ce paramètre fixe le domaine de messagerie utilisé par le serveur pour envoyer des messages.
