.class public final Lcom/android/server/enterprise/common/EnterprisePermissionChecker;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static sInstance:Lcom/android/server/enterprise/common/EnterprisePermissionChecker;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;


# virtual methods
.method public final enforceAuthorization()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    const-class v1, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    iput-object v0, p0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    sget-boolean v2, Lcom/android/server/ServiceKeeper;->isActive:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()V

    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->mContext:Landroid/content/Context;

    const-string v2, "AuditLogService"

    const-string v3, "AuditLogger"

    invoke-static {v1, v0, p0, v2, v3}, Lcom/android/server/ServiceKeeper;->isAuthorized(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "Method AuditLogger from service AuditLogService is not authorized to be called!!!"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method
