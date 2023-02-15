@Login
Feature: User Login


  Background:
    * url  baseUrl
    * header Content-type = 'application/json'
    * def requestBody = read("datas/logindata.json")


    @log01
  Scenario: Login user to PESA Solutions
    Given path '/api/v1/auth/login'
    And request requestBody
    When method POST
    Then status 201
    And print response