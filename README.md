[![Travis](https://img.shields.io/travis/XenGi/wiking/master.svg?style=flat-square)](https://travis-ci.org/XenGi/wiking)
[![Codecov](https://img.shields.io/codecov/c/github/XenGi/wiking.svg?style=flat-square)](https://codecov.io/gh/XenGi/wiking)
[![Github All
Releases](https://img.shields.io/github/downloads/XenGi/wiking/total.svg?style=flat-square)](https://github.com/XenGi/yldt/releases)
[![license](https://img.shields.io/github/license/XenGi/wiking.svg?style=flat-square)](https://mitlicense.org/)

WikiNG
======

Next generation wiki software.

Getting started
---------------

  - Create virtualenv and install dependencies

```
pipenv install
```

  - Create local settings and set `SECRET_KEY`

```
cp wiking/local_settings{.sample,}.py
$EDITOR wiking/local_settings.py
```

  - Apply migrations

```
./manage.py migrate
```

  - Create superuser

```
./manage.py createsuperuser
```

  - Navigate to website (http://localhost:8000/)

Running the tests
-----------------

  - Install dependencies

```
pipenv install -d
```

  - Run pytest

```
pytest
```

