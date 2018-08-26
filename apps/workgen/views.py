# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import  HttpResponse, render, redirect

import re, bcrypt,datetime, random
from datetime import datetime, timedelta
from django.db import connection
from django.db.models import Q
from models import *
from forms import *
from django.http import JsonResponse
from django.core import serializers
NAME_REGEX = re.compile(r'^[a-zA-Z ]+$')
MAIL_REGEX = re.compile(r'^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9._-]+\.[a-zA-Z]+$')


#main login/registration page
def index(request):
 if 'email' in request.session:
 
  userinfo = Users.objects.get(email=request.session['email'])
  
  today_date = datetime.now().date()
  today_dow = today_date.weekday()
  
  if today_dow==6:
   sunday_date=today_date
   
   monday_date=today_date + timedelta(days=1)
   
   tuesday_date=today_date + timedelta(days=2)
   wednesday_date=today_date + timedelta(days=3)
   thursday_date=today_date + timedelta(days=4)
   friday_date=today_date + timedelta(days=5)  
   saturday_date=today_date + timedelta(days=6)  
  elif today_dow==0:
   monday_date=today_date
   sunday_date=today_date - timedelta(days=1)
   tuesday_date=today_date + timedelta(days=1)
   wednesday_date=today_date + timedelta(days=2)
   thursday_date=today_date + timedelta(days=3)
   friday_date=today_date + timedelta(days=4)
   saturday_date=today_date + timedelta(days=5)  

  elif today_dow==1:
   tuesday_date=today_date
   sunday_date=today_date - timedelta(days=2)
   monday_date=today_date - timedelta(days=1)
   wednesday_date=today_date + timedelta(days=1)
   thursday_date=today_date + timedelta(days=2)
   friday_date=today_date + timedelta(days=3)
   saturday_date=today_date + timedelta(days=4) 
   
  elif today_dow==2:
   wednesday_date=today_date
   sunday_date=today_date - timedelta(days=3)
   monday_date=today_date - timedelta(days=2)
   tuesday_date=today_date - timedelta(days=1)
   thursday_date=today_date + timedelta(days=1)
   friday_date=today_date + timedelta(days=2)
   saturday_date=today_date + timedelta(days=3) 
  elif today_dow==3:
   thursday_date=today_date
   sunday_date=today_date - timedelta(days=4)
   monday_date=today_date - timedelta(days=3)
   tuesday_date=today_date - timedelta(days=2)
   wednesday_date=today_date - timedelta(days=1)
   friday_date=today_date + timedelta(days=1)
   saturday_date=today_date + timedelta(days=2) 
  elif today_dow==4:
   friday_date=today_date
   sunday_date=today_date - timedelta(days=5)
   monday_date=today_date - timedelta(days=4)
   tuesday_date=today_date - timedelta(days=3)
   wednesday_date=today_date - timedelta(days=2)
   thursday_date=today_date - timedelta(days=1)
   saturday_date=today_date + timedelta(days=1) 
  elif today_dow==5:
   saturday_date=today_date
   sunday_date=today_date - timedelta(days=6)
   monday_date=today_date - timedelta(days=5)
   tuesday_date=today_date - timedelta(days=4)
   wednesday_date=today_date - timedelta(days=3)
   thursday_date=today_date - timedelta(days=2)
   friday_date=today_date - timedelta(days=1) 
  

  try:
   sunday_workout = Workouts.objects.get(user=userinfo.id,workoutdate=sunday_date)
   sunday_moves = sunday_workout.moves.all()
  except:
   sunday_moves = ""
  try:
   monday_workout = Workouts.objects.get(user=userinfo.id,workoutdate=monday_date)
   monday_moves = monday_workout.moves.all()
  except:
   monday_moves = ""
  try:
   tuesday_workout = Workouts.objects.get(user=userinfo.id,workoutdate=tuesday_date)
   tuesday_moves = tuesday_workout.moves.all()
  except:
    tuesday_moves = ""
  try:
   wednesday_workout = Workouts.objects.get(user=userinfo.id,workoutdate=wednesday_date)
   wednesday_moves = wednesday_workout.moves.all()
  except:
    wednesday_moves = ""
  try: 
   thursday_workout = Workouts.objects.get(user=userinfo.id,workoutdate=thursday_date)
   thursday_moves = thursday_workout.moves.all()   
  except: 
   thursday_moves = "" 
  try:
   friday_workout = Workouts.objects.get(user=userinfo.id,workoutdate=friday_date)
   friday_moves = friday_workout.moves.all()
  except: 
   friday_moves = "" 
  try:
    saturday_workout = Workouts.objects.get(user=userinfo.id,workoutdate=saturday_date)
    saturday_moves = saturday_workout.moves.all()
  except:
    saturday_moves = ""
  print thursday_moves

  context = {
  "sunday_moves": sunday_moves,
  "monday_moves": monday_moves,
  "tuesday_moves": tuesday_moves,
  "wednesday_moves": wednesday_moves,
  "thursday_moves": thursday_moves,
  "friday_moves": friday_moves,
  "saturday_moves": saturday_moves,
  "userinfo": userinfo,
  "sunday_date": sunday_date,
  "monday_date": monday_date,
  "tuesday_date": tuesday_date,
  "wednesday_date": wednesday_date,
  "thursday_date": thursday_date,
  "friday_date": friday_date,
  "saturday_date": saturday_date
  


  }
  
  return render(request,'workgen/homecal.html',context) 
 else:
  #else index.html contains registration form
  return render(request,'workgen/index.html') 
