Feature: Manage users
  In order to create a user
  As an admin
  I want manage an users

  Scenario: Register new user
    Given I am on the new user page
    When I fill in "Name" with "name 1"
    And I fill in "Email" with "email 1"
    And I fill in "Login" with "login 1"
    And I fill in "Password" with "password 1"
    And I press "Criar"
    Then I should see "O usuário foi criado com sucesso !!!"
    And I should see "name 1"
    And I should see "email 1"
    And I should see "login 1"
    And I should see "password 1"
		And I should have 1 users
	
	Scenario: Don't register new user
    Given I am on the new user page
    When I fill in "Name" with ""
    And I fill in "Email" with ""
    And I fill in "Login" with ""
    And I fill in "Password" with ""
    And I press "Criar"
    Then I should see "Name can't be blank"
    And I should see "Email can't be blank"
    And I should see "Login can't be blank"
    And I should see "Password can't be blank"
		And I should have 0 users

	Scenario: Edit user
		Given I have users called Rodrigo, Alfredo
		And I am on the new user page
		And I follow "Editar"
		Then the "Name" field should contain "Rodrigo"
		And the "Email" field should contain "Rodrigo@test.com"
		And the "Login" field should contain "Rodrigo"
		And the "Password" field should contain "Pass"
    When I fill in "Name" with "name 1"
    And I fill in "Email" with "email 1"
    And I fill in "Login" with "login 1"
    And I fill in "Password" with "password 1"
    And I press "Alterar"
    Then I should see "Rodrigo"
    And I should see "Rodrigo@test.com"
    And I should see "Rodrigo"
    And I should see "Pass"
		And I should have 2 users

	Scenario: Don't Edit user
    Given I am on the new user page
		And I follow "Editar"
	
	
	
	Scenario: Delete user
    Given the following users:
      |name  |email  |login  |password  |
      |name 1|email 1|login 1|password 1|
      |name 2|email 2|login 2|password 2|
      |name 3|email 3|login 3|password 3|
      |name 4|email 4|login 4|password 4|
    When I delete the 3rd user
    Then I should see the following users:
      |name  |email  |
      |name 1|email 1|
      |name 2|email 2|
      |name 4|email 4|

