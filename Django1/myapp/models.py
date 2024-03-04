from django.db import models

# Create your models here.

class Contact(models.Model):
	name=models.CharField(max_length=100,null=True)
	email=models.EmailField(null=True)
	mobile=models.PositiveIntegerField(null=True)
	remarks=models.TextField(null=True)
	

	def __str__(self):
	    return self.name


	
