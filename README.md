# BookStationApp
 Aplicación móvil con Swift

## Características
- Firebase Auth
- Google Books Api
- AppStorage

## Librerias
## Instrucciones para compilar y ejecutar
1. Usar equipo con un macOS Big Sur v11.7.10 o superior
2. Ir a https://developer.apple.com/xcode/resources/, iniciar sesión y descargar Xcode versión 13.1
3. Descargar o clonar este repositorio del proyecto
4. Abrir proyecto con Xcode
5. Una vez abierto ir dar click en el proyecto en la barra de archivos de la izquierda, seleccionar la pestaña de General y bajar a la sección de Frameworks, Libraries, and Embedded Content para dar click en el botón con simbolo de + 
<img src="/assets/pic1.png" alt="drawing" height="400"/>  
6. Se mostrara otra una ventana, seleccionar botón "Add Other...", se desplegará un menú y selecciona "Add Package Dependency"
<img src="/assets/pic2.png" alt="drawing" height="400"/>  
7. Se abrira otra ventana donde habra una caja de texto arriba a la izquierda ahí se ingresara la información de las librerias que se instalaran
<img src="/assets/pic3.png" alt="drawing" height="400"/>
8. Ahi copiar y pegar el siguiente link https://github.com/firebase/firebase-ios-sdk

9. Ya pegada la url seleccionar en el menu de "Dependency Rule" la opción Exact Version y escribir 10.4.0 y por último dar click en el botón de "Add Package"
<img src="/assets/pic4.png" alt="drawing" height="400"/>
10. Se descargará y se mostrará otro cuadro donde elegira FirebaseAnalytics, FirebaseAnalyticsSwift y FirebaseAuth

11. Repetir pasos del 5 al 7

12. Ahi copiar y pegar el siguiente link https://github.com/SwiftyJSON/SwiftyJSON

13. Ya pegada la url seleccionar en el menu de "Dependency Rule" la opción Exact Version y escribir 5.0.2 y por último dar click en el botón de "Add Package"

14. Después de haber descargado e instalado las librerias es momento de correr la aplicación dando click en ese icono de Play
<img src="/assets/pic6.png" alt="drawing" height="50"/>

15. En caso de haber un error con el archivo de GoogleService-Info, se tendrá que borrar e importar de nuevo dando click derecho en la carpeta con el nombre del proyecto y seleccionando la opción del menú "Add Files to BookStation". El archivo GoogleService lo encuentras en la carpeta assets dentro de la carpeta descargada del repositorio
<img src="/assets/pic7.png" alt="drawing" height="400"/>

16. Finalizando los pasos anteriores no habrá mas problemas y podra iniciar la aplicación en el Simulador 
<img src="/assets/pic5.png" alt="drawing" height="400"/>

## Credenciales
 |     Correo  |       Contraseña    | 
|:-------------:| :-------------:|
| usuario@prueba.com | prueba1234 |  
| prueba@usuario.com | usuario1234 |  




