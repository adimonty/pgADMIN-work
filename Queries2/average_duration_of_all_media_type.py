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

# Define the SQL query to calculate the average duration grouped by type
sql_query = """
SELECT
    CASE
        WHEN is_music THEN 'music'
        WHEN is_podcast THEN 'podcast'
        ELSE 'unknown'
    END AS media_type,
    AVG(duration) AS average_duration
FROM "media"
GROUP BY media_type;
"""

try:
    # Execute the SQL query
    cursor.execute(sql_query)

    # Fetch the results into a list of tuples
    results = cursor.fetchall()

    # Store the results in memory for future use
    average_durations = {}
    for row in results:
        media_type, avg_duration = row
        average_durations[media_type] = avg_duration

    # Print the results
    for media_type, avg_duration in average_durations.items():
        print(f"Media Type: {media_type}, Average Duration: {avg_duration} seconds")

except psycopg2.Error as e:
    print("Error: Unable to execute the SQL query.")
    print(e)

# Close the cursor and database connection
cursor.close()
connection.close()
