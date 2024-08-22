################################################################################
#                                                                              #
#                      Conditional expressions in R                            #
#                       Author : Derrick Demeveng                              #
#                                                                              #
################################################################################

# if
a <- 33
b <- 200

if (b > a) {
  print("b est sup a")
}

# else if
a <- 33
b <- 33

if (b > a) {
  print("b est sup a")
} else if (a == b) {
  print ("a et b sont égaux")
}

# else
a <- 200
b <- 33

if (b > a) {
  print("b est sup a")
} else if (a == b) {
  print("a et b sont égaux")
} else {
  print("a est sup b")
}

# if imbriqué
x <- 13

if (x > 10) {
  print("Sup a 10")
  if (x > 20) {
    print("aussi sup a 20!")
  } else {
    print("mais pas sup a 20.")
  }
} else {
  print("inf a 10.")
}

