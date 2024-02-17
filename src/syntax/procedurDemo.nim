proc fillString(): string =
    result = ""
    echo("Generating string")
    for i in 0 .. 4:
        result.add($i)  # $ convert to string
const count = fillString()
echo count

proc implicit: string =
    "I will be returned"

proc discarded: string =
    discard "I will not be returned"

proc explicit: string =
    return "I will be returned"

proc resultVar: string =
    result = "I will be returned"

proc resultVar2: string =
    result = ""
    result.add("I will be ")
    result.add("returned")

# proc resultVar3: string =
#     result = "I am the result"
#     "I will cause an error"

    
assert implicit() == "I will be returned"
#assert discarded() == nil
assert explicit() == "I will be returned"
assert resultVar() == "I will be returned"
assert resultVar2() == "I will be returned"
# resultVar3 does not compile!

proc genHello(names: varargs[string]): string =
    result = ""
    for name in names:
        result.add("Hello " & name & "\n")
echo genHello("John", "Bob")
assert genHello("John", "Bob") == "Hello John\nHello Bob\n"

proc getUserCity(firstName, lastName: string): string =
    case firstName
    of "Damien": return "Tokyo"
    of "Alex": return "New York"
    else: return "Unknown"

proc getUserCity(userID: int): string =
    case userID
    of 1: return "Tokyo"
    of 2: return "New York"
    else: return "Unknown"

doAssert getUserCity("Damien", "Lundi") == "Tokyo"
doAssert getUserCity(2) == "New York"

import sequtils, future
let numbers = @[1, 2, 3, 4, 5, 6]
let odd = filter(numbers, proc (x: int): bool = x mod 2 != 0)
let odd_2 = filter(numbers, (x: int) -> bool => x mod 2 != 0)

echo odd
echo odd_2
assert odd == @[1, 3, 5]

proc isValid(x: int, validator: (x: int) -> bool) =
    if validator(x): echo(x, " is valid")
    else: echo(x, " is NOT valid")

isValid(1, (x: int) -> bool => x mod 2 == 0)
