##Problem Set 3
##By Scott Solomon

##Creating the new class called door
door<-structure(vector,class = "door", length = 1, range = 1:3) 
##creating the class, 
##as a vector of one length with numbers 1-3


##this is just a dummy object to feed into the door.play_game function
random_door<-(sample(1,1:3)) #just making a random integer from 1 to 3
class(random_door)<-"door" #changing the class to door

##door.play_game function
##this method takes in an object of class door, and returns a message if it is not the right class
##the function creates a random number 1 to 3, to represent which door has the car behind it
##it either returns the message that the person selected the goat or the car
##it is decides which message to give based off of the object inputed matches the random number generated

door.play_game<-function(x, class = "door"){ #using door.to make a method for the class
  ##this if statement returns a message about whether the object is a door
  if (class(x) != "door"){ 
    message<-list("This is not of object class door")
    ##the code will end below if the object is not of class door
    return(message)
  }
  
  ##creating the door number which the car is behind
  random_number<-sample(1,1:3) #generating the random integer from 1 to 3
  
  ##this else statment determines whether the object inputed 
  ##into the function matches the door that the car/goat is behind
  if (random_number == x){
    message<-"You won a car!"
    return(message)
  }else{
    message<-"You chose a goat =(" #very sad
    return(message)
  }
}

##choose_door
##this function basically chooses a door for you
##it ensures the random integer is in the class "door"

choose_door<-function(x){
  random_int<-sample(1:3,1)
  class(random_int)<-"door"
  return(random_int)
}


