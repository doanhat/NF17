import psycopg2

empl = input("Emplacement du fichier à exécuter dans la BDD : ")
f = open(empl, 'r')
create = f.read()
f.close()

HOST = "tuxa.sme.utc"
USER = "bdd0p058"
PASSWORD = "vArOxF6R"
DATABASE = "dbbdd0p058"

# Connect to an existing database
conn = psycopg2.connect("host=%s dbname=%s user=%s password=%s" % (HOST, DATABASE, USER, PASSWORD))
print (conn)


# Open a cursor to send SQL commands
cur = conn.cursor()

# Execute a SQL INSERT command
cur.execute(create)

# Commit (transactionnal mode is by default)
conn.commit()

# Close connection
conn.close()
print (conn)
