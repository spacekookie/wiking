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

    def test_delete_author(self):
        user = mommy.make(User)
        obj = mommy.make(Page, author=user)

        assert obj.author.pk == user.pk, 'Should have the author attached'
        user.delete()
        # the pk is none but the author object is still alive
        assert obj.author.pk == None, 'Author should not be there anymore'

        p = Page.objects.get(pk=obj.pk)
        assert p.author == None, 'Auther should not be there anymore'


class TestNamespace:
    TEST_NAME = 'foobar'

    def test_model(self):
        obj = mommy.make(Namespace, name=self.TEST_NAME)

        assert obj.pk == 1, 'Should create namespace instance'
        assert str(obj) == self.TEST_NAME, 'Name should be set to %s' % self.TEST_NAME

    def test_nesting(self):
        obj = mommy.make(Namespace)
        child = mommy.make(Namespace, parent=obj, name=self.TEST_NAME)

        assert obj.pk == 1, 'Should create a page'
        assert child.pk == 2, 'Should create another page'

        assert len(obj.children.all()) == 1, 'Page should have 1 child'
        assert obj.children.first().name == self.TEST_NAME, 'Child page name should be %s' % self.TEST_NAME

        assert child.parent.name == obj.name, 'Parent page should be correct'
