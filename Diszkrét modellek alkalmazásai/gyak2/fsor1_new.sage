from sage.all import *

#1. feladat:
#1000!

print("1. feladat:\n1000! =")
print(factorial(1000))
print("\n")

#2. feladat:
#Pi és e első 1000 számjegye

print("2. feladat:\npi (with 1000 digits):")
print(n(pi, digits=1000))
print("\n")
print("e (with 1000 digits):")
print(n(e, digits=1000))
print("\n")

#3. feladat:
#Komplex szám

print("3. feladat:\n(3+2i)(5-3i) = ")
print((3+2*I) * (5-3*I))
print("\n")

#4. feladat:
#Prímfelbontás

print("4. feladat:\n5342634632512543646623001324 = ")
print(factor(5342634632512543646623001324))
print("\n")