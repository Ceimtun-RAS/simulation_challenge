# Competici贸n UNRobot simulaci贸n 馃憠 [Inscr铆bete](https://docs.google.com/forms/d/e/1FAIpQLSc2hobkpVgkxnECSdLmDt7OksRm5p6DZgrpnfqgwDmuXKKJpw/viewform)

# Contenido 

  - [Charlas t茅cnicas](#charlas-t茅cnicas)
  - [Getting Started](#getting-started)
  - [Gu铆a especificaciones](#gu铆a-especificaciones)
  - [Robot](#robot)
  - [Arena](#arena)
  - [Ambiente de programaci贸n](#ambiente-de-programaci贸n)


Este repositorio contiene el c贸digo base necesario para participar en los retos de simulaci贸n del UN robot tanto intermedio como avanzado. estos retos consisten en desarrollar algoritmos de posicionamiento y localizaci贸n utilizando el entorno de simulaci贸n de [Robotics Playground](https://www.mathworks.com/matlabcentral/fileexchange/67157-robotics-playground).

[![Watch the video](media/img/simulation_video_preview.png)](https://youtu.be/LbFredQy0Gw)

## Charlas t茅cnicas 

[![Watch the video](media/img/roboticsPlayground_preview.png)](https://youtu.be/o_rO1xNuMJU)

## Getting Started
Una vez configurado el [Ambiente de programaci贸n](#ambiente-de-programaci贸n) la forma de iniciar la simulaci贸n es sencilla solo hay que correr el archivo [setup.m](setup.m) dentro de MATLAB. Para editar el modelo escoge el archivo [UNrobot_pro.slx](UNrobot_pro.slx) o  [UNrobot_intermediate.slx](UNrobot_intermediate.slx) Estos son los 煤nicos archivos que requieres para desarrollar tu soluci贸n. 

Los dem谩s archivos contienen versiones modificadas de archivos de _robotics playground_ por lo que debes mantenerlos dentro de  la carpeta donde desarrolles tu soluci贸n no es recomendable que a帽adas este directorio a el PATH de MATLAB ya que puede generar incompatibilidades  al momento de usar el robotics playground.   

## Gu铆a especificaciones 

* [Reto Simulaci贸n Profesional](media/Reto_Simulacion_Profesional_Guia_de_Especificaciones.pdf)
* [Reto Simulaci贸n Intermedio](media/Reto_Simulacion_Intermedio_Guia_de_Especificaciones.pdf)
  

## Robot
Es un robot diferencial equipado con encoder en las ruedas sensores de proximidad, giroscopio, magnet贸metro.

![robot dimensions](media/img/robot_dimensions.png)

## Arena
El ambiente se divide en 2 secciones: el lado derecho donde los obst谩culos permanecer谩n  inalterados y el lado  izquierdo demarcado como Uncharted Area  donde  se incorporar谩n  obst谩culos de tama帽os arbitrarios y en posiciones no especificadas. 

![arena](media/img/arena.png)

## Ambiente de programaci贸n 
Para la de este proyecto se requiere una instalaci贸n de:
* Matlab (versi贸n recomendada 2021a) 
* Entorno de programaci贸n simulink  incluyendo las
* bibliotecas de simscape Mechanics y simscape Electronics 
* Toolbox robotics playground


![programming enviroment](media/img/simulink_intermediate.png)



