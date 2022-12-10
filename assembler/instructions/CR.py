# register operations
class CR:
    rs2 = "invalid"
    rs1 = "invalid"
    gap = "00000"
    function = "invalid"

    functions = ["add", "sub", "and", "or", "slt"]

    # fields setters

    # generic register setter (rs: str)
    def setRS(rs):
        if ('x' not in rs):
            return "invalid"
        
        # remove 'x' from register's name
        rs.replace('x', '')

        # check if register exists
        rs = int(rs)
        if (rs < 0 or rs > 7):
            return "invalid"

        # parse register number to binary representation
        rs = list(bin(rs))
        rs.remove('0')
        rs.remove('b')

        # return binary representation as string
        return ''.join(rs)

    # specific register setters (register: str)
    def setRS1(self, register1):
        rs1 = self.setRS(register1)

    def setRS2(self, register2):
        rs1 = self.setRS(register2)

    # function (function: str)
    def setFunct(self, function):
        if function == "add":
            self.func= "000"
        elif function == "sub":
            self.func = "001"
        elif function == "and":
            self.func = "010"
        elif function == "or":
            self.func = "011"
        elif function == "slt":
            self.func = "101"
        else:
            self.func = "invalid"

    # parse command with specified fields
    def parse(self):
        op = "00"
        
        # throw error if syntax is wrong
        if (
            self.rs2 == "invalid" or
            self.rs1 == "invalid" or
            self.func == "invalid"
        ):
            raise ValueError("Wrong syntax! Could not parse command.")

        return self.func + self.gap + self.rs1 + self.rs2 + op

