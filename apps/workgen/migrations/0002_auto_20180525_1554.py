# -*- coding: utf-8 -*-
# Generated by Django 1.11.9 on 2018-05-25 22:54
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('workgen', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='movements',
            name='movements',
            field=models.ManyToManyField(related_name='movements', to='workgen.Musclegroup'),
        ),
        migrations.AddField(
            model_name='users',
            name='userworkouts',
            field=models.ManyToManyField(related_name='users', to='workgen.Workouts'),
        ),
        migrations.AddField(
            model_name='workouts',
            name='movements',
            field=models.ManyToManyField(related_name='workouts', to='workgen.Movements'),
        ),
    ]
