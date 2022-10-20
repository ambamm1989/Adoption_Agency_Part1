from flask_wtf import FlaskForm
from wtforms import IntergerField, SelectField, StringField, TextAreaField, BooleanField
from wtforms.validators import URL, Optional, NumberRange, InputRequired, Length

class AddPetForm(FlaskForm):

    name = StringField(
        validators=[InputRequired()],
    )
    species = SelectField(
        choices=[("cat", "Cat"), ("dog", "Dog"), ("porcupine", "Porcupine")],
    )
    photo_url = SelectField(
        validators=[Optional(), URL()],
    )
    age = IntergerField(
        validators=[Optional(), NumberRange(min=0, max=30)],
    )
    notes = TextAreaField(
        validators=[Optional(), NumberRange(min=0, max=30)],
     )

class EditPetForm(FlaskForm):
    photo_url = StringField(
        validators=[Optional(), URL()],
    )
    notes = TextAreaField(
        validators=[Optional(), Length(min=10)],
    )
    available = BooleanField("Available?")