@Performance @categories
Feature: Existing jmx file
  COMO un usuario del sitio
  QUIERO ejecutar peticiones al report server
  PARA verificar que el mismo responda apropiadamente.

  Scenario Outline: Run performance with existing jmx file
    Given configure the performance test with '<iterations>' iterations '<users>' users and a ramp time of '<ramp_time>' seconds
    When run the script '<script_name>'
    And remplace variables with '<json>'

    @1ps
    Examples:
      | iterations | users | ramp_time | script_name   | json    |
      | 1          | 1     | 1         | swaggerUI_cat | get_cat |
