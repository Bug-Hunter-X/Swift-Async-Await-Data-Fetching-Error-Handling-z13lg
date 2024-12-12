# Swift Async/Await Data Fetching: Robust Error Handling

This example demonstrates a common pitfall in Swift's async/await error handling when fetching data. The initial `fetchData` function only handles errors during the network request itself.  However, errors might occur later, during data processing.  This repository provides a solution to handle such errors comprehensively.

## Bug

The `bug.swift` file shows an incomplete error-handling mechanism. It catches errors during the network request but does not handle potential errors in subsequent data processing steps.

## Solution

The improved solution in `bugSolution.swift` adds comprehensive error handling to cover all stages, ensuring a more robust and reliable data-fetching mechanism.