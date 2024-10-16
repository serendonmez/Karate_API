Feature:JPH03 Kullanici test Datalarini feature icinde testten önce tanimlayabilmeli
Background: Test datalarini tanimlama

  * def baseUrl = 'https://jsonplaceholder.typicode.com'
  * def pathParams = '/posts/70'
  * def requestBody =
  """

  {
    "userId": 10,
    "id": 70,
    "title": "Michael",
    "body": "Adams"
  }
  """

  * def expectedResponse =
  """
  {
    "userId": 10,
    "id": 70,
    "title": "Michael",
    "body": "Adams"
  }
  """



  Scenario: TC03 Background Kullanilabilmeli
    Given url baseUrl
    And path pathParams
    And request requestBody
    When method PUT
    Then status 200
    And match header Content-Type == 'application/json; charset=utf-8'
    And match header Connection == 'keep-alive'


    # And match response.id == expectedResponse.id
    # And match response.userId == expectedResponse.userId
    #Respons ile expected response in ayni oldugunu
    # test etmek icin tek tek tüm attribute leri karsilastirmaya gerek yok
    # direkt JSON object leri karsilastirabiliriz

    And match response == expectedResponse

