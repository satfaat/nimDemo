var list: array[3, int]
list[0] = 1
list[1] = 42
assert list[0] == 1
assert list[1] == 42
assert list[2] == 0
echo list.repr
# echo list[500]

# try:
#     echo list[500]
# except:
#     echo("no such index" & getCurrentExceptionMsg())
