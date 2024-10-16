Feature: JPH04 Kullanici Json object olan datalari kullanabilmeli
  Background:
    * def baseUrl = 'https://jsonplaceholder.typicode.com'
    * def pathParams = '/posts/70'
    * def requestBody = read("td_requestBody.json")
    * def expectedBody = read("td_expectedBody.json")


  Scenario: TC04 disardan Json Object kullanilabilmeli

    Given url  baseUrl
    When path  pathParams
    And request requestBody
    When method  PUT
    Then status  200
    And match header Content-Type == 'application/json; charset=utf-8'
    And match header Connection == 'keep-alive'
    And match response == expectedBody




