Sistemas y Tecnologías Web
==========================
David Hernández Bethencourt

Práctica 1: Contar la popularidad de nuestros amigos en Twitter
---------------------------------------------------------------
Escriba una aplicación que reciba como argumento un usuario de Twitter y muestre como resultado la lista de amigos de ese usuario (esto es, a quienes sigue) ordenada según su popularidad (esto es, según el número de seguidores que tiene). Del más popular al menos popular.

Instrucciones
-------------

1. Se debe de crear un archivo "configure.rb" que contenga tus credenciales de Twitter:

```
Twitter.configure do |config|
  config.consumer_key       = "YOUR_CONSUMER_KEY"
  config.consumer_secret    = "YOUR_CONSUMER_SECRET"
  config.oauth_token        = "YOUR_ACCESS_TOKEN"
  config.oauth_token_secret = "YOUR_ACCESS_SECRET"
end
```

2. Para ejecutar el programa con el usuario por defecto (David\_HerBet):

        $ ruby popularity.rb

3. Para ejecutar el programa suministrandole un usuario:

        $ ruby popularity.rb UsuarioTwitter

4. Para ejecutar el programa suministrándole un usuario y mostrando un número de salidas limitado:

        $ ruby popularity.rb UsuarioTwitter 5
   

**Notas:**

- Si tienes muchos amigos, el programa tardará demasiado en procesar los datos y Twitter cortará la conexión, haciendo que la ejecución del programa falle. `Recomendación`: Se debería de restringir el número de salidas a menos de 80.

- Si se realiza la ejecución del programa múltiples veces, se puede exceder el límite de peticiones y twitter te deniega la petición.


---

Universidad de La Laguna  
Escuela Técnica Superior de Ingeniería Informática
