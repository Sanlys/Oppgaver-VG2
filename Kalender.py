import time
import datetime
import json
import os.path

def sort(liste):
	x = time.mktime(datetime.datetime.strptime(liste[0], "%d/%m/%Y").timetuple())
	return x

class kalender:
	def __init__(self):
		if os.path.isfile("./kalender"):
			self.liste = json.load(open("kalender", "r"))
			print("loadet fil")
		else:
			self.liste = liste = {
				"10/12/2021": "Bø",
				"11/11/2020": "Y",
				"11/11/3000": "B"
			}

	def slett(self):
		print(self.liste)
		valg = input("Vil du fylle inn navn eller tid? (n, t): ")
		if valg.lower() == "n":
			data = input("")
			self.liste.pop(data)
		if valg.lower() == "t":
			data = input("")
			for key, value in dict(self.liste).items():
				if value == data:
					self.liste.pop(key)

	def skrivUt(self):
		self.liste = sorted(self.liste.items(), key=sort)
		for key, value in dict(self.liste).items():
			print(key, value, sep="		")

	def leggtil(self):
		print(self.liste)
		tid = input("Skriv inn en tid for avtalen i format dd/mm/åååå: ")
		avtale = input("Skriv inn avtalen: ")
		self.liste[tid] = avtale

		f = open("kalender", "w")
		f.write(json.dumps(self.liste))
		f.close()

liste = kalender()
while True:
	kommando = input("Kommando: ")
	if kommando.lower() == "slett":
		liste.slett()
	if kommando.lower() == "legg til":
		liste.leggtil()
	if kommando.lower() == "skriv ut":
		liste.skrivUt()
	if kommando.lower() == "lukk":
		break