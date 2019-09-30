let firstName: String? = "Coop "
let username: String = "Bolaji"

// ternary
let displayName2 = firstName != nil ? firstName : username // using the bang which isnt advisable

// nil coalescin
let displayName3 = firstName ?? username
