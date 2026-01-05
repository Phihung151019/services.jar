.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/app/admin/ManagedProfileProvisioningParams;Lcom/android/server/devicepolicy/CallerIdentity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$3:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/UserHandle;Landroid/content/ComponentName;Lcom/android/server/devicepolicy/CallerIdentity;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$3:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->$r8$classId:I

    packed-switch v8, :pswitch_data_0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceManagementResourcesProvider:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    iget-object v4, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->getDrawableForSourceLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v0

    if-eqz v0, :cond_0

    monitor-exit v4

    move-object v7, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v4

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/admin/ParcelableResource;

    monitor-exit v4

    :goto_0
    return-object v7

    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$1:Ljava/lang/Object;

    check-cast v2, Landroid/os/UserHandle;

    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$2:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$3:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/devicepolicy/CallerIdentity;

    sget-object v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "no_remove_managed_profile"

    goto :goto_2

    :cond_2
    const-string/jumbo v4, "no_remove_user"

    :goto_2
    iget v0, v0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {v1, v3, v0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isAdminAffectedByRestriction(Landroid/content/ComponentName;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DevicePolicyManager"

    const-string/jumbo v2, "The device owner cannot remove a user because %s is enabled, and was not set by the device owner"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->removeUserEvenWhenDisallowed(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_3
    return-object v0

    :pswitch_1
    iget-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v9, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$2:Ljava/lang/Object;

    check-cast v9, Landroid/app/admin/ManagedProfileProvisioningParams;

    iget-object v10, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$3:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/devicepolicy/CallerIdentity;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$1:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->createManagedProfileInternal(Landroid/app/admin/ManagedProfileProvisioningParams;Lcom/android/server/devicepolicy/CallerIdentity;)Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget v10, v10, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v9}, Landroid/app/admin/ManagedProfileProvisioningParams;->getAccountToMigrate()Landroid/accounts/Account;

    move-result-object v14

    invoke-virtual {v9}, Landroid/app/admin/ManagedProfileProvisioningParams;->isKeepingAccountOnMigration()Z

    move-result v19

    invoke-static {v10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v15

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v13

    const/16 v20, -0x1

    const-string v1, "DevicePolicyManager"

    if-nez v14, :cond_4

    const-string/jumbo v0, "No account to migrate."

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_4
    invoke-virtual {v15, v13}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "sourceUser and targetUser are the same, won\'t migrate account."

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_5
    const/4 v0, 0x0

    const/4 v7, 0x3

    :goto_4
    if-nez v0, :cond_7

    if-lez v7, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Copying account. Attempts left : "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "Exception copying account to "

    const-string v0, "Failed to copy account to "

    const-string v6, "Copy account successful to "

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :try_start_1
    iget-object v4, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c

    move/from16 p0, v7

    :try_start_2
    const-class v7, Landroid/accounts/AccountManager;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/AccountManager;
    :try_end_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v13

    move-object v13, v4

    :try_start_3
    invoke-virtual/range {v13 .. v18}, Landroid/accounts/AccountManager;->copyAccountToUser(Landroid/accounts/Account;Landroid/os/UserHandle;Landroid/os/UserHandle;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;

    move-result-object v4
    :try_end_3
    .catch Landroid/accounts/OperationCanceledException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Landroid/accounts/AuthenticatorException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    move-object/from16 v7, v16

    :try_start_4
    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_4
    .catch Landroid/accounts/OperationCanceledException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Landroid/accounts/AuthenticatorException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object/from16 v16, v9

    move/from16 v17, v10

    const-wide/16 v9, 0xb4

    :try_start_5
    invoke-interface {v4, v9, v10, v13}, Landroid/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_5
    .catch Landroid/accounts/OperationCanceledException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/accounts/AuthenticatorException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    :try_start_6
    invoke-static {v4, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->logCopyAccountStatus(ILjava/lang/String;)V

    const/16 v0, 0xbe

    invoke-static {v0, v11, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->logEventDuration(ILjava/lang/String;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/accounts/OperationCanceledException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    move v0, v4

    const/4 v2, 0x2

    goto/16 :goto_e

    :catch_0
    move-exception v0

    const/4 v2, 0x2

    :goto_5
    const/4 v3, 0x4

    goto/16 :goto_b

    :catch_1
    move-exception v0

    const/4 v2, 0x2

    :goto_6
    const/4 v3, 0x3

    goto/16 :goto_c

    :cond_6
    const/4 v2, 0x2

    const/4 v4, 0x1

    :try_start_7
    invoke-static {v2, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->logCopyAccountStatus(ILjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/accounts/OperationCanceledException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/accounts/AuthenticatorException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_d

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    :goto_7
    const/4 v2, 0x2

    const/4 v4, 0x1

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_8
    const/4 v2, 0x2

    const/4 v4, 0x1

    goto :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v16, v9

    move/from16 v17, v10

    goto :goto_7

    :catch_7
    move-exception v0

    move-object/from16 v16, v9

    move/from16 v17, v10

    goto :goto_8

    :catch_8
    move-exception v0

    move/from16 v17, v10

    move-object/from16 v7, v16

    const/4 v2, 0x2

    const/4 v4, 0x1

    move-object/from16 v16, v9

    goto :goto_5

    :catch_9
    move-exception v0

    move/from16 v17, v10

    move-object/from16 v7, v16

    const/4 v2, 0x2

    const/4 v4, 0x1

    move-object/from16 v16, v9

    goto :goto_6

    :catch_a
    move-exception v0

    :goto_9
    move-object/from16 v16, v9

    move/from16 v17, v10

    move-object v7, v13

    goto :goto_7

    :catch_b
    move-exception v0

    :goto_a
    move-object/from16 v16, v9

    move/from16 v17, v10

    move-object v7, v13

    goto :goto_8

    :catch_c
    move-exception v0

    move/from16 p0, v7

    goto :goto_9

    :goto_b
    invoke-static {v3, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->logCopyAccountStatus(ILjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    :catch_d
    move-exception v0

    move/from16 p0, v7

    goto :goto_a

    :goto_c
    invoke-static {v3, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->logCopyAccountStatus(ILjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    const/4 v0, 0x0

    :goto_e
    add-int/lit8 v3, p0, -0x1

    move-object v13, v7

    move-object/from16 v9, v16

    move/from16 v10, v17

    move v7, v3

    goto/16 :goto_4

    :cond_7
    move-object/from16 v16, v9

    move/from16 v17, v10

    if-nez v19, :cond_9

    iget-object v0, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/accounts/AccountManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {v0, v14, v2, v2, v2}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3c

    invoke-interface {v0, v3, v4, v2}, Landroid/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v2, "booleanResult"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "Account removed from the primary user."

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :catch_e
    move-exception v0

    goto :goto_f

    :cond_8
    const-string/jumbo v2, "intent"

    const-class v3, Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "Starting activity to remove account"

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda39;

    const/4 v4, 0x3

    invoke-direct {v3, v8, v0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda39;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_8
    .catch Landroid/accounts/OperationCanceledException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Landroid/accounts/AuthenticatorException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e

    goto :goto_10

    :goto_f
    const-string v2, "Exception removing account from the primary user."

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_10
    move-object/from16 v9, v16

    :goto_11
    invoke-virtual {v8, v9, v12}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->finalizeCreateManagedProfileInternal(Landroid/app/admin/ManagedProfileProvisioningParams;Landroid/os/UserHandle;)V

    return-object v12

    :pswitch_2
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v20, -0x1

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda86;->f$3:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/devicepolicy/CallerIdentity;

    sget-object v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    iget v7, v0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const-string v8, "Can\'t get permission state for uninstalled package "

    const-string v9, "Can\'t get permission state for missing package "

    iget v10, v0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    iget-object v0, v0, Lcom/android/server/devicepolicy/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v10, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getTargetSdk(ILjava/lang/String;)I

    move-result v0

    const/16 v10, 0x1d

    if-ge v0, v10, :cond_a

    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, v6, v5, v7}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_14

    :cond_a
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerLocal;

    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v10

    :try_start_9
    invoke-interface {v10}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageState;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const-string v11, "DevicePolicyManager"

    if-nez v0, :cond_b

    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_12
    invoke-interface {v10}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V

    goto :goto_15

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_16

    :cond_b
    :try_start_b
    invoke-interface {v0, v7}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v9

    if-nez v9, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_c
    iget-object v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-static {v7, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    move/from16 v9, v20

    invoke-static {v8, v6, v9, v0, v5}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v0, :cond_d

    goto :goto_13

    :cond_d
    move v9, v3

    :goto_13
    invoke-interface {v10}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V

    move v0, v9

    :goto_14
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v1, v6, v5, v7}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v1

    const/4 v5, 0x4

    and-int/2addr v1, v5

    if-eq v1, v5, :cond_e

    goto :goto_15

    :cond_e
    if-nez v0, :cond_f

    move v3, v4

    goto :goto_15

    :cond_f
    move v3, v2

    :goto_15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :goto_16
    if-eqz v10, :cond_10

    :try_start_c
    invoke-interface {v10}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_17

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10
    :goto_17
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