#processing and validation of registration info
def process_registration(request):
  #due the validation on all of the inputs
  errors = []
  errors = validate(request.POST)
  if len(errors):
   context = {
   "errorlist": errors,
           }
   #DO NOT RENDER FROM A REQUEST.POST, REDIRECT TO A GET FIRST
   return render(request,'workgen/index.html',context)
  #if it passed validation, write it to the database
  else:
   if request.method == 'POST':
    firstname = request.POST['firstname']
    lastname =   request.POST['lastname']
    password =   request.POST['password']
    email = request.POST['email']
    hash_password = bcrypt.hashpw(password.encode(), bcrypt.gensalt())
    Users.objects.create(first_name=firstname,last_name=lastname,email=email,password=hash_password)   
    request.session["email"] = email
    #userinfo = Users.objects.get(email=request.session['username'])
    equipment = Movements.objects.values('wtype').distinct()
    equiplist = [entry for entry in equipment]
    userinfo = Users.objects.get(email=request.session['email'])
    context = { "equipment": equiplist,
                "userinfo": userinfo,
    }
    #equiplist = (equipment)
    #print str(equiplist[0])
    return render(request,'workgen/equippick.html',context) 

#checking login/password vs our database info
def loginchk(request):
 #route for people who have an account, but no session info stored
  if request.method == "POST":
 #is the email contained in the database?
   email=request.POST['email']
   password=request.POST['password']
   try:
    userdb = Users.objects.get(email=email)
  #if not flag a login/password error 
   except:
    context = {
      "loginerror": "Invalid Login or Password"         }

    return render(request,'workgen/index.html',context)
   dbpassword=userdb.password
   
   if(bcrypt.checkpw(password.encode(),dbpassword.encode())):
    
    request.session['email'] = email
   
    return redirect('/') 
   else:
    context = {
      "loginerror": "Invalid Login or Password"         }

    return render(request,'workgen/index.html',context)

def admin_page(request):
  return render(request,'workgen/adminpage.html') 

def admin_addmove(request):
 
  return render(request,'workgen/addmovement.html') 

def admin_processpostmove(request):
 if request.method=="POST":
  movename = request.POST['movement']
  repsperset = request.POST['rps']
  weight_type = request.POST['weight_type']
  return admin_processstoremove(movename,request,repsperset,weight_type)




