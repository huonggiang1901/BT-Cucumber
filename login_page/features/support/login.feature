Feature: Login Page Functionality
    As a user
    I want to login page successfully
    So that I can log into a secure area

    Background:
        Given The login page is opened successfully

    @s1
    Scenario: Login page with valid account
        When enter username "tomsmith" and password "SuperSecretPassword!"
        Then a message 'You logged into a secure area!×' should be displayed

    @s2
    Scenario Outline: Login page with invalid account
        When enter username '<username>' and password '<password>'
        Then a message '<message>' should be displayed

        Examples:
            | username | password             | message                    |
            | abc      | SuperSecretPassword! | Your username is invalid!× |
            | tomsmith | 123                  | Your password is invalid!× |
            | abc      | def                  | Your username is invalid!× |
            |          |                      | Your username is invalid!× |
            | tomsmith |                      | Your password is invalid!× |
            |          | SuperSecretPassword! | Your username is invalid!× |

