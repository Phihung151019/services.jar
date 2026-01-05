.class public abstract Lcom/android/server/permission/access/SchemePolicy;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public abstract getObjectScheme()Ljava/lang/String;
.end method

.method public abstract getSubjectScheme()Ljava/lang/String;
.end method

.method public migrateSystemState(Lcom/android/server/permission/access/MutableAccessState;)V
    .locals 0

    return-void
.end method

.method public migrateUserState(Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 0

    return-void
.end method

.method public onAppIdRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 0

    return-void
.end method

.method public onPackageAdded(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V
    .locals 0

    return-void
.end method

.method public onPackageInstalled(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .locals 0

    return-void
.end method

.method public onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public abstract onStateMutated()V
.end method

.method public onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/List;Z)V
    .locals 0

    return-void
.end method

.method public onSystemReady()V
    .locals 0

    return-void
.end method

.method public onUserAdded(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 0

    return-void
.end method

.method public parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V
    .locals 0

    return-void
.end method

.method public abstract parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
.end method

.method public serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V
    .locals 0

    return-void
.end method

.method public abstract serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
.end method

.method public upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V
    .locals 0

    return-void
.end method