def admin_processpostmovemod(request):
 if request.method=="POST":
  moveid = request.POST['movelist']
  rps = request.POST['rps']
  weight_type = request.POST['weight_type']
  movename = Movements.objects.get(id=moveid)
  return admin_processstoremovemod(movename.name,request,rps,weight_type)

def admin_processstoremovemod(movename,request,rps,weight_type):
 move = Movements.objects.get(name=movename)
 move.repsperset = rps
 move.wtype = weight_type
 move.save()

 return render(request,'workgen/modmovement.html',{"allmoves": 
  Movements.objects.all()})

def admin_processstoremove(movename,request,rps,weight_type):
 this_equip = Equipment.objects.get(name=weight_type)
 Movements.objects.create(name=movename,repsperset=rps,wtype=weight_type,equipment_id=this_equip.id)
 #create our equipment m2m 
 #print "Wt",weight_type
 #this_equip = Equipment.objects.get(name=weight_type)
 #move=Movements.objects.get(name=movename)
 #print "MID",move.id
 #move.equipment.add(this_equip)
 return render(request,'workgen/addmovement.html')

def admin_modmovement(request):
  allmoves = Movements.objects.all()
 

  return render(request,'workgen/modmovement.html', {"allmoves": allmoves}) 

def admin_addmovementmuscle(request):
  allmoves = Movements.objects.all()
  allmgroups = Musclegroup.objects.all()

  return render(request,'workgen/addmovementmuscle.html', {"allmoves": allmoves,"allmgroups": allmgroups}) 

def admin_processpostmovementmuscle(request):
 if request.method=="POST":
  movename = request.POST['movelist']
  mgname = request.POST['mglist']
  print "MOVENAME",movename

  return admin_processstoremovementmuscle(movename,mgname,request)

def admin_processstoremovementmuscle(movename,mgname,request):
 this_movement= Movements.objects.get(id=movename)
 this_mgroup = Musclegroup.objects.get(id=mgname)
 this_movement.mgroup.add(this_mgroup)
 
 return redirect('/admin/addmovementmuscle',request)
 #return redirect(request,'/admin/addmovementmuscle')

def processwodate(request):
  if request.method=="POST":



    #get userinfo so we know who we are dealing with
    userinfo = Users.objects.get(email=request.session['email'])
    #get that users list of availabLe equipment
    available_equipment=userinfo.equipment.all()  
    equiplist = []
    #convert it to a list,  equiplist is a list of objects
    equiplist = list(available_equipment)
    #make a list of Q(object) queries
    queries = [Q(equipment=value) for value in equiplist] 
    #pop last value off of list
    query = queries.pop()
    #print "QVALUE",query
    for item in queries:
     query |= item
    print "BIGQUERY", query
    available_movements = Movements.objects.filter(query)
    #a = list(available_movements)
    print "MOVELENGTH", len(available_movements)
    for i in range(len(available_movements)):
     print available_movements[i].name
   # print type(a)
    #due the validation on all of the inputs
    errors = []
    wodate = request.POST['wodate']
    #convert from unicode to string
    wostring = str(wodate)
    #convert from string to datetime.datetime
    wodatedt= datetime.strptime(wostring, '%Y-%m-%d')
    
    #td = wodt - timedelta(days=10)
    #print td
    if len(errors):
      context = {
     "errorlist": errors,
             }
      return render(request,'workgen/homepage.html',context)
    else:
    # return redirect('/')
    
     return generate_workouts(wodatedt,request,available_movements)

