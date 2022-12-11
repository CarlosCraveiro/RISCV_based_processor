from dataclasses import replace


def writeInstructionToFile(instruction, file):
    file.write(instructionToBytes(instruction))

def instructionToBytes(instruction):
    array = instruction[::-1]
    array = list(array)
    
    # converts list elements to int
    for i in range(len(array)):
        array[i] = int(array[i])
        
    # separate into 8-bit chunks
    firstPart = array[0:8]
    secondPart = array[8:16]
    power = 0
    sum1 = 0
    sum2 = 0
    for i in range(8):
        sum1 += firstPart[i] * (2 ** power)
        sum2 += secondPart[i] * (2 ** power)
        power += 1
    
    return bytes(bytearray([sum1, sum2]))

def inputToCommandList(input):
    # transform commas into spaces
    input = input.replace(",", " ")
    
    # remove spaces
    input = input.split(" ")
    input = list(filter(lambda char: char != "", input))
    
    return input
