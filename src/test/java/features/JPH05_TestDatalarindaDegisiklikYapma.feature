Feature: JPH05 Kullanici feature disindan kullandigi JSON object  te degisiklik yapabilir

  Background:
    *  def baseUrl = 'https://jsonplaceholder.typicode.com'
    * def pathParams = '/posts/70'
    * def requestBody = read("td_requestBody.json")
    * def expectedBody = read("td_expectedBody.json")




  Scenario: TC05 Kullanici Request ve Expected Bodyleri set edebilir

    Given url baseUrl
    When path pathParams
    # Olusturdugumuz request ve expectedBodyleri set ile
    # update edebiliriz

    Then set requestBody.title = 'Karate'
    And set requestBody.body = 'Framework'
    Then request requestBody
    Then method PUT
    And status 200
    And match header Content-Type == 'application/json; charset=utf-8'
    And match header Connection == 'keep-alive'
    Then set expectedBody.title = 'Karate'
    And set expectedBody.body = 'Framework'
    And match response ==  expectedBody



