Feature: Text filter
  Scenario: First
    When I browse to the "/"
    When I enter "gutierrez" into "input.search" field
    Then the css element ".table tbody tr td" should contain the text "Gutierrezp"
    Then I should see "Gutierrez" in "firstName" column in row "1" of "student.table" table
    When I enter "35" into "input.search" field
    Then the css element "td:nth-of-type(3)" should contain the text "35"
    Then I should see "austin.harvey@undefined.org" in "email" column in row "1" of "student.table" table

  Scenario: Second
    When I browse to the "/"
    When I enter "99" into "input.phone" field
    Then the css element "td:nth-of-type(2)" should contain the text "Ryan"
    Then I should see "Rose" in "lastName" column in row "2" of "student.table" table