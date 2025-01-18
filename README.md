# Ada Unchecked_Conversion Potential Precision Loss

This repository demonstrates a potential issue with Ada's `Unchecked_Conversion` function.  If used incorrectly, it can result in unexpected values due to loss of precision when converting between types with different ranges or representations. 

The `bug.ada` file contains the problematic code. The `bugSolution.ada` file shows a safer alternative.

## Issue Explanation

The `Unchecked_Conversion` function bypasses Ada's strong type checking.  While this offers performance advantages, it introduces the risk of introducing errors if not used carefully.  If the source value cannot be accurately represented in the target type, unexpected results may occur.  For example, converting a large integer to a float may lead to a loss of precision, or if the target type has a narrower range, it could lead to an exception.

## Solution

The preferred approach is to avoid `Unchecked_Conversion` whenever possible.  Instead, use type conversion that handles potential range errors or exceptions gracefully. This avoids undefined or unpredictable behavior.  The `bugSolution.ada` file illustrates this using type conversion with error handling if the conversion fails.  This ensures robust and predictable behavior.