BEGIN;
--
-- Create model CustomUser
--
CREATE TABLE "accounts_customuser" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "email" varchar(254) NOT NULL UNIQUE, "first_name" varchar(30) NOT NULL, "last_name" varchar(30) NOT NULL, "is_active" bool NOT NULL, "is_staff" bool NOT NULL, "is_superuser" bool NOT NULL);
CREATE TABLE "accounts_customuser_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "customuser_id" bigint NOT NULL REFERENCES "accounts_customuser" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE "accounts_customuser_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "customuser_id" bigint NOT NULL REFERENCES "accounts_customuser" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
--
-- Create model Project
--
CREATE TABLE "accounts_project" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(100) NOT NULL, "description" text NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "owner_id" bigint NOT NULL REFERENCES "accounts_customuser" ("id") DEFERRABLE INITIALLY DEFERRED);
--
-- Create model Task
--
CREATE TABLE "accounts_task" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(100) NOT NULL, "description" text NOT NULL, "completed" bool NOT NULL, "assigned_to_id" bigint NULL REFERENCES "accounts_customuser" ("id") DEFERRABLE INITIALLY DEFERRED, "project_id" bigint NOT NULL REFERENCES "accounts_project" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE UNIQUE INDEX "accounts_customuser_groups_customuser_id_group_id_c074bdcb_uniq" ON "accounts_customuser_groups" ("customuser_id", "group_id");
CREATE INDEX "accounts_customuser_groups_customuser_id_bc55088e" ON "accounts_customuser_groups" ("customuser_id");
CREATE INDEX "accounts_customuser_groups_group_id_86ba5f9e" ON "accounts_customuser_groups" ("group_id");
CREATE UNIQUE INDEX "accounts_customuser_user_permissions_customuser_id_permission_id_9632a709_uniq" ON "accounts_customuser_user_permissions" ("customuser_id", "permission_id");
CREATE INDEX "accounts_customuser_user_permissions_customuser_id_0deaefae" ON "accounts_customuser_user_permissions" ("customuser_id");
CREATE INDEX "accounts_customuser_user_permissions_permission_id_aea3d0e5" ON "accounts_customuser_user_permissions" ("permission_id");
CREATE INDEX "accounts_project_owner_id_9e658e68" ON "accounts_project" ("owner_id");
CREATE INDEX "accounts_task_assigned_to_id_02f93926" ON "accounts_task" ("assigned_to_id");
CREATE INDEX "accounts_task_project_id_7c96104d" ON "accounts_task" ("project_id");
COMMIT;
