# -*- coding: utf-8 -*-
# Generated by Django 1.11.9 on 2018-05-28 20:14
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('workgen', '0003_auto_20180525_1556'),
    ]

    operations = [
        migrations.RenameField(
            model_name='movements',
            old_name='Name',
            new_name='name',
        ),
        migrations.RenameField(
            model_name='musclegroup',
            old_name='Name',
            new_name='name',
        ),
        migrations.RenameField(
            model_name='workouts',
            old_name='Name',
            new_name='name',
        ),
    ]