def generate_workouts(wodatedt,request,available_movements):
 #to do: try/except if workout date already contains a workout
 #shoulder_movecount = Movements.objects.filter(mgroup__name='Shoulders').count()
 #shoulder_moves = Movements.objects.filter(mgroup__name='Shoulders')
 shoulder_movecount = available_movements.filter(mgroup__name='Shoulders').count()
 shoulder_moves = available_movements.filter(mgroup__name='Shoulders')
 #arms_movecount = Movements.objects.filter(mgroup__name='Arms').count()
 #arms_moves = Movements.objects.filter(mgroup__name='Arms')
 arms_movecount = available_movements.filter(mgroup__name='Arms').count()
 arms_moves = available_movements.filter(mgroup__name='Arms')
 print "SMOVES",arms_moves[0].name

 chest_movecount = available_movements.filter(mgroup__name='Chest').count()
 chest_moves = available_movements.filter(mgroup__name='Chest')
 upperback_movecount = available_movements.filter(mgroup__name='Upper Back').count()
 upperback_moves = available_movements.filter(mgroup__name='Upper Back')
 lowerback_movecount = available_movements.filter(mgroup__name='Lower Back').count()
 lowerback_moves = available_movements.filter(mgroup__name='Lower Back')
 abdominal_movecount = available_movements.filter(mgroup__name='Abdominals').count()
 abdominal_moves = available_movements.filter(mgroup__name='Abdominals')
 
 legrand = random.randrange(1,4)
 if legrand == 1:
  legs_movecount = available_movements.filter(mgroup__name='Glutes').count()
  legs_moves = available_movements.filter(mgroup__name='Glutes')
 elif legrand == 2:
  legs_movecount = available_movements.filter(mgroup__name='Quadraceps').count()
  legs_moves = available_movements.filter(mgroup__name='Quadraceps')
 elif legrand == 3:
  legs_movecount = available_movements.filter(mgroup__name='Hamstrings').count()
  legs_moves = available_movements.filter(mgroup__name='Hamstrings')
 elif legrand == 4:
  legs_movecount = available_movements.filter(mgroup__name='Calves').count()
  legs_moves = available_movements.filter(mgroup__name='Calves')
 shoulder_move = get_movement(shoulder_movecount,shoulder_moves,request,wodatedt)
 arm_move = get_movement(arms_movecount,arms_moves,request,wodatedt)
 chest_move = get_movement(chest_movecount,chest_moves,request,wodatedt)
 upperback_move = get_movement(upperback_movecount,upperback_moves,request,wodatedt)
 lowerback_move = get_movement(lowerback_movecount,lowerback_moves,request,wodatedt)
 legs_move = get_movement(legs_movecount,legs_moves,request,wodatedt)
 abdominal_move = get_movement(abdominal_movecount,abdominal_moves,request,wodatedt)
 userinfo=Users.objects.get(email=request.session['email'])
 Workouts.objects.create(workoutdate=wodatedt,user_id=userinfo.id)
 this_workout=Workouts.objects.get(workoutdate=wodatedt,user_id=userinfo.id)
 this_workout.moves.add(shoulder_move)
 this_workout.moves.add(arm_move)
 this_workout.moves.add(chest_move)
 this_workout.moves.add(upperback_move)
 this_workout.moves.add(lowerback_move)
 this_workout.moves.add(legs_move)
 this_workout.moves.add(abdominal_move)
 context = {
 "shoulder_move": shoulder_move,
 "arm_move": arm_move,
 "chest_move": chest_move,
 "upperback_move": upperback_move,
 "lowerback_move": lowerback_move,
 "legs_move": legs_move,
 "abdominal_move": abdominal_move,
 }

 #return render(request,'workgen/workoutpage.html',context)    
 return redirect('/')




def get_movement(movecount,moves,request,wodatedt):
 
 movegood=False
 #outter loop, if we break out while movegood==false, we start over, do it again, means our movement has been done
 #if we break out with movegood==true, means we are good, we return to our calling function.
 while(movegood != True):
  #TODO SEED THIS SO RANDOM NUMBERS ARE MORE RANDOM
  sget = random.randrange(1, movecount)
  print "RANDOM",sget
  for x in range(len(moves)):
    print "MNAME",moves[x].name
    print "MID",moves[x].id
    print "X IS: ",x
    if x==sget:
     selected_movement=moves[x]
     used = historical_check(moves[x],request,wodatedt)
     if used:
      movegood=False
      print "STARTING OVER"
      break
     else:
      movegood=True
      break  
 print "GOT it! SELECtED MOVEMENT ",selected_movement.name
 return selected_movement

