from flask import Flask
app = Flask(__name__)

@app.route("/")
#def hello():
    #return "Hello World!"

def salute_user():
    # Prompt the user for their name
    name = input("What's your name? ")
    # Salute the user
    print(f"Hello, {name}! Welcome!")
# Call the function to salute the user
salute_user()

if __name__ == "__main__":
    app.run()
