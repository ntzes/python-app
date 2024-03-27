from flask import Flask, render_template, request
app = Flask(__name__)

#@app.route("/")
#def hello():
    #return "Hello World!"

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/salute', methods=['POST'])
def salute():
    name = request.form['name']
    return render_template('salute.html', name=name)

if __name__ == '__main__':
    app.run(debug=True)

