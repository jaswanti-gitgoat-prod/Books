-- Example in Python with SQLite
import sqlite3

conn = sqlite3.connect('example.db')
cursor = conn.cursor()

user_id = 1
cursor.execute("SELECT * FROM users WHERE id = ?", (user_id,))
