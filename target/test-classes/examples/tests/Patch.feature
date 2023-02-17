@PatchScenario
Feature: Modify user


  Background:
    * url  baseUrl
    * header Content-type = 'application/json'
    * header Authorization = authorization
    * def requestBody = read("datas/patch.json")
    * def id = "63ef3db98b2891650680aa47"
    * def id_product = "63e4f9e4e1cbdc16bbbe9d82"


    @Patch01
  Scenario: Update User pass
    Given path '/api/v1/user/' + id

    And print authorization
    And request requestBody[0]
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