# Generated by Django 4.0.6 on 2022-12-27 17:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('voteApp', '0004_alter_voters_email'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='voters',
            name='FirstName',
        ),
        migrations.RemoveField(
            model_name='voters',
            name='LastName',
        ),
        migrations.AddField(
            model_name='voters',
            name='FullName',
            field=models.CharField(default='User', max_length=100, unique=True),
        ),
        migrations.AddField(
            model_name='voters',
            name='identity',
            field=models.BigIntegerField(default=0, unique=True),
        ),
    ]
