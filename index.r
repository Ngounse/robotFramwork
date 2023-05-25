*** Settings ***
Documentation                                      This is a basic test
Library                                            Selenium2Library

*** Variables ***
${url}                                              https://www.google.com
${browser}                                          chrome
${text}                                             xpath=//*[@type="search"]
${search_button}                                    name=btnK
${keyword}                                          robotframework

*** Test Cases ***

User fill in the Search text box
    [Documentation]                                 The user search 'robotframework'
    open browser                                    ${URL}    ${browser}
    wait until page contains                        ${URL}
    input text                                      ${text}  ${keyword}
    wait until page contains                        ${keyword}
    page should contain                               ${keyword}
    click element                                   ${search_button}
    page should contain                               ${keyword}
    sleep  5s
    Close Browser