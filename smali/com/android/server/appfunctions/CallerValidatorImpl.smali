.class public final Lcom/android/server/appfunctions/CallerValidatorImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/appfunctions/CallerValidator;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final handleIncomingUser(IILandroid/os/UserHandle;Ljava/lang/String;)Landroid/os/UserHandle;
    .locals 2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-virtual {p0, p4, p1, p3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Package: "

    const-string p2, " haven\'t installed for user "

    invoke-static {p1, p4, p2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "Permission denied while calling from uid "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; Requires permission: android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Call does not support special user "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final validateCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    if-ne p0, v0, :cond_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :cond_0
    :try_start_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Specified calling package ["

    const-string/jumbo v4, "] does not match the calling uid "

    invoke-static {v0, v3, p1, v4}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final verifyCallerCanExecuteAppFunction(IILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;)Lcom/android/internal/infra/AndroidFuture;
    .locals 7

    iget-object p0, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.permission.EXECUTE_APP_FUNCTIONS"

    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p0, :cond_5

    iget-object p0, p6, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p6, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->appliedAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    iget-object v0, v0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->agentPackageItemList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$PackageItem;

    iget-object v4, v3, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$PackageItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p6, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p3, p1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {v4, p4}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->getCertificate(Landroid/content/pm/PackageManager;Ljava/lang/String;)[B

    move-result-object v4

    if-nez v4, :cond_1

    move v3, p1

    goto :goto_1

    :cond_1
    new-instance v5, Landroid/app/appsearch/PackageIdentifier;

    iget-object v6, v3, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$PackageItem;->packageName:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$PackageItem;->sha256CertificateBytes:[B

    invoke-direct {v5, v6, v3}, Landroid/app/appsearch/PackageIdentifier;-><init>(Ljava/lang/String;[B)V

    new-instance v3, Landroid/app/appsearch/PackageIdentifier;

    invoke-direct {v3, p4, v4}, Landroid/app/appsearch/PackageIdentifier;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v5, v3}, Landroid/app/appsearch/PackageIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_2

    const-string p3, "AppFunctionAgentPolicyManager"

    const-string/jumbo p6, "isAgentPackage - true"

    invoke-static {p3, p6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    move p0, p2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    const-string v3, "AppFunctionAgentPolicyManager"

    const-string/jumbo v4, "isAgentPackage - sha256 validation failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p3, "AppFunctionAgentPolicyManager"

    const-string/jumbo p6, "isAgentPackage - false"

    invoke-static {p3, p6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    move p0, p1

    :goto_2
    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    move p0, p1

    goto :goto_5

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_4
    move p0, p2

    :goto_5
    if-eqz p0, :cond_6

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public final verifyEnterprisePolicyIsAllowed(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getAppFunctionsPolicy()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    const-class v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getAppFunctionsPolicy()I

    move-result p0

    invoke-virtual {p1, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x2

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    if-eq p0, p2, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, p1

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    if-eqz p0, :cond_4

    if-eqz v0, :cond_2

    if-eq v0, p2, :cond_3

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v2

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public final verifyTargetUserHandle(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/server/appfunctions/CallerValidatorImpl;->handleIncomingUser(IILandroid/os/UserHandle;Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
