# File Cleaner Script

This script is used for cleaning temporary files and logs in specified directories. The script will:

- Delete `.log` files from the logs directory that have been modified in the last 24 hours.
- Delete `.tpm` files from the TPMs directory that have been modified in the last 24 hours.
- Provide feedback on how many files were deleted.

## Features:
- Directory validation: Verifies the existence of the specified directories.
- Logs: Keeps track of deleted files and displays how many files were removed.
- Flexible: Works for both `.log` and `.tpm` files.
- Safety: Ensures files are not deleted unless they match criteria (modified in the last 24 hours).

## How to Use:
1. Run the script.
2. Enter the path to the logs directory.
3. Enter the path to the TPMs directory.
4. The script will remove the specified file types and display how many were deleted.

