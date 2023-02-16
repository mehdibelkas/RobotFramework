*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${emptyText}    

*** Test Cases ***
*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://magento.softwaretestingboard.com/
${browser}    Chrome
*** Test Cases ***
# Partie redondonte à supprimer 
Accèss au catalogue
    Open Browser    ${url}    ${browser}
    Wait Until Element Is Visible    id:ui-id-4    15
    Click Element        id:ui-id-4
    location should be    https://magento.softwaretestingboard.com/women.html
    Wait Until Element Is Visible    class:item    10
    Click Element  xpath://a[contains(text(),"Tops")]
    #Location Should Be    https://magento.softwaretestingboard.com/women/tops-women.html
Ajouter au panier
    Wait Until Element Is Visible    id:option-label-size-143-item-168    15
    Click Element    id:option-label-size-143-item-168
    Click Element    id:option-label-color-93-item-60
    Wait Until Element Is Enabled    class:actions-primary
    Click Element    class:actions-primary 
    Wait Until Page Contains Element    class:price-excluding-tax    15
    Click Element   class:minicart-wrapper
    Page Should Contain    Breathe-Easy Tank
    Go To    https://magento.softwaretestingboard.com/checkout/#shipping
# Partie redondonte à supprimer

    Wait Until Element Is Visible    class:opc-progress-bar    30
    Wait Until Element Is Visible    id:tooltip    30

    Input Text    id:customer-email    random@mail.com
    Input Text    name:firstname    testeur            
    Input Text    name:lastname    NomTesteur
    Input Text    name:street[0]    12 Rue du testeur
    Input Text    name:city    Testcity
    Select From List By Index    name:region_id    1
    Input Text    name:postcode    12345
    Select From List By Index    name:country_id    1
    Input Text    name:telephone    061234567890
    Click Element   name:ko_unique_2   
    Wait Until Element Is Visible    xpath://span[contains(text(),"Next")]    15
    Click Element    xpath://span[contains(text(),"Next")] 
    

    Sleep    20 seconds
