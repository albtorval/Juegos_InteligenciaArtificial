#Piedra-papel-tijeras

rps = function(move){  
  
  options = c("piedra","papel","tijeras")
  comp.move = sample(options, size = 1)
  
  estado = NULL
  if(move == "piedra"  & comp.move == "piedra")   estado = "empate"
  if(move == "piedra"  & comp.move == "tijeras")  estado = "gana"
  if(move == "piedra"  & comp.move == "papel")    estado = "pierde"
  if(move == "papel"   & comp.move == "papel")    estado = "empate"
  if(move == "papel"   & comp.move == "tijeras")  estado = "pierde"
  if(move == "papel"   & comp.move == "piedra")   estado = "gana"
  if(move == "tijeras" & comp.move == "tijeras")  estado = "empate"
  if(move == "tijeras" & comp.move == "piedra")   estado = "pierde"
  if(move == "tijeras" & comp.move == "papel")    estado = "gana"
  
  utilidad = NULL
  if (estado == "empate") utilidad = 0
  if (estado == "pierde") utilidad = -1
  if (estado == "gana")   utilidad = 1
  
  lista = list(move = move, 
               comp.move=comp.move, 
               estado=estado,
               utilidad = utilidad) 
  
  lista
}

raw_rps = function(move,comp.move){  
  
  options = c("piedra","papel","tijeras")
  
  estado = NULL
  if(move == "piedra"  & comp.move == "piedra")   estado = "empate"
  if(move == "piedra"  & comp.move == "tijeras")  estado = "gana"
  if(move == "piedra"  & comp.move == "papel")    estado = "pierde"
  if(move == "papel"   & comp.move == "papel")    estado = "empate"
  if(move == "papel"   & comp.move == "tijeras")  estado = "pierde"
  if(move == "papel"   & comp.move == "piedra")   estado = "gana"
  if(move == "tijeras" & comp.move == "tijeras")  estado = "empate"
  if(move == "tijeras" & comp.move == "piedra")   estado = "pierde"
  if(move == "tijeras" & comp.move == "papel")    estado = "gana"
  
  utilidad = NULL
  if (estado == "empate") utilidad = 0
  if (estado == "pierde") utilidad = -1
  if (estado == "gana")   utilidad = 1
  
  lista = list(estado=estado,
               utilidad = utilidad) 
  
  lista
}



