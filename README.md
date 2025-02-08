# Unhandled Exception in Asynchronous Dart
This example showcases a common error in Dart: neglecting to handle exceptions that might arise during asynchronous operations.  The code fetches data from a remote API.  The initial version lacks robust error handling, while the solution offers improved exception management.

## Bug
The `bug.dart` file contains code that attempts to fetch data asynchronously but doesn't gracefully handle all possible errors.  It may fail silently or crash the application unexpectedly.

## Solution
The `bugSolution.dart` file provides a corrected version. It includes a `try-catch` block to manage potential errors during the network request and JSON parsing.  Crucially, it rethrows the exception after logging it, allowing calling functions to handle errors appropriately.  This prevents the application from crashing unexpectedly while still giving the programmer a chance to handle and report errors effectively.
