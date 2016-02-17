##Problem Set 3
##By Scott Solomon

##Creating the new class called door
door<-structure(vector,class = "door", length = 1, range = 1:3) 
##creating the class, 
##as a vector of one length with numbers 1-3

random_door<-vector(sample(1:3,1))
class(random_door)<-"door"

door.play_game<-function(x, wanna_choose_door = TRUE){
  
  if (class(x) != "door"){
    message<-list("This is not of object class door")
    return(message)
  }
  random_number<-sample(1:3,1)
  if (random_number == x){
    message<-"You won a car!"
    return(message)
  }else{
    message<-"You chose a goat =("
    return(message)
  }
}

choose_door<-function(x){
  random_int<-sample(1:3,1)
  class(random_int)<-"door"
}


