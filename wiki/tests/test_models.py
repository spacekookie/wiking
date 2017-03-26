import pytest
from model_mommy import mommy
from django.contrib.auth.models import User

from wiki.models import get_sentinel_user, Page

pytestmark = pytest.mark.django_db


class TestUtilities:
    def test_get_sentinal_user(self):
        assert User.objects.count() == 0

        obj = get_sentinel_user()

        assert User.objects.count() == 1, 'Should create User instance'
        assert obj.pk == 1,  'Should have the first id'
        assert obj.username == 'deleted', 'Should be named deleted'
        assert obj.first_name == 'deleted', 'Should be named deleted'
        assert obj.last_name == 'user', 'Should be named user'


class TestPage:
    TEST_NAME = 'foobar'
    TEST_USERNAME = 'Bernd'

    def test_model(self):
        obj = mommy.make(Page, name=self.TEST_NAME)

        assert obj.pk == 1, 'Should create page instance'
        assert str(obj) == self.TEST_NAME

    def test_user_delete(self):
        user = mommy.make(User, username=self.TEST_USERNAME)
        obj = mommy.make(Page, author=user)

        user.delete()

        assert obj.author.username == 'deleted'
