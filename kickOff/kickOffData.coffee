kickOffData = ->
  Projects.remove {}
  contador = 0

  while contador < 11
    Projects.insert name: "Projeto " + contador
    contador++