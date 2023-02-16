*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${emptyText}    

*** Test Cases ***






















































Test Checkout
# Partie redondonte à supprimer 
    Open Browser    https://magento.softwaretestingboard.com/women/tops-women.html    chrome
    Click Element   id:option-label-size-143-item-168    
    Click Element   id:option-label-color-93-item-60    
    Click Element    class:actions-primary    
    Sleep    20 seconds
    Go To    https://magento.softwaretestingboard.com/checkout/#shipping
# Partie redondonte à supprimer 

    Wait Until Element Is Visible    class:opc-progress-bar    30
    Wait Until Element Is Visible    id:tooltip    30

    Input Text    id:customer-email    random@mail.com
    Input Text    name:firstname    testeur            
    Input Text    name:lastname    NomTesteur
    Input Text    id:PI5DK7F    12 Rue du testeur
    Input Text    id:HFHOWGR    Testcity
    Select From List By Index    id:K4YKHT6    1
    Sleep    20 seconds
