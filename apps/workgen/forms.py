from django import forms


class EquiplistForm(forms.Form):
    equipment = forms.MultipleChoiceField(widget=forms.CheckboxSelectMultiple(attrs={'checked' : 'checked'}),label="Please Choose Available Equipment:")
