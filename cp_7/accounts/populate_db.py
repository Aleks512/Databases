import logging
from django.conf import settings
from django.db import connection
from django.contrib.auth import get_user_model
from accounts.models import Project, Task

# Configure logging to output SQL queries
settings.DEBUG = True
logger = logging.getLogger('django.db.backends')
logger.setLevel(logging.DEBUG)
logger.addHandler(logging.StreamHandler())

User = get_user_model()

# Créer des utilisateurs fictifs
user1 = User.objects.create_user(email='user1@example.com', password='password123')
user2 = User.objects.create_user(email='user2@example.com', password='password123')

# Créer des projets fictifs
project1 = Project.objects.create(name='Project 1', description='Description for project 1', owner=user1)
project2 = Project.objects.create(name='Project 2', description='Description for project 2', owner=user2)

# Créer des tâches fictives
task1 = Task.objects.create(name='Task 1', description='Description for task 1', project=project1)
task2 = Task.objects.create(name='Task 2', description='Description for task 2', project=project1)
task3 = Task.objects.create(name='Task 3', description='Description for task 3', project=project2)

print("Données fictives créées avec succès.")

# Display executed SQL queries
for query in connection.queries:
    print(query['sql'])
