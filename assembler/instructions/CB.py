# conditional branch operations
class CB:
    def __init__(self):
        self.add = "invalid"
        self.func = "invalid"

        self.functions = ["bneqz"]

    # fields setters

    # function (function: str)
    def setFunc(self, function):
        if function == "bneqz":
            self.func= "000"
        else:
            self.func = "invalid"

        return self

    # address (add: str)
    def setAdd(self, address):
        address = int(address)
        
        if address < 0:
            address = "invalid"
            
        self.add = '{0:011b}'.format(address)
        return self

    # set all values to "invalid" once again
    def reset(self):
        self.rs1 = "invalid"
        self.add = "invalid"
        self.func = "invalid"

    # parse command with specified fields
    def parse(self):
        op = "11"
        
        # throw error if syntax is wrong
        if (
            self.add == "invalid" or
            self.func == "invalid"
        ):
            raise ValueError("Wrong syntax! Could not parse command.")
        
        return self.func + self.add[3:9] + self.add[0:3] + self.add[9:11] + op