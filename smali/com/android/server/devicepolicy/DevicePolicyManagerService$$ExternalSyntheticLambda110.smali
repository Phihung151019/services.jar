.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/ComponentName;

.field public final synthetic f$3:Ljava/lang/Boolean;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILandroid/content/ComponentName;Ljava/lang/Boolean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$1:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$2:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$3:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$5:I

    iput-object p7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$6:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$7:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 15

    const/4 v0, 0x1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$1:I

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$2:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$3:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$4:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$5:I

    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$6:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$7:Ljava/lang/String;

    sget-object v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    if-nez v3, :cond_0

    move v10, v0

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getHeadlessDeviceOwnerModeForDeviceOwner()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getMainUserId()I

    move-result v10

    if-ne v3, v10, :cond_1

    move v10, v0

    goto :goto_1

    :cond_1
    move v10, v9

    :cond_2
    :goto_1
    if-eqz v10, :cond_3

    const-string/jumbo v10, "no_factory_reset"

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string/jumbo v10, "no_remove_managed_profile"

    goto :goto_2

    :cond_4
    const-string/jumbo v10, "no_remove_user"

    :goto_2
    invoke-virtual {v2, v4, v3, v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isAdminAffectedByRestriction(Landroid/content/ComponentName;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    if-nez v3, :cond_7

    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mKnoxPolicyHelper:Lcom/android/server/devicepolicy/KnoxPolicyHelper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "KnoxPolicyHelper"

    const-string/jumbo v11, "isFactoryResetAllowed = "

    :try_start_0
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v13

    if-eqz v13, :cond_5

    new-instance v13, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-direct {v13, v14, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    iget-object v4, v4, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    invoke-interface {v4, v13}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    const-string v11, "Failed talking with Restriction Policy"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    move v4, v0

    :goto_3
    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object p0, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mAuditLogHelper:Lcom/android/server/devicepolicy/AuditLogHelper;

    new-array v0, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/16 p0, 0x2b

    :try_start_1
    invoke-static {p0, v0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEvent(I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Cannot wipe data. Factory reset is not allowed from Restriction Policy."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_7
    :goto_4
    if-nez v3, :cond_8

    move v4, v0

    goto :goto_5

    :cond_8
    move v4, v9

    :goto_5
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getMainUserId()I

    move-result v10

    if-ne v3, v10, :cond_9

    move v10, v0

    goto :goto_6

    :cond_9
    move v10, v9

    :goto_6
    if-eqz v5, :cond_d

    iget-object v11, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v13, 0xe6f95f9

    invoke-static {v3, v6, v13, v14}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->isChangeEnabled(ILjava/lang/String;J)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_b

    move v4, v0

    goto :goto_9

    :cond_b
    xor-int/2addr v4, v0

    const-string/jumbo v5, "User %s is a system user and cannot be removed"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda197;

    invoke-direct {v5, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda197;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v5, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v0

    goto :goto_7

    :cond_c
    move v4, v9

    :goto_7
    xor-int/2addr v4, v0

    const-string/jumbo v5, "Removing user %s would leave the device without any active users. Consider factory resetting the device instead."

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    move v4, v9

    goto :goto_9

    :cond_d
    :goto_8
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getHeadlessDeviceOwnerModeForDeviceOwner()I

    move-result v5

    if-ne v5, v12, :cond_e

    move v4, v10

    :cond_e
    :goto_9
    const v5, 0x33467

    if-eqz v4, :cond_15

    and-int/lit8 p0, v7, 0x1

    if-eqz p0, :cond_f

    move p0, v0

    goto :goto_a

    :cond_f
    move p0, v9

    :goto_a
    and-int/lit8 v3, v7, 0x4

    if-eqz v3, :cond_10

    move v3, v0

    goto :goto_b

    :cond_10
    move v3, v9

    :goto_b
    and-int/lit8 v4, v7, 0x2

    if-eqz v4, :cond_11

    move v4, v0

    goto :goto_c

    :cond_11
    move v4, v9

    :goto_c
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->wtfIfInLock()V

    :try_start_2
    iget-object v6, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v6, v8, v3, p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->recoverySystemRebootWipeUserData(Ljava/lang/String;ZZZ)Z

    move-result v6

    if-nez v6, :cond_1a

    const-string v6, "DevicePolicyManager"

    const-string/jumbo v7, "Persisting factory reset request as it could be delayed by %s"

    iget-object v10, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v6, v7, v10}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v2, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    move-result-object v7

    iput-object v8, v7, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    iput v0, v7, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    if-eqz p0, :cond_12

    const/4 p0, 0x3

    iput p0, v7, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    :cond_12
    if-eqz v3, :cond_13

    iget p0, v7, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    or-int/2addr p0, v1

    iput p0, v7, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    :cond_13
    if-eqz v4, :cond_14

    iget p0, v7, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    or-int/lit8 p0, p0, 0x8

    iput p0, v7, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    :cond_14
    invoke-virtual {v2, v9, v9, v9, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(IZZZ)V

    monitor-exit v6

    goto/16 :goto_12

    :catchall_1
    move-exception p0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    goto :goto_d

    :catch_1
    move-exception p0

    :try_start_5
    const-string v0, "DevicePolicyManager"

    const-string v1, "Failed requesting data wipe"

    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    new-array p0, v9, [Ljava/lang/Object;

    invoke-static {v5, p0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_12

    :goto_d
    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v5, v0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    throw p0

    :cond_15
    and-int/lit8 v1, v7, 0x8

    if-eqz v1, :cond_16

    goto :goto_e

    :cond_16
    move v0, v9

    :goto_e
    const-string v1, "DevicePolicyManager"

    const-string v4, "Couldn\'t remove user "

    :try_start_6
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getCurrentForegroundUserId()I

    move-result v6

    if-ne v6, v3, :cond_17

    iget-object v6, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6, v9}, Landroid/app/IActivityManager;->switchUser(I)Z

    goto :goto_f

    :catchall_3
    move-exception p0

    move v6, v9

    goto :goto_13

    :catch_2
    move-exception p0

    move v6, v9

    goto :goto_11

    :cond_17
    :goto_f
    iget-object v6, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v6, v3}, Lcom/android/server/pm/UserManagerInternal;->removeUserEvenWhenDisallowed(I)Z

    move-result v6
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v6, :cond_18

    :try_start_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :catchall_4
    move-exception p0

    goto :goto_13

    :catch_3
    move-exception p0

    goto :goto_11

    :cond_18
    invoke-virtual {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    move-result v4

    if-eqz v4, :cond_19

    if-nez v0, :cond_19

    invoke-virtual {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParentId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendWipeProfileNotification(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_19
    :goto_10
    if-nez v6, :cond_1a

    new-array p0, v9, [Ljava/lang/Object;

    invoke-static {v5, p0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_12

    :goto_11
    :try_start_8
    const-string v0, "Error forcing wipe user"

    invoke-static {v1, v0, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-nez v6, :cond_1a

    new-array p0, v9, [Ljava/lang/Object;

    invoke-static {v5, p0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_1a
    :goto_12
    return-void

    :goto_13
    if-nez v6, :cond_1b

    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v5, v0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_1b
    throw p0

    :cond_1c
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Cannot wipe data. "

    const-string v1, " restriction is set for user "

    invoke-static {v3, v0, v10, v1}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
