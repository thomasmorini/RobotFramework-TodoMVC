*** Settings ***
Library    SeleniumLibrary
Test Setup    Ouvrir La Page
Test Teardown    Close Browser

*** Variables ***
${URL}     https://demo.playwright.dev/todomvc/

*** Test Cases ***
Test 1 & Test 2 - Vérifier l'ouverture et la présence de la barre d'input
    Open Browser    ${URL}    chrome
    Page Should Contain Element    css=input.new-todo
    Close Browser

Test 3 & Test 4 - Entrer un texte dans le champ et valider l’ajout de la tâche.
    Click Element   css=input.new-todo
    Input text    css=input.new-todo    Tâche test
    Press Keys      css=input.new-todo    RETURN
    Sleep    0.25s
    Page Should Contain Element   xpath=//ul[@class='todo-list']/li/div/label    Tâche test

Test 5 & Test 6 - Définir une tâche comme terminée et vérifier l'affichage
    Ajouter Une Tâche    Tâche finie
    Click Element    xpath=//li[div/label[normalize-space()='Tâche finie']]//input[@class='toggle']
    Checkbox Should Be Selected    xpath=//li[div/label[normalize-space()='Tâche finie']]//input[@class='toggle']

Test 6 & Test 7 - Supprimer une tâche et vérifier la suppression
    Ajouter Une Tâche    Tâche terminée
    Mouse Over    xpath=//li[div/label[normalize-space()='Tâche terminée']]
    Click Element    xpath=//li[div/label[normalize-space()='Tâche terminée']]//button[@class='destroy']
    Page Should Not Contain Element    xpath=//li[div/label[normalize-space()='Tâche terminée']]

Test 9 - Vérifier que le compteur de tâches restantes est correct et les  
    Ajouter Une Tâche    Tâche 1
    Ajouter Une Tâche    Tâche 2
    Ajouter Une Tâche    Tâche 3
    Ajouter Une Tâche    Tâche 4
    Marquer Tâche Comme Terminée et Vérifier    Tâche 1
    Marquer Tâche Comme Terminée et Vérifier    Tâche 2
    Element Text Should Be    xpath=//span[@class='todo-count']/strong    2

Test 10 - Vérifier que les filtre "Toutes", "Actives", "Terminées" affichent les bonnes tâches
    Ajouter Une Tâche    Tâche 1
    Ajouter Une Tâche    Tâche 2
    Ajouter Une Tâche    Tâche 3
    Ajouter Une Tâche    Tâche 4
    Marquer Tâche Comme Terminée et Vérifier    Tâche 1
    Click Element    xpath=//a[normalize-space()='Active']
    Sleep    0.5s
    Vérifier tâche absente   Tâche 1
    Vérifier tâche présente    Tâche 2
    Vérifier tâche présente    Tâche 3
    Vérifier tâche présente    Tâche 4
    Click Element    xpath=//a[normalize-space()='Completed']
    Sleep    0.5s
    Vérifier tâche présente    Tâche 1
    Vérifier tâche absente    Tâche 2
    Vérifier tâche absente    Tâche 3
    Vérifier tâche absente    Tâche 4

Test 11 - Vérifier que le bouton 'Clear Completed' efface les tâches 'Terminées'
    Ajouter Une Tâche    Tâche 1
    Ajouter Une Tâche    Tâche 2
    Ajouter Une Tâche    Tâche 3
    Ajouter Une Tâche    Tâche 4
    Marquer Tâche Comme Terminée et Vérifier    Tâche 1
    Click element    xpath=//button[@class='clear-completed']
    Vérifier tâche absente   Tâche 1
    Vérifier tâche présente    Tâche 2
    Vérifier tâche présente    Tâche 3
    Vérifier tâche présente    Tâche 4

*** Keywords ***
Ouvrir La Page
    Open Browser    ${URL}    chrome
    Page Should Contain Element    css=input.new-todo

Ajouter Une Tâche
    [Arguments]    ${texte_tache}
    Click Element   css=input.new-todo
    Input text    css=input.new-todo    ${texte_tache}
    Press Keys      css=input.new-todo    RETURN
    Sleep    0.25s
    Page Should Contain Element   xpath=//ul[@class='todo-list']/li/div/label    ${texte_tache}

Marquer Tâche Comme Terminée et Vérifier
    [Arguments]    ${texte_tache}
    Click Element    xpath=//li[div/label[normalize-space()='${texte_tache}']]//input[@class='toggle']
    Checkbox Should Be Selected    xpath=//li[div/label[normalize-space()='${texte_tache}']]//input[@class='toggle']

Supprimer une tâche
    [Arguments]    ${texte_tache}
    Mouse Over    xpath=//li[div/label[normalize-space()='${texte_tache}']]
    Click Element    xpath=//li[div/label[normalize-space()='${texte_tache}']]//button[@class='destroy']
    Page Should Not Contain Element    xpath=//li[div/label[normalize-space()='${texte_tache}']]

Vérifier tâche présente
    [Arguments]    ${texte_tache}
    Page Should Contain    ${texte_tache}    

Vérifier tâche absente
    [Arguments]    ${texte_tache}
    Page Should Not Contain    ${texte_tache}