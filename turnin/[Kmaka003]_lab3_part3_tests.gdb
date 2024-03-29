# Test file for Lab3__


# commands.gdb provides the following functions for ease:
#   test "<message>"
#       Where <message> is the message to print. Must call this at the beginning of every test
#       Example: test "PINA: 0x00 => expect PORTC: 0x01"
#   checkResult
#       Verify if the test passed or failed. Prints "passed." or "failed." accordingly, 
#       Must call this at the end of every test.
#   expectPORTx <val>
#       With x as the port (A,B,C,D)
#       The value the port is epected to have. If not it will print the erroneous actual value
#   setPINx <val>
#       With x as the port or pin (A,B,C,D)
#       The value to set the pin to (can be decimal or hexidecimal
#       Example: setPINA 0x01
#   printPORTx f OR printPINx f 
#       With x as the port or pin (A,B,C,D)
#       With f as a format option which can be: [d] decimal, [x] hexadecmial (default), [t] binary 
#       Example: printPORTC d
#   printDDRx
#       With x as the DDR (A,B,C,D)
#       Example: printDDRB

echo ======================================================\n
echo Running all tests..."\n\n

# Example test:
#test "PINA: 0x00, PINB: 0x00 => PORTC: 0"
# Set inputs
#setPINA 0x00
#setPINB 0x00
# Continue for several ticks
#continue 2
# Set expect values
#expectPORTC 0
# Check pass/fail
#checkResult

# Add tests below
test "PINA: 1 => PORTC :0x60"
setPINA 1
continue 2
expectPORTC 0x60
checkResult


test "PINA: 4 => PORTC: 0x70"
setPINA 4
continue 2
expectPORTC 0x70
checkResult


test "PINA: 5 => PORTC: 0x38"
setPINA 5
continue 2
expectPORTC 0x38
checkResult


test "PINA: 8 => PORTC: 0x3C"
setPINA 8
continue 2
expectPORTC 0x3C
checkResult


test "PINA: 12 => PORTC: 0x3E"
setPINA 12
continue 2
expectPORTC 0x3E
checkResult


test "PINA: 15 => PORTC: 0x3F"
setPINA 15
continue 2
expectPORTC 0x3F
checkResult


test "PINA: 0x70 => PORTC: 0x40"
setPINA 0x70
continue 2
expectPORTC 0x40
checkResult



test "PINA: 0x30 => PORTC: 0xC0"
setPINA 0x30
continue 2
expectPORTC 0xc0
checkResult


test "PINA: 0x20 => PORTC: 0x40"
setPINA 0x20
continue 2
expectPORTC 0x40
checkResult



test "PINA: 0x3F => PORTC: 0xBF"
setPINA 0x3F
continue 2
expectPORTC 0xbf

checkResult


# Report on how many tests passed/tests ran
set $passed=$tests-$failed
eval "shell echo Passed %d/%d tests.\n",$passed,$tests
echo ======================================================\n
