# Generated by Django 4.0.6 on 2022-12-28 05:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('voteApp', '0009_alter_contestant_fullname'),
    ]

    operations = [
        migrations.AlterField(
            model_name='voters',
            name='FullName',
            field=models.CharField(default='User', max_length=150),
        ),
    ]
