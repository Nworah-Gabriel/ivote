# Generated by Django 4.0.6 on 2022-12-31 00:22

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('voteApp', '0019_alter_voters_organization'),
    ]

    operations = [
        migrations.AlterField(
            model_name='voters',
            name='organization',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='voteApp.organizations'),
        ),
    ]
