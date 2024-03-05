from flask import Flask, render_template,request
from flask import redirect, flash, url_for
app = Flask(__name__)
app.secret_key = "hhgfagghdidshxhyasyddeydceodiewuhduueibnhd"


@app.route("/")
def index():
    return render_template("login.html")

@app.route("/login", methods = ["POST"])   
def login():
    email = request.form.get("email",None)
    password = request.form.get("password",None)
    if all ([email,password]):
        email= email.strip().lower()
    else:
        flash("Error! Invalid From Data! Please try Again")
        return redirect(url_for('index'))    


if __name__ == "__main__":
    app.run(debug=True)    