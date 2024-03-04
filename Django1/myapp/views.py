from django.shortcuts import render
from . models import Contact

# Create your views here.
def index(request):
	return render(request,'index.html')

def contact(request):
	return render(request,'contact.html')


def signup(request):
	if request.method=="POST":
		Contact.objects.create(
				name = request.POST['name'],
				email = request.POST['email'],
				mobail = request.POST['mobail'],
				remarks = request.POST['remarks']
			)
		#msg="Contact Saved Successfully"    
		return render(request,'contact.html')
	else:
		return render(request,'contact.html')

#def signup(request):
    #return rander(request,'signup.html')

def login(request):
    return render(request,'login.html')    


#def login(request):
	# e = User.objects.get(email = email)
	# if e.password==request.POST['password']:
	# 	return render(request,'index.html')
	# else:
	# 	msg = "Your Password is Wrong"
	# 	return render(request,'signup.html')
	#return render(request,"login.html")

def home(request):
	return render(request,"home.html")

def course(request):
    return render(request,"course.html")	

