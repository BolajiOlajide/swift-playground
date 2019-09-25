/*
 In this challenge, we have the following geographical coordinates
 
 
 Eiffel Tower - lat: 48.8582, lon: 2.2945
 Great Pyramid - lat: 29.9792, lon: 31.1344
 Sydney Opera House - lat: 33.8587, lon: 151.2140
 
 
 Declare a function named coordinates that takes a single parameter of type String, with an external name for, a local name of location, and returns a tuple containing two Double values (Note: You do not have to name the return values). For example, if I use your function and pass in the string "Eiffel Tower" as an argument, I should get (48.8582, 2.2945) as the value. If a string is passed in that doesn’t match the set above, return (0,0)
*/

// Enter your code below
func coordinates(for location: String) -> (lat: Double, long: Double) {
    
    switch location {
    case "Eiffel Tower": return (48.8582, 2.2945)
    case "Great Pyramid": return (29.9792, 31.1344)
    case "Sydney Opera House": return (33.8587, 151.2140)
    default: return (0,0)
    }
}