#checks the database to make sure movement was not used(in given time period, returns false if it has not been used, returns true if it has)
def historical_check(smove,request,wodatedt):
 
 userinfo = Users.objects.get(email=request.session['email'])
 #version 1, we check for movements we have used 10 days prior to the workout day we are programming as well as any workouts 10days in the future that are programmed
 td = wodatedt - timedelta(days=10)
 tdplus = wodatedt + timedelta(days=10)
 print "10DAYSPRIOR",td
 print "MOVEMENT",smove.name
 #incoorporate date range, not the whole movements used database
 #version 1, no date range
 #move_exists = Workouts.objects.filter(user=userinfo.id,moves=smove.id)
 move_exists = Workouts.objects.filter(user=userinfo.id,moves=smove.id,workoutdate__range=[td, tdplus])
 if move_exists:
  print "MOVEMENT EXISTS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  return True
 else:
  print "MOVEMENT DOES NOT EXIST!"
  return False

def process_equipment(request):
  if request.method=="POST":
    available_equipment = []
    for key in request.POST:
     if key != "csrfmiddlewaretoken":
       available_equipment.append(key)
  available_equipment.append("Bodyweight")
  this_user=Users.objects.get(email=request.session['email'])
  for i in range(len(available_equipment)):
    print("EQUIP",available_equipment[i])
    this_equipment = Equipment.objects.get(name=available_equipment[i])
    this_user.equipment.add(this_equipment)
  return redirect('/')
def getmovedetails(request,move):
  print "MOVENUMBER",move
  data = serializers.serialize("json", [Movements.objects.get(id=move)])
  return HttpResponse(data)

def change_equip(request):
    userinfo=Users.objects.get(email=request.session['email'])
    #get all equipment possibilties
    equipment = Equipment.objects.filter()
    user_equipment= userinfo.equipment.all()
    equiplistform = EquiplistForm()
    #this line?
    equiplistform.fields['equipment'].choices = [(x.id, x.name,) for x in  Equipment.objects.filter()]
    #print equiplistform.fields['equipment'].choices
    context = {  "equiplistform":equiplistform,
                "user_equipment": user_equipment,
                "equipment": equipment
              }
   #print equiplistform
    return render(request,'workgen/equipchange.html',context)

def process_change_equipment(request):
    userinfo=Users.objects.get(email=request.session['email'])
    user_equipment= userinfo.equipment.all()
    equiplist = request.POST.getlist('equipment')
    print equiplist
    #delete currently available equipment
    #user_equipment.delete()
    #add newly selected currently available equipment
    for i in range(len(equiplist)):
     print("EQUIP",equiplist[i])
     this_equipment = Equipment.objects.get(id=equiplist[i])
     userinfo.equipment.add(this_equipment)
    return redirect('/')
def validate(rp):
  #remember to add validation to login, i have to ask why validate login information? the more the precise the 
  #information returned, the more the hackers like it.
  errors = []
  firstname = rp['firstname']
  lastname = rp['lastname']
  email = rp['email']
  password = rp['password']
  cpassword = rp['cpassword']

  if not NAME_REGEX.match(firstname):
       errors.append("Firstname must only contain letters!")
  if not NAME_REGEX.match(lastname):
       errors.append("Lastname must only contain letters!")   
  if not MAIL_REGEX.match(email):
       errors.append("Email must be a valid email!")
  if len(password) < 8:
       errors.append("Password must be at least 8 characters!")    
  elif len(cpassword) < 1:
       errors.append("Please Enter Confirmation Password!")    
  elif(password != cpassword):
       errors.append("Password and confirm password must match!")
  regemail = Users.objects.filter(email=email)
  if regemail:
       errors.append("Entered Email already has an account!")
  return errors
#logout of session
def logout(request):
 del request.session["email"]
 return redirect('/')

