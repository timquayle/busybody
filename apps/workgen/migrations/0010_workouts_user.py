# -*- coding: utf-8 -*-
# Generated by Django 1.11.9 on 2018-06-02 00:48
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('workgen', '0009_movements_wtype'),
    ]

    operations = [
        migrations.AddField(
            model_name='workouts',
            name='user',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, related_name='workouts', to='workgen.Users'),
        ),
    ]