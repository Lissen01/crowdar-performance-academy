@Performance @vps
Feature: Existing jmx file
  COMO un usuario del sitio
  QUIERO ejecutar peticiones a las Sucursales
  PARA verificar que el mismo responda apropiadamente.

  Scenario Outline: Run performance with existing jmx file
    Given configure the performance test with '<iterations>' iterations '<users>' users and a ramp time of '<ramp_time>' seconds
    When run the script '<script_name>'
    And remplace variables with '<json>'

    @1ps
    Examples:
      | iterations	|users	|ramp_time	|script_name		|json	 |
      | 1		  	|1		|1		    |test_report_server |vpsJson |

    @2ps
    Examples:
      | iterations	|users	|ramp_time	|script_name		|json    |
      | 1		    |600	|300		|test_report_server |vpsJson |

    @3ps
    Examples:
      | iterations	|users	|ramp_time	|script_name	     |json	  |
      | 1		    |900	|300		|test_report_server  |vpsJson |

    @4ps
    Examples:
      | iterations	|users	|ramp_time	|script_name         |json    |
      | 1		    |1200	|300		|test_report_server  |vpsJson |

    @5ps
    Examples:
      | iterations	|users	|ramp_time	|script_name	 |json	      |
      | 1		    |1500	|300		|test_report_server  |vpsJson |

    @6ps
    Examples:
      | iterations	|users	|ramp_time	|script_name         |json    |
      | 1		    	|1800	|300    |test_report_server  |vpsJson |

    @7ps
    Examples:
      | iterations	|users	|ramp_time	|script_name	     |json    |
      | 1		    |2100	|300	    |test_report_server  |vpsJson |

    @8ps
    Examples:
      | iterations	|users	|ramp_time	|script_name	     |json    |
      | 1		    |2400	|300	    |test_report_server  |vpsJson |

    @9ps
    Examples:
      | iterations	|users	|ramp_time	|script_name	     |json    |
      | 1		    |2700	|300		|test_report_server  |vpsJson |

    @10ps
    Examples:
      | iterations	|users	|ramp_time	|script_name         |json    |
      | 1		    |3000	|300		|test_report_server  |vpsJson |