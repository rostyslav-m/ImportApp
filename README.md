
There are many-to-many connection between Operation and Category and has-many-belongs-to connection between Company and Operation.

The home page displays all the data about operations in the context of the company. 
        It displays list of all the operations in the database visually grouped by company.
        Information about company includes: number of the operations, average amount of operations, highest operation from the current month and all the time, number of operations with status accepted.

On the Operations page possibile to filter displayed operations. There are a Searching and sorting by Company name or/and Invoice number or/and Reporter, Status, Kind fields or/and Amount diapasons or/and Categories of operations.

Users can download the data as CSV-format with all operations or after searching and sorting by any of parameters ( company name, invoice numbers, amount, status, etc.).

The import of operations from CSV file into Data base possible from the file without fields with connections.
TODO: More flexible import of operations from CSV file.

Preview on Heroku:  https://importapp55.herokuapp.com