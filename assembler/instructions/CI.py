# immediate operations
class CI:
    def __init__(self):
        self.imm = "invalid"
        self.rs1 = "invalid"
        self.func = "invalid"

        self.functions = ["addi"]

    # fields setters

    # generic register setter (rs: str)
    def setRS(self, rs):
        if ('x' not in rs):
            return "invalid"
        
        # remove 'x' from register's name
        rs = rs.replace('x', '')

        # check if register exists
        rs = int(rs)
        if (rs < 0 or rs > 7):
            return "invalid"

        # return binary representation as string
        return '{0:03b}'.format(rs)

    # specific register setters (register: str)
    def setRS1(self, register1):
        self.rs1 = self.setRS(register1)
        return self

    # function (function: str)
    def setFunc(self, function):
        if function == "addi":
            self.func= "000"
        else:
            self.func = "invalid"

        return self

    # immediate (imm: str)
    def setImm(self, immediate):
        immediate = int(immediate)
        
        if immediate < 0:
            self.imm = '{0:08b}'.format(twosComplement(immediate))
        else:
            self.imm = '{0:08b}'.format(immediate)

        return self

    # set all values to "invalid" once again
    def reset(self):
        self.rs1 = "invalid"
        self.imm = "invalid"
        self.func = "invalid"

    # parse command with specified fields
    def parse(self):
        op = "01"
        
        # throw error if syntax is wrong
        if (
            self.rs1 == "invalid" or
            self.imm == "invalid" or
            self.func == "invalid"
        ):
            raise ValueError("Wrong syntax! Could not parse command.")
        
        return self.func + self.imm[0:5] + self.rs1 + self.imm[5:8] + op

# calculates the two complement of a binary number
def twosComplement(in_value):
    value = '{0:08b}'.format(abs(in_value))
    
    # invert bits
    value = value.replace('0', 'x')
    value = value.replace('1', '0')
    value = value.replace('x', '1')
    
    # invert string
    value = value[::-1]
    
    # build integer
    integer = 0
    power = 0
    for i in value:
        integer += int(i) * (2 ** power)
        power += 1
        
    # complement with 1
    integer = integer ^ 1
     
    return integer