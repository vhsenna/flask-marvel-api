from app import db
from flask import redirect, render_template, request, url_for
from flask_login import current_user
from . import bp as app
from .models import Character

@app.route('/')
@app.route('/home')
def home():
    return render_template('home.html')
