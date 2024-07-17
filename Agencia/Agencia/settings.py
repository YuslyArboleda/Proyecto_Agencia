from pathlib import Path

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/5.0/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
<<<<<<< HEAD
SECRET_KEY = "django-insecure-n@$kw0bpudl-6e&*g#1w0=gs6w2@wa%3o(@*(y$35#8abx$4bz"
=======


SECRET_KEY = 'django-insecure-q3mnu3mv)qo_cw+az)7$$snc3b(bbu2r(cmp(g%qs4$mg@n(e#'
>>>>>>> bd3423039ac09d615dca2c35d7cc4de7e2f6b86e

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = []


# Application definition

INSTALLED_APPS = [
<<<<<<< HEAD
    "django.contrib.admin",
    "django.contrib.auth",
    "django.contrib.contenttypes",
    "django.contrib.sessions",
    "django.contrib.messages",
    "django.contrib.staticfiles",
    "viajes",
]

MIDDLEWARE = [
    "django.middleware.security.SecurityMiddleware",
    "django.contrib.sessions.middleware.SessionMiddleware",
    "django.middleware.common.CommonMiddleware",
    "django.middleware.csrf.CsrfViewMiddleware",
    "django.contrib.auth.middleware.AuthenticationMiddleware",
    "django.contrib.messages.middleware.MessageMiddleware",
    "django.middleware.clickjacking.XFrameOptionsMiddleware",
]

ROOT_URLCONF = "Agencia.urls"

TEMPLATES = [
    {
        "BACKEND": "django.template.backends.django.DjangoTemplates",
        "DIRS": [],
        "APP_DIRS": True,
        "OPTIONS": {
            "context_processors": [
                "django.template.context_processors.debug",
                "django.template.context_processors.request",
                "django.contrib.auth.context_processors.auth",
                "django.contrib.messages.context_processors.messages",
=======
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'viajes',
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'Agencia.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
>>>>>>> bd3423039ac09d615dca2c35d7cc4de7e2f6b86e
            ],
        },
    },
]

<<<<<<< HEAD
WSGI_APPLICATION = "Agencia.wsgi.application"
=======
WSGI_APPLICATION = 'Agencia.wsgi.application'
>>>>>>> bd3423039ac09d615dca2c35d7cc4de7e2f6b86e


# Database
# https://docs.djangoproject.com/en/5.0/ref/settings/#databases

DATABASES = {
<<<<<<< HEAD
    "default": {
        "ENGINE": "django.db.backends.mysql",
        "NAME": "proyecto_agencia",
        "USER": "root",
        "PASSWORD": "admin",
        "HOST": "localhost",
        "PORT": "3306",
=======
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'proyecto_agencia',
        'USER': 'root',
        'PASSWORD': '1234',
        'HOST': 'localhost',
        'PORT': '3306',
>>>>>>> bd3423039ac09d615dca2c35d7cc4de7e2f6b86e
    }
}


# Password validation
# https://docs.djangoproject.com/en/5.0/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
<<<<<<< HEAD
        "NAME": "django.contrib.auth.password_validation.UserAttributeSimilarityValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.MinimumLengthValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.CommonPasswordValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.NumericPasswordValidator",
=======
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
>>>>>>> bd3423039ac09d615dca2c35d7cc4de7e2f6b86e
    },
]


# Internationalization
# https://docs.djangoproject.com/en/5.0/topics/i18n/

<<<<<<< HEAD
LANGUAGE_CODE = "en-us"

TIME_ZONE = "UTC"
=======
LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'
>>>>>>> bd3423039ac09d615dca2c35d7cc4de7e2f6b86e

USE_I18N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/5.0/howto/static-files/

<<<<<<< HEAD
STATIC_URL = "static/"
=======
STATIC_URL = 'static/'
>>>>>>> bd3423039ac09d615dca2c35d7cc4de7e2f6b86e

# Default primary key field type
# https://docs.djangoproject.com/en/5.0/ref/settings/#default-auto-field

<<<<<<< HEAD
DEFAULT_AUTO_FIELD = "django.db.models.BigAutoField"
=======
DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'
>>>>>>> bd3423039ac09d615dca2c35d7cc4de7e2f6b86e
