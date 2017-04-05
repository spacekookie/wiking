import pytest
from model_mommy import mommy
from django.contrib.auth.models import User

from wiki.models import Page, Namespace

pytestmark = pytest.mark.django_db


class TestPage:
    TEST_NAME = 'foobar'
    TEST_USERNAME = 'Bernd'

    def test_model(self):
        obj = mommy.make(Page, name=self.TEST_NAME)

        assert obj.pk == 1, 'Should create page instance'
        assert str(obj) == self.TEST_NAME


class TestNamespace:
    TEST_NAME = 'foobar'

    def test_model(self):
        obj = mommy.make(Namespace, name=self.TEST_NAME)

        assert obj.pk == 1, 'Should create namespace instance'
        assert str(obj) == self.TEST_NAME

    def test_nesting(self):
        obj = mommy.make(Namespace)
        child = mommy.make(Namespace, parent=obj, name=self.TEST_NAME)

        assert obj.pk == 1
        assert child.pk == 2

        assert len(obj.children.all()) == 1
        assert obj.children.first().name == self.TEST_NAME

        assert child.parent.name == obj.name
