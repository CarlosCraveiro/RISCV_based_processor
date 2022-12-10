# register operations
class CR:
    def __init__(self):
        self.rs2 = "invalid"
        self.rs1 = "invalid"
        self.gap = "00000"
        self.func = "invalid"

        self.functions = ["add", "sub", "and", "or", "slt"]

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

    def setRS2(self, register2):
        self.rs2 = self.setRS(register2)
        return self

    # function (function: str)
    def setFunc(self, function):
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

        return self

    # set all values to "invalid" once again
    def reset(self):
        self.rs1 = "invalid"
        self.rs2 = "invalid"
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

