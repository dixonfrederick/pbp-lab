# Generated by Django 3.2.7 on 2021-09-24 13:03

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Note',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('to', models.TextField()),
                ('from_var', models.TextField()),
                ('title', models.TextField()),
                ('message', models.TextField()),
            ],
        ),
    ]