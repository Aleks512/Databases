from django.contrib.auth.models import Group
from accounts.models import CustomUser

# Données des utilisateurs à créer
users_data = [
    {'email': 'manager1@example.com', 'password': 'password', 'first_name': 'Manager', 'last_name': 'One', 'group': 'Managers'},
    {'email': 'manager2@example.com', 'password': 'password', 'first_name': 'Manager', 'last_name': 'Two', 'group': 'Managers'},
    {'email': 'developer1@example.com', 'password': 'password', 'first_name': 'Developer', 'last_name': 'One', 'group': 'Developers'},
    {'email': 'developer2@example.com', 'password': 'password', 'first_name': 'Developer', 'last_name': 'Two', 'group': 'Developers'},
]

# Boucler sur les données des utilisateurs pour les créer et les ajouter aux groupes
for user_data in users_data:
    # Crée l'utilisateur s'il n'existe pas déjà
    user, created = CustomUser.objects.get_or_create(email=user_data['email'], defaults={
        'first_name': user_data['first_name'],
        'last_name': user_data['last_name'],
    })
    # Si l'utilisateur a été créé, définir son mot de passe
    if created:
        user.set_password(user_data['password'])
        user.save()
    
    # Obtenir ou créez le groupe spécifié
    group, _ = Group.objects.get_or_create(name=user_data['group'])
    
    # Ajouter l'utilisateur au groupe
    user.groups.add(group)
    user.save()

print("Users created and added to groups successfully.")
