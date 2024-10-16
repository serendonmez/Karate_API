Feature:  JPH02 PUT request sonucu donen response bilgilerini test eder
  Scenario: TC02 Put request sonucu donen expected degerlere uygun olmali
    
    Given url 'https://jsonplaceholder.typicode.com'
    And path  '/posts/70'
    And request
     """ {
        "userId": 10,
        "id": 70,
        "title": "Michael",
        "body": "Adams"
        }
     """

    When method PUT
    Then status 200
    And match header Content-Type == 'application/json; charset=utf-8'
    And match header Connection == 'keep-alive'
    And match response.title == 'Michael'
    And assert response.body == 'Adams'
    And assert response.userId == 10
    And match response.id == 70






