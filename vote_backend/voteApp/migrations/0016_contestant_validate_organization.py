# Generated by Django 4.0.6 on 2022-12-29 15:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('voteApp', '0015_contestant_supporters_voters_validate_organization'),
    ]

    operations = [
        migrations.AddField(
            model_name='contestant',
            name='Validate_organization',
            field=models.CharField(default='Retype organization', max_length=150),
        ),
    ]
