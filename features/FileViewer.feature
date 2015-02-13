@fileviewer
Feature: Show files on filesystem
         As a developer
         I want to view my filesystem

    Background:
        Given I am in the root of my filesystem


    Scenario: list filesystem
        When I successfully run `ls`
        Then I expect to see my files


    Scenario Outline: list filesystem command with several options
        When I successfully run `<CMD>`
        Then the output should contain "<OUTPUT>"

        Examples:
        | CMD         | OUTPUT      |
        | ls          | features    |
        | ls -l       | drwxrwxr-x. |
        | ls -a       | .rspec      |
