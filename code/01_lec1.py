# %load_ext sql
# %sql sqlite:///dataset_1.db
# %sql SELECT * FROM precipitation_full LIMIT 5;
# %sql SELECT COUNT(*) FROM precipitation_full;

# %%sql
# SELECT SUM(p.precipitation)
# FROM precipitation_full p, states s
# WHERE p.state_code = s.code AND s.abbrev = 'CA';

# result = %sql SELECT * FROM states;

# result.keys

# result[1]

# result[1].name

import sqlite3

conn = sqlite3.connect('dataset_1.db')
cursor = conn.cursor()

cursor.execute("SELECT * FROM precipitation_full LIMIT 5;")
print(cursor.fetchall())

cursor.execute("SELECT COUNT(*) FROM precipitation_full;")
print(cursor.fetchone())

cursor.execute(
    """
    SELECT SUM(p.precipitation) 
    FROM precipitation_full p
    JOIN states s ON p.state_code = s.code
    WHERE s.abbrev = 'CA';
"""
)
print(cursor.fetchone())

cursor.execute("SELECT * FROM states;")
result = cursor.fetchall()

# Access the result and print specific data
print(result[1])  # Print second record
print(result[1][1])  # Assuming 'name' is in the second column (index 1)

# Close the connection
conn.close()
