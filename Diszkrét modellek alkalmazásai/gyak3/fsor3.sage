from sage.all import *
#kisZH:
print("ZH:\n")
str = "pl"
def toUpper(str):
	result = str
	for c in str:
		result += c.upper()
	return result

print(toUpper(str))
print("\n")

#1. feladat:

print("1. feladat:\n")

def Compound_List(N):
	result = []
	counter = 2
	while len(result) < N:
		if is_prime(counter):
			result = []
		else:
			result.append(counter)
		counter += 1
	return result

print(Compound_List(10))

def Compound_List2(N):
	return [factorial(N+1)+2 .. factorial(N+1) + N + 1]

print(Compound_List2(10))


#2. feladat:

#3. feladat:

print("3. feladat:\n")
print(prime_range(10)) # 10-ig a prímek
print(len(prime_range(10))) #Hány db prím van 10ig?

#4. feladat:

#5. feladat:
