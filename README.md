# Unhandled Exception in Asynchronous Dart Function

This repository demonstrates a common error in Dart: insufficient error handling within asynchronous functions. The `fetchData` function makes a network request and parses JSON.  However, it only prints error messages to the console instead of implementing robust error handling mechanisms. This can lead to application crashes or unexpected behavior.

The `bug.dart` file contains the problematic code. The `bugSolution.dart` file presents a corrected version with improved error handling.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart`.
3. Simulate network errors (e.g., by disconnecting from the internet) to trigger the exception.
4. Observe the console output.

## Solution

The solution involves improved exception handling to provide graceful recovery and user feedback.  This includes specific handling for network errors and JSON decoding failures.  Consider also implementing features like retry mechanisms or user notifications in a production setting.
