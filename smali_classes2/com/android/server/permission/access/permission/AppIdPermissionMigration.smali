.class public final Lcom/android/server/permission/access/permission/AppIdPermissionMigration;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static migratePermissions(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/util/Map;)V
    .locals 4

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;

    new-instance v1, Lcom/android/server/permission/access/permission/Permission;

    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;->mType:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0, v3}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII)V

    iget-object v0, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
