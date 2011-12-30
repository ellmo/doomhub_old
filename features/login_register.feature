Feature: Login and Registration

  Scenario: Widoczność formularza logowania
    Given I am on page "root"
    And I see "Log in" link
    When I follow "Log in" link
    Then I end up on page "login"
    And I see login form

  @wip
  Scenario Outline: logowanie emailem LUB loginem
    Given there are following users in database
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