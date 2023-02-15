@PostScenario
Feature: POST API Demo


  Background:
    * url  baseUrl
    * header Content-type = 'application/json'
    * def requestBody = read("datas/registerdata.json")
    * header Authorization = authorization


    @Post01
  Scenario: Create user to PESA Solutions
    Given path '/api/v1/user/register'
    And request requestBody[0]
    When method POST
    Then status 201
    And print response



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

