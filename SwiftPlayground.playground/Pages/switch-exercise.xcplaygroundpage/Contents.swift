/*
 In the editor we have a dictionary that contains a three letter country code as a key and that country's capital city as the associated value.
 
 
 We also have three empty arrays, europeanCapitals, asianCapitals, and otherCapitals. The goal is to iterate through the dictionary and end up with just the names of the capital cities in the relevant array.
 
 
 For example, after you execute the code you write, europeanCapitals will have the values ["Vaduz", "Brussels", "Sofia"] (not necessarily in that order).
 
 
 To do this you're going to use a switch statement and switch on the key. For cases where the key is a European country, append the value (not the key!) to the europeanCapitals array. For keys that are Asian countries, append the value to asianCapitals and finally for the default case, append the values to otherCapitals.
*/



var europeanCapitals: [String] = []
var asianCapitals: [String] = []
var otherCapitals: [String] = []

let world = [
    "BEL": "Brussels",
    "LIE": "Vaduz",
    "BGR": "Sofia",
    "USA": "Washington D.C.",
    "MEX": "Mexico City",
    "BRA": "Brasilia",
    "IND": "New Delhi",
    "VNM": "Hanoi"]

for (key, value) in world {
    // Enter your code below
    switch key {
    case "BEL", "LIE", "BGR":
        europeanCapitals.append(value)
    case "IND":
        asianCapitals.append(value)
    default:
        otherCapitals.append(value)
    }
    // End code
}
