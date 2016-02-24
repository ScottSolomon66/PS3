##Problem Set 3, S4 section
##Scott Solomon


##creating the class of door, which takes in an object, "which_door" that is an numberic
##the prototype is a random integer from 1 to 3

setClass(Class = "door", 
         slots = c(which_door = "numeric"), 
         prototype = prototype(which_door = c(sample(1:3,1)))
)


##to test its validity it checks to see if it is a number in the range 1 to 3

setValidity("door", function(object){
  ##here is setValidity will check for
  if (!(object@which_door %in% c(1:3))){ #if the number is not in the integer range 1 to 3
    stop("This number is not an integer between 1 and 3") #throw this error
  }})

##creating the generic for the play_game S4 function

setGeneric("play_game", function(x){
  standardGeneric("play_game")
})


##setting the method
##takes an object of class door
##then recreates the game that decides if the person chose a door

setMethod("play_game", signature = "door", definition = function(x){
  random_number<-sample(1,1:3) #generating the random integer from 1 to 3
  if (random_number == x@which_door){
    message<-"You won a car!"
    return(message)
  }else{
    message<-"You chose a goat =(" #very sad
    return(message)
  }}
)

##creating an object of class door
test_door<-new("door", which_door = 1)

#testing to see if the function runs
play_game(test_door)
