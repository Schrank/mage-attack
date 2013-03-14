Feature: Unsafe admin login

  Scenario Outline: Easy Admin Logins
    Given I am on "/admin"
    When I fill in "login[username]" with "<user>"
    And I fill in "login[password]" with "<password>"
    And I press "Login"
    Then I should see text "Invalid User Name or Password."

  Examples:
    | user  | password |
    | admin | admin123 |
    | admin | admin    |
    | admin | 123456   |