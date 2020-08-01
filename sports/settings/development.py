from .base import *

DEBUG = True

ALLOWED_HOSTS = ['*']

INSTALLED_APPS += [
    'rugby'
]

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'sports',
        'USER': 'root',
        'PASSWORD': 'simplify',
        'HOST': 'localhost'
    }
}