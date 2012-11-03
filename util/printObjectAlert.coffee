printObject = (o) ->
	out = ""
	for p of o
	 	out += p + ": " + o[p] + "\n"
	alert out