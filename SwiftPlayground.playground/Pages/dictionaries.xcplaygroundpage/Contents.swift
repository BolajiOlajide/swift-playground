/*
 ------------
 Dictionaries
 ------------
*/
var airportCodes = ["LGA": "La Guardia", "CDG": "Charles De Gaulle","DXB": "Dubai International"]

// read from the dictionary
airportCodes["LGA"]

// insert into a diction
//airportCodes["SYD"] = "Sydney International airport" // error because dictionary is defined as constant

// update a value
airportCodes.updateValue("Dublin International Airport", forKey: "DUB")
airportCodes

// remove a value
airportCodes["DUB"] = nil
airportCodes.removeValue(forKey: "CDG")

airportCodes
