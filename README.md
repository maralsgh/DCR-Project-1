# File Metadata Search Engine

This project is a file metadata search engine implemented in Python. It traverses a specified directory, extracts metadata and content from files, and stores this information in a MySQL database. You can search for files based on their names or content.

## Features

- **Directory Traversal:** Scans a specified directory and subdirectories.
- **Metadata Extraction:** Gathers file name, path, type, size, and readability.
- **Content Extraction:** Reads and stores text content from HTML files.
- **MySQL Storage:** Stores metadata and content in a MySQL database.
- **Full-Text Search:** Efficiently searches file names and content.

## Prerequisites

- Python 3.x
- MySQL Server
- `mysql-connector-python` package

## Installation

1. **Set Up MySQL Database:**

   Ensure MySQL server is running and create a database named `dcrb_search` by the codes in a-SQL.sql:


## Usage

1. **Configure Database Connection:**

   Update the database connection parameters in the script:

   ```python
   conn = mysql.connector.connect(
       host="localhost",
       user="root",
       password="your_password",
       database="dcrb_search"
   )
   ```

2. **Search for Files:**

   Enter a search string when prompted:

   ```sh
   Enter search string: your-search-string
   ```

## Example

```sh
Enter search string: clear
Total search results: 49
Search results:
File path: D:\university\digitalcontent\files\example.html | File type: html | count in file name: 1 | count in files: 3
File path: D:\university\digitalcontent\files\subdir\example2.html | File type: html | count in file name: 1 | count in files: 5
```
