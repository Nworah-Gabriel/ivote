# Generated by Django 4.0.6 on 2022-12-26 04:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('voteApp', '0002_alter_voters_id'),
    ]

    operations = [
        migrations.AlterField(
            model_name='contestant',
            name='vote_count',
            field=models.IntegerField(default=0),
        ),
    ]
