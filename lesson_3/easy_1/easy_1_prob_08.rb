################################################################################
# Given the hash below

flintstones = { "Fred" => 0,
                "Wilma" => 1,
                "Barney" => 2,
                "Betty" => 3,
                "BamBam" => 4,
                "Pebbles" => 5
}

# Create an array containing only two elements: Barney's name and Barney's number.

# Using Hash#assoc, the return value is a new array containing two elements: the
# key and it's value.

flintstones.assoc("Barney")
# => ["Barney", 2]
