# RV16Cm instruction architecture assembler

import sys
import utils.instruction_utils as utils
from instructions.CB import CB
from instructions.CI import CI
from instructions.CR import CR
from instructions.CLS import CLS

def assemble(file, assembledFile):
    # parsers
    crParser = CR()     # opcode = 00
    ciParser = CI()     # opcode = 01
    clsParser = CLS()   # opcode = 10
    cbParser = CB()     # opcode = 11
    
    cmd = file.readline()
    while cmd != '':
        # process command
        cmd = utils.inputToCommandList(cmd)
        
        if cmd[0] in crParser.functions:
            
            crParser.setFunc(cmd[0]).setRS1(cmd[1]).setRS2(cmd[2])
            utils.writeInstructionToFile(crParser.parse(), assembledFile)
            crParser.reset()
            
        elif cmd[0] in ciParser.functions:
            
            ciParser.setFunc(cmd[0]).setRS1(cmd[1]).setImm(cmd[2])
            utils.writeInstructionToFile(ciParser.parse(), assembledFile)
            ciParser.reset()
            
        elif cmd[0] in clsParser.functions:
            
            clsParser.setFunc(cmd[0]).setRS1(cmd[1]).setAdd(cmd[2])
            utils.writeInstructionToFile(clsParser.parse(), assembledFile)
            clsParser.reset()
            
        elif cmd[0] in cbParser.functions:

            cbParser.setFunc(cmd[0]).setAdd(cmd[1])
            utils.writeInstructionToFile(cbParser.parse(), assembledFile)
            cbParser.reset()
        
        else:
            raise Exception("Invalid instruction!")

        cmd = file.readline()

def main():
    # source file
    file = sys.argv[1]
    fileName = file.split(".")[0]
    sourceFile = open(file, 'r')
    assembledFile = open(fileName + '.rsv', 'wb')
    
    assemble(sourceFile, assembledFile)    
    
    # close files
    sourceFile.close()
    assembledFile.close()
    
main()
