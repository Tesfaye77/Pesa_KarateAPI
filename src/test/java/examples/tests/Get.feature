@GetScenario
Feature: GET API Demo

  Background:
    * url  baseUrl
    * header Content-type = 'application/json'
    * header Authorization = authorization

    @Get01
    Scenario: GET all users
      Given path '/api/v1/user'
      When method GET
      Then status 200
      And print response
      And match response[0].last_name != null
      And assert response.length == 21
      And print responseStatus

     @Get02
  Scenario: GET user infos
    Given path '/api/v1/user/63ca63e13b641efd19438730'
    When method GET
    Then status 200
    And print response
    And match response.last_name  == 'fafniru'
    And assert response.length  == null
    And print responseStatus

    @Get03
  Scenario: GET all wallet
    Given path '/api/v1/wallet'
    When method GET
    Then status 200
    And print response
    And match response[0].initial_value == 0
    And assert response.length == 38
    And print responseStatus


   @Get04
  Scenario: GET wallet info
    Given path '/api/v1/wallet/63df5c36ad437ea9f60e8034'
    When method GET
    Then status 200
    And print response
    And match response.initial_value == 0
    And assert response.length == null
    And print responseStatus


  @Get05
  Scenario: GET wallet info by user id
    Given path '/api/v1/wallet/user/63c80c13e56165ca64b4a6cb'
    When method GET
    Then status 200
    And print response
    And print responseStatus


  @Get06
  Scenario: GET all products
    Given path '/api/v1/product'
    When method GET
    Then status 200
    And print response
    And assert response.length != null
    And print responseStatus


  @Get07
  Scenario: GET product BY ID
    Given path '/api/v1/product/63e4f9e4e1cbdc16bbbe9d82'
    When method GET
    Then status 200
    And print response
    And match response.designation == 'SC GRé'
    And print responseStatus


  @Get08
  Scenario: GET all record of product subscription
    Given path '/api/v1/product-subscription'
    When method GET
    Then status 200
    And print response
    And assert response.length != null
    And print responseStatus


  @Get09
  Scenario: GET specific product subscription by user_id
    Given path '/api/v1/product-subscription/user/63d2908040de16f6e3ab7b93'
    When method GET
    Then status 200
    And print response
    And assert response.length != null
    And print responseStatus



  @Get10
  Scenario: GET specific product subscription by product_id
    Given path '/api/v1/product-subscription/product/63d2a4867ab834e9abe21c21'
    When method GET
    Then status 200
    And print response
    And assert response.length != null
    And print responseStatus



  @Get11
  Scenario: GET one record of product subscription by id
    Given path '/api/v1/product-subscription/63d2a4867ab834e9abe21c21'
    When method GET
    Then status 200
    And print response
    And assert response.length == null
    And print responseStatus