Feature: mkblog 
  @announce
  Scenario: help
    When I run `mkblog --help`
    Then the output should contain: 
      """
      Usage: mkblog
      """
    And the output should contain:
      """
      -g, --generate project           generate blog under project.github.com
      """    
      