# Testing de Performance API REST - Endpoints
![Swagger UI](https://i.imgur.com/6mrL91w.jpg "Swagger UI")

[Swagger UI -Report Server](http://vps2.crowdaronline.com:8083/swagger-ui/index.html?configUrl=/v3/api-docs/swagger-config#/ "Swagger UI-Report Server")

### Propósito
El siguiente proyecto tiene el propósito de demostrar y permitir que los desarrolladores de automatización de pruebas prueben una API usando *Lippia Automation Framework* basado en la libreria Rest Client.

**Comando** para la ejecución del test:

`mvn clean verify`

## Configuración global POM.xml

Obtención del **tag principal** para correr el test mediante el filtro de cucumber.
>@Tcount --tags @1ps
``` xml
 <properties>
		<crowd.project.name>Performance Sample Project</crowd.project.name>
		<project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
		<crowdar.cucumber.filter>@Tcount --tags @1ps</crowdar.cucumber.filter>
		<crowdar.cucumber.option>src/test/resources/features --glue com/crowdar/configuration --glue com/crowdar/performance/steps --tags ${crowdar.cucumber.filter} --tags 'not @Ignore' --plugin pretty</crowdar.cucumber.option>
	</properties>
```
## Feature File

Los escenarios de prueba se pueden escribir en Gherkin utilizando la metodología BDD; El siguiente es **a modo de ejemplo**.

```gherkin
@Performance @get_user
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
      | iterations | users | ramp_time | script_name | json         |
      | 1          | 1     | 1         | swaggerUI   | get_user_vps |

    @2ps
    Examples:
      | iterations | users | ramp_time | script_name | json         |
      | 1          | 600   | 300       | swaggerUI   | get_user_vps |

    @3ps
    Examples:
      | iterations | users | ramp_time | script_name | json         |
      | 1          | 900   | 300       | swaggerUI   | get_user_vps |
```
## Configuración Json utilizada en este ejemplo
En principio seteadas en **JMeter** y posteriormente cambiadas en las *variables de usuario* una vez realizada la prueba.
``` json
 {
	"url": "vps2.crowdaronline.com",
	"protocol": "http",
	"port": "8084",
	"path": "/user/authenticate",
	"DURACION": "1800"
}
```

## Getting started

* Descargar e Instalar Jmeter:
1. [Apache Jmeter](https://apache.dattatec.com//jmeter/source/apache-jmeter-5.3_src.zip "Jmeter 3.6.3") 
* Pasos para la configuración del Mismo:
1. [Drive Configuración](https://drive.google.com/drive/folders/19PMWhMM8B-2OOOvjU9doXuSYeHEg5QeT?usp=sharing "JMeter Configuración Básica") 
* Si todo funciona perfectamente, se mostrará en la pantalla *la carga de Stres con sus respectivos datos*.
> Tiempo de muestreo, Hilos, ESTADO, Cantidad de Bytes, Latencia y tiempos de conexión
* Dependiendo de las Iteraciones, usuarios, ramp time que se setean en el feature designado por cada prueba de cada endpoint.
