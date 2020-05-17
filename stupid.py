def repeat_to_length(string_to_expand, length):
    return (string_to_expand * (int(length/len(string_to_expand))+1))[:length]


buf = "ff8f3950"
my_int = int("80491c6", 16)
my_bytes = my_int.to_bytes(4, "little")
my_int2 = int(buf,16)
my_bytes_2 = my_int2.to_bytes(4,"little")

longest = repeat_to_length(my_bytes,80)

print(longest)
print(len(longest))

next = repeat_to_length(my_bytes_2,120)

print(next)
print(len(next))