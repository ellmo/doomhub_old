Feature: Log-in and Registration

  Scenario: Log-in form visibility
    Given I am NOT logged in
    And I am on page "root"
    And I see "Log in" link
    When I follow "Log in" link
    Then I end up on page "login"
    And I see login form

  Scenario Outline: Log-in with either email or login
    Given I am NOT logged in
    And there are following users in database
      | email               | login | password |
      | ellmunzai@gmail.com | ellmo | haslo123 |
    And I am on page "login"
    When I fill the login form with
      | user_login       | user_password |
      | <login_or_email> | <pass>        |
    And I click "Log in" button
    Then I end up on page "root"
    And I see text "Hello, ellmo."

    Examples:
      | login_or_email      | pass     |
      | ellmo               | haslo123 |
      | ellmunzai@gmail.com | haslo123 |

  Scenario: Log-out visibility
    Given I am logged in
    And I am on page "root"
    Then I see "Log out" link
  
  Scenario: Log-out
    Given I am logged in as "ellmo"
    When I follow "Log out" link
    Then I do NOT see "Log out" link
    And I do NOT see text "Hello, ellmo."
