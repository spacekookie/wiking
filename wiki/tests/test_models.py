import pytest
from model_mommy import mommy

from wiki.models import Page

pytestmark = pytest.mark.django_db


class TestPage:
    TEST_NAME = 'foobar'

    def test_model(self):
        obj = mommy.make(Page, name=self.TEST_NAME)

        assert obj.pk == 1, 'Should create page instance'
        assert str(obj) == self.TEST_NAME
