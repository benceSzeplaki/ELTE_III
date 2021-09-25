from sage.all import *


print("Try-outs:")
print(2^3) 		#Így lehet hatványozni
L = [1,2,3,4] 	#Array létrehozás
print(L)		#Kimenet: [1,2,3,4]

L = [1..10]  	#Eltárolja a számokat 1-től 10-ig
print(L)

L = [ x for x in [1..10] if x > 5 ] #Azokat a számokat tárolja el amelyek nagyobbak mint 5
print(L)

L = [ 2*x for x in [1..10] if x > 5 ] #Megszorozzuk 2-vel azokat a számokat amik nagyobbak mint 5, 1 és 10 között.
print(L)

#1. feladat:
#Írassuk ki illetve tároljuk listában az első 100 db köbszámot.
print("\n1. feladat:\nNumbers on the 3rd power from 1 to 100:")
L = [ x^3 for x in [1..100]]
print(L)
print("\n")

#2. feladat:
#Írassuk ki illetve tároljuk listában az első 100 db természetes szám közül a 3-mal oszthatóak köbét.

print("2. feladat:\nNumbers on the 3rd power from 1 to 100 which are divisible by 3:")

L = [ x^3 for x in [1..100] if x % 3 == 0]
print(L)
print("\n")

#Sztringek:
print("String try-outs:\n")
str = "Hello world"
print(str)
print(str[0])
#str[1] = 'a' 	--> Ilyen nincs :( 
str += 'a' 		#De nyílván ilyen meg van :)
print(str + "\n")

#3. feladat:
#Írjon Python/SageMath függvényt, amely sztringet kap paraméterként, és visszatér a sztring egy olyan másolatával, ahol a páros indexű karakterek duplán szerepelnek. Például az alma sztringre a helyes eredmény aalmma.

print("3. feladat:\nCopy string in which every odd indexed character is doubled (like: king => kkinng)")
def foo(p, x):
    print(p)
    x += 1
    print(x)
    return 10

def foo(string):
    result = ""
    for idx in [0..(len(string)-1)]:
        result += string[idx]
        if idx % 2 == 0:
            result += string[idx]
    return result

print(foo("alma"))
print("\n")

#4. feladat:
#Írjon Python/SageMath függvényt, amely sztringet kap paraméterként, és visszatér a sztring Mocking Spongebob Squarepants egy véletlenszerű példányával. Írja meg a függvény olyan változatát is, amely garantálja, hogy a mondatkezdő betű mindig nagybetű.


print("4. feladat:\nMocking SpongeBob function")
def mockingSpongebob(string):
	result = ""
	for ch in string:
		if randint(0, 1) == 0:
			result += ch.upper()
		else:
			result += ch.lower()
	return result
		
print(mockingSpongebob("Hello"))
print("\n")

#5. feladat:


print("5. feladat:\nIs reflexive:")
X = {1, 2, 3, 4}
L = [(1, 1), (2, 2), (3, 3), (4, 4)]

def Is_Reflexive(X, L):
	for a in X:
		if (a, a) not in L:
			return False
	return true

print(Is_Reflexive(X,L))

A = {1, 2, 3}
B = {1, 2, 3, 4}
L = [(1,1), (1,2), (1,3), (2,1), (2,2), (2,3), (3,1), (3,2), (3,3)]

def Is_Transitive(X,L):
	for a in X:
		for b in X:
			for c in X:
				if (a, b) in L and (b, c) in L and (a, c) not in L:
					return False
	return True

L2 = [(1, 2), (2, 3), (1, 4), (2, 2)]

print(Is_Transitive({1, 2, 3}, [(1,1), (1,2), (1,3), (2,1), (2,2), (2,3), (3,1), (3,2), (3,3)]))
print(Is_Transitive({1, 2, 3, 4}, [(1, 2), (2, 3), (1, 4), (2, 2)]))
