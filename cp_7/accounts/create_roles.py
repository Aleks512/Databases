from django.contrib.auth.models import Group, Permission
from django.contrib.contenttypes.models import ContentType
from accounts.models import Project, Task

# Supprimer les groupes existants
Group.objects.filter(name='Managers').delete()
Group.objects.filter(name='Developers').delete()

# Création des groupes
managers, created = Group.objects.get_or_create(name='Managers')
developers, created = Group.objects.get_or_create(name='Developers')

# Permissions pour les projets et les tâches
content_type_project = ContentType.objects.get_for_model(Project)
content_type_task = ContentType.objects.get_for_model(Task)
permissions_project = Permission.objects.filter(content_type=content_type_project)
permissions_task = Permission.objects.filter(content_type=content_type_task)

# Fonction pour ajouter des permissions à un groupe en évitant les doublons
def add_permission_to_group(group, permission_codename):
    try:
        permission = Permission.objects.get(codename=permission_codename)
        if not group.permissions.filter(id=permission.id).exists():
            group.permissions.add(permission)
    except Permission.DoesNotExist:
        print(f"Permission {permission_codename} does not exist.")

# Attribuer toutes les permissions de Project aux managers
for permission in permissions_project:
    add_permission_to_group(managers, permission.codename)

# Attribuer toutes les permissions de Task aux managers
for permission in permissions_task:
    add_permission_to_group(managers, permission.codename)

# Attribuer des permissions spécifiques aux développeurs
add_permission_to_group(developers, 'add_project')
add_permission_to_group(developers, 'change_project')
add_permission_to_group(developers, 'view_project')
add_permission_to_group(developers, 'add_task')
add_permission_to_group(developers, 'change_task')
add_permission_to_group(developers, 'view_task')

print("Groupes et permissions créés avec succès.")
