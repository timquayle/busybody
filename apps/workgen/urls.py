from django.conf.urls import url
from . import views           
urlpatterns = [
    url(r'^$', views.index),
    url(r'^admin/adminpage$', views.admin_page),
    url(r'^admin/addmovement$', views.admin_addmove),
    url(r'^admin/process_postmove$', views.admin_processpostmove),
    url(r'^admin/process_storemove$', views.admin_processstoremove),
    url(r'^admin/addmovementmuscle$', views.admin_addmovementmuscle),
    url(r'^admin/process_postmovementmuscle$', views.admin_processpostmovementmuscle),
    url(r'^admin/process_postmovementmuscle$', views.admin_processstoremovementmuscle),
    url(r'^admin/modmovement$', views.admin_modmovement),
    url(r'^admin/process_postmovemod$', views.admin_processpostmovemod),
    url(r'^process_registration$', views.process_registration),
    url(r'^logincheck$', views.loginchk),
    url(r'^change_equip$', views.change_equip),
    url(r'^process_wodate$',views.processwodate),
    url(r'^process_equipment$',views.process_equipment),
    url(r'^process_change_equipment$',views.process_change_equipment),
    #url(r'^getmovedetails/?foobar$', views.getmovedetails),
    #url(r'^getmovedetails/(?P<move>[\w\-]+)/$',views.getmovedetails),
    url(r'^getmovedetails/(?P<move>\d+)$', views.getmovedetails),
    #url(r'^travels/process_trip$', views.processtrip),
    #url(r'^travels/destination/(?P<number>\d+)$', views.destinationpage),
    #url(r'^travels/join/(?P<number>\d+)$', views.processjoin),
    url(r'^logout$', views.logout),
    
  ]