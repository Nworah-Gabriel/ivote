# Generated by Django 4.0.6 on 2022-12-27 17:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('voteApp', '0003_alter_contestant_vote_count'),
    ]

    operations = [
        migrations.AlterField(
            model_name='voters',
            name='email',
            field=models.EmailField(max_length=254, unique=True),
        ),
    ]
