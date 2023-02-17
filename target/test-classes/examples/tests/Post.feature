@PostScenario
Feature: POST API Demo


  Background:
    * url  baseUrl
    * header Content-type = 'application/json'
    * def requestBody = read("datas/registerdata.json")
    * def requestUser = read("datas/create.json")
    * header Authorization = authorization


    @Post01
  Scenario Outline: Create user to PESA Solutions
    Given path '/api/v1/user/register'
    And request { "first_name":<first_name>, "last_name":<last_name>,"email":<email>,"phone":'<phone>',"birth_day": <birth_day>,"password": <password>,"role":<role>,"isActive": <isActive>,"isEmailConfirmed":<isEmailConfirmed>,"isCreatedByAdmin":<isCreatedByAdmin>}
    When method POST
    Then status 201
    And print response
      Examples:
        |requestUser  |



  @Post02
  Scenario: Create wallet to PESA Solutions
    Given path '/api/v1/wallet'
    And request requestBody[1]
    When method POST
    Then status 201
    And print response


  @Post03
  Scenario: Create product to PESA Solutions
    Given path '/api/v1/product'
    And request requestBody[2]
    When method POST
    Then status 201
    And print response


  @Post04
  Scenario: Create a product subscription
    Given path '/api/v1/product-subscription'
    And request requestBody[3]
    When method POST
    Then status 201
    And print response

