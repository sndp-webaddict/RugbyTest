from .base import *

DEBUG = False

ALLOWED_HOSTS = ['example.com']

INSTALLED_APPS += [
    'rugby'
]

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'LIVE DB',
        'USER': 'USER',
        'PASSWORD': 'LIVE PASSWORD',
        'HOST': 'IP or HOST'
    }
}