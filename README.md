# Mini-projet Robot Framework - TodoMVC avec SeleniumLibrary

Ce projet est une automatisation de tests pour l’application TodoMVC (https://demo.playwright.dev/todomvc/) réalisée avec Robot Framework et SeleniumLibrary.

## Description

L’objectif est de démontrer la capacité à automatiser des scénarios fonctionnels classiques d’une application web :  
- ouverture de la page,  
- ajout de tâches,  
- marquage des tâches comme terminées,  
- suppression des tâches,  
- vérification des filtres d’affichage (toutes, actives, terminées),  
- validation du compteur de tâches restantes,  
- gestion du bouton “Clear Completed”.

Les tests sont organisés en plusieurs cas et utilisent des mots-clés personnalisés pour la lisibilité et la réutilisabilité.

## Prérequis

- Python 3.x  
- Robot Framework (`pip install robotframework`)  
- SeleniumLibrary (`pip install robotframework-seleniumlibrary`)  
- Navigateur Chrome installé  
- ChromeDriver compatible avec ta version de Chrome (ajouté au PATH ou dans le dossier du projet)

## Structure du projet

- `todo_tests.robot` : fichier principal contenant tous les tests et mots-clés  
- `.gitignore` : pour ignorer les fichiers temporaires et logs  
- `README.md` : ce fichier  

## Comment lancer les tests

1. Ouvrir un terminal dans le dossier du projet.  
2. Lancer la commande suivante :  robot todo_tests.robot
