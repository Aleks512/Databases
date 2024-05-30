from django.contrib import admin
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin
from django.contrib.auth.models import Group
from .models import CustomUser, Project, Task

class UserAdmin(BaseUserAdmin):
    # The forms to add and change user instances
    fieldsets = (
        (None, {'fields': ('email', 'password')}),
        ('Personal info', {'fields': ('first_name', 'last_name')}),
        ('Permissions', {'fields': ('is_active', 'is_staff', 'is_superuser', 'groups', 'user_permissions')}),
        ('Important dates', {'fields': ('last_login',)}),
    )
    add_fieldsets = (
        (None, {
            'classes': ('wide',),
            'fields': ('email', 'password1', 'password2'),
        }),
    )
    list_display = ('email', 'first_name', 'last_name', 'is_staff')
    search_fields = ('email', 'first_name', 'last_name')
    ordering = ('email',)

# Enregistre le modèle CustomUser avec la configuration UserAdmin que nous avons définie.
admin.site.register(CustomUser, UserAdmin)
class ProjectAdmin(admin.ModelAdmin):
    # Champs à afficher dans la liste des projets
    list_display = ('name', 'owner', 'created_at', 'updated_at')

    # Filtres pour la recherche
    list_filter = ('created_at', 'updated_at', 'owner')

    # Champs pour la barre de recherche
    search_fields = ('name', 'description', 'owner__email')

    # Champs en lecture seule
    readonly_fields = ('created_at', 'updated_at')

    # Sections pour organiser le formulaire de détail
    fieldsets = (
        (None, {
            'fields': ('name', 'description', 'owner')
        }),
        ('Dates', {
            'fields': ('created_at', 'updated_at'),
            'classes': ('collapse',),
        }),
    )
# Enregistre les modèles Project et Task
admin.site.register(Project, ProjectAdmin)
admin.site.register(Task)
#
admin.site.unregister(Group)
admin.site.register(Group, admin.ModelAdmin)
