# -*- coding: utf-8 -*-
# Generated by Django 1.11.9 on 2018-05-28 21:10
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('workgen', '0004_auto_20180528_1314'),
    ]

    operations = [
        migrations.RenameField(
            model_name='movements',
            old_name='musclegroup',
            new_name='mgroup',
        ),
    ]
