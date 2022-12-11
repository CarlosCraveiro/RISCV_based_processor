# load and store operations
class CLS:
    def __init__(self):
        self.add = "invalid"
        self.rs1 = "invalid"
        self.func = "invalid"

        self.functions = ["lw", "sw"]

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
        if function == "lw":
            self.func= "000"
        elif function == "sw":
            self.func = "001"
        else:
            self.func = "invalid"

        return self

    # address (add: str)
    def setAdd(self, address):
        address = int(address)
        
        if address < 0:
            address = "invalid"
            
        self.add = '{0:08b}'.format(address)
        return self

    # set all values to "invalid" once again
    def reset(self):
        self.rs1 = "invalid"
        self.add = "invalid"
        self.func = "invalid"

    # parse command with specified fields
    def parse(self):
        op = "10"
        
        # throw error if syntax is wrong
        if (
            self.rs1 == "invalid" or
            self.add == "invalid" or
            self.func == "invalid"
        ):
            raise ValueError("Wrong syntax! Could not parse command.")
        
        return self.func + self.add[0:5] + self.rs1 + self.add[5:8] + op