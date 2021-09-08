i1 = input()
i2 = input()

while True:
	try:
		i1 = float(i1)
		i2 = float(i2)
		break
	except:
		print("Ugyldig input")
		i1 = input()
		i2 = input()

print(i1 + i2)