from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.
"""Generic User"""
"""Staff == can log in into admin site.
SuperUser == admin site + all CRUD privileges there"""
class Player(AbstractUser):
    is_superuser = False
    is_staff = False