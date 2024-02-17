import strutils

# to compile progrm `nim c testOutput.nim`
# to compile and run `nim c -r testOutput.nim`
echo "display output"

# Single-line comment
#[
Multiline comment
]#
when false:
    echo("Commented-out code")

# Strings

# raw string
let filepath = r"C:\Program Files\Nim"
echo(filepath)


let multiLine = """foo
    bar
    baz
"""
echo multiLine.unindent
