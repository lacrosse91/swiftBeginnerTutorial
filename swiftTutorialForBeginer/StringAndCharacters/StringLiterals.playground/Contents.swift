import Cocoa

let someString = "Some string literal value"


let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""
//ok

let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""
print(quotation)

print(softWrappedQuotation)

let lineBreaks = """




This string starts with a line break.
It also ends with a line break.

"""

print(lineBreaks)
