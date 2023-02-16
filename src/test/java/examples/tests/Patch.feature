@PatchScenario
Feature: Modify user


  Background:
    * url  baseUrl
    * header Content-type = 'application/json'
    * header Authorization = authorization
    * def requestBody = read("datas/body.json")
    * def id = "63e0bc33ecfed8f71bb7b5d4"
    * def id_product = "63e4f9e4e1cbdc16bbbe9d82"


    @Patch01
  Scenario: Update User pass
    Given path '/api/v1/user/' + id

    And print authorization
    And request requestBody
    When method PATCH
    Then status 200
    And print response

  @Patch02
  Scenario: Update Product
    Given path '/api/v1/product/' + id

    And print authorization
    And request requestBody[1]
    When method PATCH
    Then status 200
    And print response