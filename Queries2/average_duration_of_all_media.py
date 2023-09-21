import psycopg2

# Database connection parameters
db_params = {
    "host": "localhost",
    "database": "Bitrock Streaming Service",
    "user": "postgres",
    "password": "Abcd1235",
}

# Establish a database connection
try:
    connection = psycopg2.connect(**db_params)
except psycopg2.Error as e:
    print("Error: Unable to connect to the database.")
    print(e)
    exit()

# Create a cursor
cursor = connection.cursor()

# Define the SQL query to calculate the average duration of all media
sql_query = """
SELECT AVG(duration) AS average_duration
FROM "media";
"""

try:
    # Execute the SQL query
    cursor.execute(sql_query)

    # Fetch the average duration result
    average_duration = cursor.fetchone()[0]

    # Print the result
    print(f"Average Duration of All Media: {average_duration} seconds")

except psycopg2.Error as e:
    print("Error: Unable to execute the SQL query.")
    print(e)

# Close the cursor and database connection
cursor.close()
connection.close()
