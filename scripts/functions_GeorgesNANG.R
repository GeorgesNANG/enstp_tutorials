################################################################################
#                                                                              #
#                        Les functions dans R                                  #
#                       Author : Derrick Demeveng                              #
#                                                                              #
################################################################################

#' En programmation, une fonction est un bloc de code conçu pour accomplir une 
#' tâche spécifique. C’est un morceau de code réutilisable qui peut être appelé 
#' (ou invoqué) depuis différentes parties d’un programme pour exécuter sa tâche
#'  lorsque cela est nécessaire.

# Example of functions in r
seq(10, 100, 5)

mean(c(100, 56, 34, 77, 98))

class(c(100, 56, 34, 77, 98))

hist(c(100, 56, 34, 77, 98))


# Creer une function

afficher_nom <- function(){
  print("Derrick Demeveng")
}

afficher_nom()

# function dynamique

afficher_nom <- function(nom){
  print(nom)
}

afficher_nom("Travaux Publique")

nom_ecole = afficher_nom("Travaux Publique")

# retour de la function n'affiche pas le resultat

afficher_nom <- function(nom){
  return(nom)
}

afficher_nom("Travaux Publique")

nom_ecole_2 = afficher_nom("Travaux Publique")

# passer plusieurs parametres

afficher_nom <- function(nom, prenom, age){
  phrase <- 
    paste(
      "Bonjour, je me nomme",
      nom,
      prenom,
      "et je suis agé de",
      age,
      "ans"
    )
  
  phrase
}

afficher_nom("Demeveng", "Derrick", 10)


# function de calcul de distance entre deux points

dist <- function(a, b){
  d = sqrt(((a[1]-b[1]))^2 + ((a[2]-b[2]))^2)
  return(d)
}


pt1 <- c(70000, 430887)
pt2 <- c(70342, 437380)

dist(a = pt1, b = pt2)



# Exercises --------------------------------------------------------------------

# 1) Ecrivez une function pour le calcul de gisement.

# Solution

Gisement <- function(a, b){
  gis = atan((b[2] - a[2]) / (b[1] - a[1]))
  if(gis < 0){
    gis = gis + 400
  }
  return(gis)
}

pt1 <- c(695431, 430219)
Pt2 <- c(697012, 430819)

Gisement(a = pt1, b= pt2)
# 2) Ecrivez une function pour le calcul de la longeur total d'une polygonal 
#    a 5 sommets

# Solution 
# Soit une polygonale à 5 sommets A, B, C, D et E:
# Déclaration de la fonction longueur polygonale

Longeur_polygonale <- function(A, B, C, D, E){
  #calcul des longeurs 2 à 2 entre les différents sommets
  LAB <- sqrt(((B[1]-A[1]))^2 + ((B[2]-A[2]))^2)
  LBC <- sqrt(((C[1]-B[1]))^2 + ((C[2]-B[2]))^2)
  LCD <- sqrt(((D[1]-C[1]))^2 + ((D[2]-C[2]))^2)
  LDE <- sqrt(((E[1]-D[1]))^2 + ((E[2]-D[2]))^2)
  LEA <- sqrt(((A[1]-E[1]))^2 + ((A[2]-E[2]))^2)
  
  # Calcul de la longueur totale: 
  L <- sum(LAB, LBC, LCD, LDE, LEA)
  Longueur <- paste("La longueur totale de la polygonale est:", L, "m")
  return(Longueur)
}

# Exemple 

pt1 <- c(686000, 398200)
pt2 <- c(686300, 398500)
pt3 <- c(686400, 397800)
pt4 <- c(686400, 397800)
pt5 <- c(686200, 398000)

Longeur_polygonale(A = pt1, B = pt2, C = pt3, D = pt4, E = pt5)


# 3) Ecrivez une function pour le calcul de la surface d'une parcelle a 4 sommets

# Formule du calcul de la superficie d'un quadrilatère: 
# soit un quadrilatère à 4 sommets A(X1, Y1), B(X2, Y2), C(X3, Y3) et D(X4, Y4)

#A = 1/2 (abs((X1*Y2 + X2*Y3 + X3*Y4 + X4*Y1) - (Y1*X2 + Y2*X3 + Y3*X4 + Y4*X1)))

# Fonction de calcul de la superfice d'une parcelle à 4 sommets:

Superficie <- function(A, B, C, D){
  sup = (1/2)*(abs((A[1]*B[2] + B[1]*C[2] + C[1]*D[2] + D[1]*A[2]) - (A[2]*B[1] + B[2]*C[1] + C[2]* D[1] + D[2]*A[1])))
  result <- sup
  if(result >= 10000){
    result <- paste("Superficie =", sup/10000, "Ha" )
  }
  else{
    result <- paste("Superficie = ", sup, "m²")
  }
  return(result)
}
# Exemple

pt1 <- c(686000, 398200)
pt2 <- c(686300, 398500)
pt3 <- c(686400, 397800)
pt4 <- c(686400, 397800)

Superficie(A = pt1, B = pt2, C = pt3, D = pt4)





