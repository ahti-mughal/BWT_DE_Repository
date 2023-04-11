import sqlite3 as s3

def new_user():
    name = input("Enter your name with the following format, Eg: 'John Doe': ")
    email = input("Enter your email: ")
    mpass = input("Enter the master password: ")

    conn = s3.connect('users.db')
    cur = conn.cursor()
    table_new_user = """ create table if not exists users( name varchar(20),email varchar(20),mpass varchar(20));"""
    cur.execute(table_new_user)
    cur.execute("insert into users values (?,?,?)", (name, email, mpass))
    conn.commit()
    conn.close()
    return name
    
def choice(name):
    while True:
        mode = input("What would you like to do?\n'v' to view\n'a' to add\n'd' to delete\n'q' to quit: ")
        if mode == "v":
            view(name)
        elif mode == "a":    
            new_pass(name)
        elif mode == "d":
            delete_pass(name)    
        elif mode == "q":
            break    
        else:
            print("Incorrect Choice")    

def old_user():
    name = input("Enter your name: ")
    mpass = input("Enter your master password: ")
    conn = s3.connect("users.db")
    c = conn.cursor()
    c.execute("SELECT * FROM users WHERE name=? AND mpass=?", (name, mpass))
    row = c.fetchone()
    if row is not None:
        conn.close()
        return name
    else:
        conn.close()
        return None


def new_pass(name):
    app_name = input("Enter the name of the application: ")
    email = input("Enter the email of the application: ")
    password = input("Enter the password: ") 
    conn = s3.connect(f"{name}.db")
    c = conn.cursor()
    c.execute("CREATE TABLE IF NOT EXISTS passwords (app_name varchar(20),email varchar(20),password varchar(20))")
    c.execute("INSERT INTO passwords VALUES (?, ?, ?)", (app_name, email, password))
    conn.commit()
    conn.close()

def view(name):
    try:
        conn = s3.connect(f"{name}.db")
        c = conn.cursor()
        c.execute("select * from passwords")
        rows = c.fetchall()
        for row in rows:
            print(f"Site: {row[0]} | Email: {row[1]} | Password: {row[2]}")
        conn.close()
    except s3.OperationalError:
        print("No passwords added")

def delete_pass(name):
    try:
        conn = s3.connect(f"{name}.db")
        c = conn.cursor()
        c.execute("SELECT * FROM passwords")
        rows = c.fetchall()
        if len(rows) == 0:
            print("No passwords added")
            conn.close()
            return
        app_name = input("Enter the name of the application to delete password: ")
        found = False
        for row in rows:
            if row[0] == app_name:
                found = True
                break
        if found:
            confirm = input(f"Are you sure you want to delete the password for {app_name}? (y/n) ")
            if confirm == "y":
                c.execute("DELETE FROM passwords WHERE app_name=?", (app_name,))
                conn.commit()
                print(f"The password for {app_name} has been deleted successfully.")
        else:
            print(f"The password for {app_name} doesn't exist. Please try again.")
            conn.close()
    except s3.OperationalError:
        print("No passwords added")

while True:
    user_status = input("Welcome! Sign Up or Sign in? or press q to quit: ").lower()
    if user_status == "sign up":
        name = new_user()
        choice(name)
        break
    elif user_status == "sign in":
        while True:
            name = old_user()
            if name is not None:
                choice(name)
                break
            else:
                print("User doesn't exist")
                retry = input("Do you want to try again? (y/n) ").lower()
                if retry == "y":
                    continue
                elif retry == "n":
                    break
                else:
                    print("Invalid choice, please enter 'y' or 'n'")
        break
    elif user_status == "q":
        break
    else:
        print("Enter correctly!")
        continue

        
        

    

