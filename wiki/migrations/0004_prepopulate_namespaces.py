from django.db import migrations


def forwards_func(apps, schema_editor):
    # We get the model from the versioned app registry;
    # if we directly import it, it'll be the wrong version
    Namespace = apps.get_model('wiki', 'Namespace')
    db_alias = schema_editor.connection.alias
    Namespace.objects.using(db_alias).bulk_create([
        Namespace(name='users'),
    ])


def reverse_func(apps, schema_editor):
    # forwards_func() creates a Namespace instance,
    # so reverse_func() should delete it.
    Namespace = apps.get_model('wiki', 'Namespace')
    db_alias = schema_editor.connection.alias
    Namespace.objects.using(db_alias).filter(name='users').delete()


class Migration(migrations.Migration):

    dependencies = [
        ('wiki', '0003_auto_20170415_0137'),
    ]

    operations = [
        migrations.RunPython(forwards_func, reverse_func),
    ]
