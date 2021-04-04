from django.test import TestCase
from django.contrib.auth import get_user_model

class ModelTests(TestCase):
    def test_user_email_success(self):
        """ test creating using new email successfull"""
        email = 'abc@yahoo.com'
        password = 'abc123'
        user = get_user_model().objects.create_user(
            email=email,
            password=password

        )

        self.assertEqual(user.email,email)
        self.assertTrue(user.checkpassword(password))

