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

# Define the SQL query
sql_query = """
SELECT EXTRACT(YEAR FROM birthdate) AS birth_year, firstname, lastname
FROM "customer"
ORDER BY birth_year, firstname, lastname;
"""

try:
    # Execute the SQL query
    cursor.execute(sql_query)

    # Fetch and print the results
    results = cursor.fetchall()
    for row in results:
        birth_year, firstname, lastname = row
        print(f"Birth Year: {birth_year}, First Name: {firstname}, Last Name: {lastname}")

except psycopg2.Error as e:
    print("Error: Unable to execute the SQL query.")
    print(e)

# Close the cursor and database connection
cursor.close()
connection.close()
