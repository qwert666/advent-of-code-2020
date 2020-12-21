f = open("input.txt", "r")
input_data = f.readlines()
count = len(input_data)

check_index = [(3*i % (len(input_data[1]) - 1))+1 for i in range(1, count)]

result = 0
for (index, line) in enumerate(input_data):
    if index > 0:
        cond = line[check_index[index - 1 ] - 1]
        if cond == "#":
            result += 1

print(result)