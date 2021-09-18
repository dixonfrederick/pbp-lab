# Generated by Django 3.2.7 on 2021-09-18 13:52

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Friend',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=30)),
                ('npm', models.PositiveIntegerField()),
                ('DOB', models.DateField(max_length=8)),
            ],
        ),
    ]
