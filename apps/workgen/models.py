# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

class Users(models.Model):
  email =      models.CharField(max_length=255)
  first_name = models.CharField(max_length=255)
  last_name =  models.CharField(max_length=255) 
  password =   models.CharField(max_length=255)
  age =        models.IntegerField(default=0)
  userworkouts =   models.ManyToManyField('Workouts', related_name="users")
  equipment =   models.ManyToManyField('Equipment', related_name="users")
  created_at =  models.DateTimeField(auto_now = True) 
  updated_at =  models.DateTimeField(auto_now = True)

class Equipment(models.Model):
  name      =  models.CharField(max_length=255,default=0)
  created_at =  models.DateTimeField(auto_now = True) 
  updated_at =  models.DateTimeField(auto_now = True)
class Workouts(models.Model):
  workoutdate = models.DateField()
  moves =   models.ManyToManyField('movements', related_name="workouts")
  user =   models.ForeignKey(Users, related_name="workouts",default=1)
  created_at =  models.DateTimeField(auto_now = True) 
  updated_at =  models.DateTimeField(auto_now = True)
 
class Movements(models.Model):
  name =      models.CharField(max_length=255)
  repsperset = models.IntegerField(default=10)
  mgroup =   models.ManyToManyField('musclegroup', related_name="movements")
  equipment =   models.ForeignKey(Equipment, related_name="movements",default=1)
  wtype =  models.CharField(max_length=255,default='Barbell')
  created_at =  models.DateTimeField(auto_now = True) 
  updated_at =  models.DateTimeField(auto_now = True)


class Musclegroup(models.Model):
  name =      models.CharField(max_length=255)
  created_at =  models.DateTimeField(auto_now = True) 
  updated_at =  models.DateTimeField(auto_now = True)
