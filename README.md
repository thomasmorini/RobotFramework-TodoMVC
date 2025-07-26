## Mini-projet Robot Framework - TodoMVC avec SeleniumLibrary

Ce projet automatise des tests fonctionnels sur l’application web TodoMVC (https://demo.playwright.dev/todomvc/) avec Robot Framework et SeleniumLibrary.

## Description

Ce mini-projet démontre l’automatisation des scénarios suivants :  
- Ouverture de la page TodoMVC  
- Ajout de tâches  
- Marquage de tâches comme terminées  
- Suppression de tâches  
- Filtrage des tâches (Toutes, Actives, Terminées)  
- Validation du compteur de tâches restantes  
- Utilisation du bouton “Clear Completed”

Les tests sont organisés avec des mots-clés personnalisés pour faciliter la lecture et la maintenance.

## Prérequis

- Windows 10/11 (instructions données pour Windows, mais adaptable)  
- Python 3.x (https://www.python.org/downloads/windows/)  
- Google Chrome (version récente)  
- ChromeDriver compatible avec la version de Chrome (https://chromedriver.chromium.org/downloads)  
- Robot Framework et SeleniumLibrary (installés via pip, idéalement dans un environnement virtuel Python)

## Installation détaillée

1. **Installer Python 3.x**  
   Téléchargez et installez Python depuis https://www.python.org/downloads/windows/  
   Lors de l’installation, cochez “Add Python to PATH”.

2. **Créer un environnement virtuel (fortement recommandé)**  
Ouvrez PowerShell ou CMD dans le dossier du projet et lancez :  python -m venv env

Activez l’environnement virtuel :  
- PowerShell :  .\env\Scripts\Activate.ps1
- CMD :  env\Scripts\activate.bat

3. **Installer Robot Framework et SeleniumLibrary**  
Dans l’environnement activé, lancez :  pip install robotframework robotframework-seleniumlibrary


4. **Installer Google Chrome**  
Téléchargez et installez Chrome depuis https://www.google.com/chrome/

5. **Installer ChromeDriver**  
- Vérifiez la version de Chrome (Menu → Aide → À propos de Google Chrome)  
- Téléchargez la version correspondante sur https://chromedriver.chromium.org/downloads  
- Décompressez et placez `chromedriver.exe` dans un dossier de votre choix  
- Ajoutez ce dossier au PATH système :  
  - “Ce PC” → Propriétés → Paramètres système avancés → Variables d’environnement  
  - Modifier “Path” → Ajouter le chemin du dossier contenant `chromedriver.exe`  
- Redémarrez le terminal.

6. **Vérifier l’installation de ChromeDriver**  
Dans un terminal, tapez :  chromedriver --version → Vous devez voir la version apparaître sans erreur

1. Ouvrez un terminal dans le dossier du projet (avec l’environnement virtuel activé si utilisé).  
2. Lancez la commande :  robot todo_tests.robot
3. Chrome s’ouvrira, les tests s’exécuteront, puis le navigateur se fermera.  
4. Les rapports `report.html` et `log.html` seront générés dans le dossier courant. Ouvrez-les dans un navigateur pour voir les résultats.

Merci de votre attention !  
Thomas


