.class public abstract Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static declared-synchronized enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5

    const-string/jumbo v0, "Retrieved Policy: "

    const-string/jumbo v1, "enforceCaller(): "

    const-class v2, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;

    monitor-enter v2

    :try_start_0
    const-string v3, "EnterpriseAccessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/accessControl/AccessControlDefinitions;->ACCESS_CONTROL_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/accessControl/AccessControl;

    const-string v3, "EnterpriseAccessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/enterprise/accessControl/AccessControl;->clone()Lcom/android/server/enterprise/accessControl/AccessControl;

    move-result-object v0

    iput-object p1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mApi:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/accessControl/AccessControl;->updateCallerInfo(Lcom/samsung/android/knox/ContextInfo;)V

    invoke-static {v0}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCallerInternal(Lcom/android/server/enterprise/accessControl/AccessControl;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "API not defined"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid API"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static enforceCallerInternal(Lcom/android/server/enterprise/accessControl/AccessControl;)Lcom/samsung/android/knox/ContextInfo;
    .locals 27

    move-object/from16 v0, p0

    sget v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->$r8$clinit:I

    sget-object v4, Lcom/android/server/enterprise/EnterpriseService;->sEdmsInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "enforceAccessControl: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "EnterpriseDeviceManagerService"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mScope:I

    const-string/jumbo v6, "PROVISION_CERT_APP"

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mApi:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-boolean v2, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsOwnerOnly:Z

    if-eqz v2, :cond_1

    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceOwnerOnly(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    :cond_1
    move-object v5, v1

    iget-boolean v7, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsUserPolicy:Z

    iget-boolean v8, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mShouldCheckAdmin:Z

    iget-boolean v9, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsDoPoEnforce:Z

    iget-boolean v10, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mIsDangerousApi:Z

    iget-object v6, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mKnoxPermissions:Ljava/util/List;

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    iget-object v3, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v3, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v9

    const-string v11, "#SelectClause#"

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "packageName"

    invoke-virtual {v8, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "signature"

    const-string/jumbo v12, "scopeMask"

    const-string/jumbo v13, "adminUid"

    filled-new-array {v11, v9, v12, v13}, [Ljava/lang/String;

    move-result-object v14

    iget-object v15, v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v16, 0x1

    const-string v2, "AUTHORIZATION"

    invoke-virtual {v15, v2, v14, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    move v7, v10

    const/4 v1, -0x1

    const/16 v18, 0x2

    :goto_1
    const/4 v2, -0x1

    goto/16 :goto_9

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v15, v10

    :cond_4
    :goto_2
    if-ge v15, v8, :cond_d

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v15, v15, 0x1

    const/16 v18, 0x2

    move-object/from16 v1, v17

    check-cast v1, Landroid/content/ContentValues;

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    iget v14, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mScope:I

    and-int v14, v17, v14

    if-nez v14, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    if-nez v14, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v2

    iget-object v2, v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    move/from16 v20, v8

    const-string/jumbo v8, "android"

    move-object/from16 v21, v9

    const/4 v9, 0x0

    invoke-static {v2, v8, v9, v7}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_7

    move v10, v9

    move-object/from16 v2, v19

    move/from16 v8, v20

    move-object/from16 v9, v21

    goto :goto_2

    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-virtual {v8, v10, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v10, v3, :cond_8

    move/from16 v26, v7

    const/4 v7, 0x0

    :goto_3
    move/from16 v25, v3

    goto :goto_6

    :cond_8
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v8, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    array-length v9, v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x0

    const/16 v24, 0x0

    :goto_4
    if-ge v10, v9, :cond_9

    move/from16 v25, v3

    :try_start_2
    aget-object v3, v8, v10
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v26, v7

    const/4 v7, 0x0

    :try_start_3
    invoke-static {v7, v2, v3, v1}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    or-int v24, v24, v3

    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v25

    move/from16 v7, v26

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_0
    :goto_5
    move/from16 v26, v7

    const/4 v7, 0x0

    goto :goto_7

    :cond_9
    move/from16 v25, v3

    move/from16 v26, v7

    const/4 v7, 0x0

    if-nez v24, :cond_b

    :goto_6
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v10, v7

    move-object/from16 v2, v19

    move/from16 v8, v20

    move-object/from16 v9, v21

    move/from16 v3, v25

    move/from16 v7, v26

    goto/16 :goto_2

    :catch_1
    move/from16 v25, v3

    goto :goto_5

    :cond_a
    move/from16 v25, v3

    move/from16 v26, v7

    const/4 v7, 0x0

    :cond_b
    :try_start_4
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    :catch_2
    move/from16 v25, v3

    move/from16 v26, v7

    move v7, v9

    goto :goto_7

    :cond_c
    move/from16 v26, v7

    move v7, v9

    goto :goto_3

    :catch_3
    :goto_7
    :try_start_5
    const-string v1, "Authorized package not installed"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :goto_8
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_d
    move v7, v10

    const/16 v18, 0x2

    const/4 v1, -0x1

    goto/16 :goto_1

    :goto_9
    if-eq v1, v2, :cond_e

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    goto/16 :goto_d

    :cond_e
    iget-object v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-object v2, v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnCallingUser(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isProfileOwnerApp(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_c

    :cond_f
    iget-object v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v2, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v3, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iget-boolean v1, v1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    iget-object v5, v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object v5

    invoke-virtual {v5, v2, v3, v1}, Lcom/android/server/enterprise/utils/KpuHelper;->isUidValidKpu(IIZ)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    iget v3, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setDelegatorAdminUid(Lcom/samsung/android/knox/ContextInfo;I)V

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    :goto_a
    move-object v2, v1

    goto/16 :goto_d

    :cond_10
    const-string/jumbo v2, "restriction_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v2, :cond_11

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKnoxDelegationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    goto :goto_b

    :cond_11
    move v10, v7

    :goto_b
    if-eqz v10, :cond_12

    invoke-virtual {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getDeviceOwnerUid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setDelegatorAdminUid(Lcom/samsung/android/knox/ContextInfo;I)V

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    goto :goto_a

    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Invalid KSP caller"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget-object v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceKCS(I)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_c

    :cond_14
    iget-object v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mApi:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_c

    :cond_15
    iget v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mScope:I

    and-int/lit8 v2, v1, 0x2

    move/from16 v3, v18

    if-eq v2, v3, :cond_18

    and-int/lit8 v1, v1, 0x1

    move/from16 v2, v16

    if-ne v1, v2, :cond_17

    iget-object v1, v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_RC_API_ACCESS_GRANT"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_16

    goto :goto_c

    :cond_16
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not authorized to call RC APIs"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Caller is not allowed. Invalid scope: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mScope:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not authorized to call provisionCert API"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_c
    const/4 v2, 0x0

    :goto_d
    iget v1, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextUid:I

    iget-object v3, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mKnoxPermissions:Ljava/util/List;

    invoke-virtual {v4, v1, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceCallerPermission(ILjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1b

    if-eqz v2, :cond_1a

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/accessControl/AccessControl;->updateCallerInfo(Lcom/samsung/android/knox/ContextInfo;)V

    :cond_1a
    iget-object v0, v0, Lcom/android/server/enterprise/accessControl/AccessControl;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-object v0

    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
