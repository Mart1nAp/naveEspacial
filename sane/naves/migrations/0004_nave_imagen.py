# Generated by Django 4.1.6 on 2023-02-06 03:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('naves', '0003_rename_naves_nave'),
    ]

    operations = [
        migrations.AddField(
            model_name='nave',
            name='imagen',
            field=models.ImageField(blank=True, null=True, upload_to='webapp'),
        ),
    ]
