.class public final Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public m:Lcom/android/server/am/mars/database/MARsDBManager;


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v3, 0xc

    const/16 v4, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_28

    :pswitch_0
    sget-boolean v0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->updateResetTime()V

    sget-object v0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    if-nez v1, :cond_0

    goto/16 :goto_28

    :cond_0
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    const-wide/32 v2, 0x2932e00

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :pswitch_1
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/server/am/mars/database/MARsTableContract;->SCPM_AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v3, "dc_scpm_mars_app_freeze_settings"

    invoke-virtual {v0, v2, v3, v6, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    const-string/jumbo v1, "app_freeze_settings_json"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    sget-boolean v1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {v1, v0}, Lcom/android/server/am/FreecessController;->setFreecessPolicyFromSCPM(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_28

    :catch_0
    move-exception v0

    const-string/jumbo v1, "getSCPMPolicyForFreecess not available : "

    const-string/jumbo v2, "MARsDBManager"

    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    :pswitch_2
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->getSCPMList()V

    return-void

    :pswitch_3
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->isCompareDBVersion()Z

    move-result v1

    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    if-nez v2, :cond_1

    goto/16 :goto_28

    :cond_1
    if-eqz v1, :cond_5

    const-string/jumbo v1, "MARsDBManager"

    const-string/jumbo v12, "key=?"

    const-string/jumbo v2, "restriction_flag"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v2, "value"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v11

    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_SETTINGS_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception with contentResolver : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v6, :cond_4

    :cond_2
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getRestrictionFlag()I

    const-string/jumbo v0, "getRestrictionFlagFromDB error, no database!!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getRestrictionFlag()I

    :goto_2
    sget-boolean v0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/am/FreecessTrigger$FreecessTriggerHolder;->INSTANCE:Lcom/android/server/am/FreecessTrigger;

    iget-boolean v1, v0, Lcom/android/server/am/FreecessTrigger;->mIsRegisteredReceiverForEnhancedFreecess:Z

    if-eqz v1, :cond_6

    goto/16 :goto_28

    :cond_6
    :try_start_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v2, v0, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/am/FreecessTrigger;->mIntentReceiverForBird:Lcom/android/server/am/FreecessTrigger$2;

    invoke-virtual {v2, v3, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iput-boolean v8, v0, Lcom/android/server/am/FreecessTrigger;->mIsRegisteredReceiverForEnhancedFreecess:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_28

    :catch_2
    move-exception v0

    const-string/jumbo v1, "exception registerReceiverForBird "

    const-string v2, "FreecessTrigger"

    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    :pswitch_4
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    const-string/jumbo v1, "doMigration send MARS_REQUEST_MIGRATE"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "MARsDBManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_47

    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/mars/database/FASTableContract;->DC_AUTHORITY_FAS_URI:Landroid/net/Uri;

    const-string v3, "FasDataMigration"

    invoke-virtual {v0, v1, v3, v6, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_28

    :catch_3
    move-exception v0

    const-string v1, "Error on migrateFasData e = "

    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    :pswitch_5
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_7

    goto/16 :goto_28

    :cond_7
    const-string/jumbo v2, "userId"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_4
    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v7, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mContext.id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MARsDBHandler"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->getMARsSettingsInfoForNotificationTime(Landroid/content/Context;)V

    goto/16 :goto_28

    :pswitch_6
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "onCreate"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v3, "onUpgrade"

    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v5, "onInit"

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v5, :cond_8

    const-string/jumbo v5, "MARsDBHandler"

    const-string/jumbo v6, "Received MARS_DB_SM_CHANGED_MSG, --mDBCreate = "

    const-string v9, " --onUpgrade = "

    const-string v10, " --onInit = "

    invoke-static {v6, v2, v9, v3, v10}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_8
    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->cancelAllPolicy()V

    iget-object v5, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {v5, v7}, Lcom/android/server/am/mars/database/MARsDBManager;->getSettingsValueFromDB(Z)V

    :cond_9
    if-nez v3, :cond_a

    if-eqz v1, :cond_d

    :cond_a
    sget-boolean v5, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v5, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v9

    :try_start_5
    iget-object v6, v5, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-lez v6, :cond_b

    iget-object v6, v5, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_b
    :goto_4
    iget-object v6, v5, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v6, v6, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-lez v6, :cond_c

    iget-object v5, v5, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v5, v5, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    :cond_c
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_d
    if-nez v2, :cond_e

    if-nez v3, :cond_e

    if-eqz v1, :cond_11

    :cond_e
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    monitor-enter v2

    :try_start_6
    iput-boolean v8, v2, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v2

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :cond_f
    :goto_5
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {v2}, Lcom/android/server/am/mars/database/MARsDBManager;->getDefaultAllowedListDBValues()V

    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/server/am/mars/database/FASDataManager$FASDataManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/FASDataManager;

    invoke-virtual {v2}, Lcom/android/server/am/mars/database/FASDataManager;->getFASDataFromDB()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-static {v2}, Lcom/android/server/am/mars/MARsUtils;->updateMARsTargetPackages(Ljava/util/ArrayList;)V

    goto :goto_6

    :cond_10
    const-string/jumbo v2, "MARsDBManager"

    const-string/jumbo v3, "Packages database not exist, and not created!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    iget-boolean v2, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    if-nez v2, :cond_11

    new-instance v2, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    iget-object v3, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBHandler:Lcom/android/server/am/mars/database/MARsDBHandler;

    invoke-virtual {v3}, Lcom/android/server/am/mars/database/MARsDBHandler;->getMainHandler()Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    move-result-object v3

    invoke-direct {v2, v0, v3, v7}, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;-><init>(Lcom/android/server/am/mars/database/MARsDBManager;Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;I)V

    iput-object v2, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFASObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    iget-object v5, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFASObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    iget-object v6, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-virtual {v2, v3, v8, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iput-boolean v8, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    :cond_11
    if-eqz v1, :cond_47

    sget-object v0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    if-nez v1, :cond_12

    goto/16 :goto_28

    :cond_12
    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_13
    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :goto_7
    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    :pswitch_7
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_14

    goto/16 :goto_28

    :cond_14
    const-string/jumbo v2, "boot"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v2, "MARsDBManager"

    iget-object v9, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {v9}, Lcom/android/server/am/mars/database/MARsDBManager;->isCompareDBVersion()Z

    move-result v0

    const/4 v11, 0x2

    if-eqz v0, :cond_35

    const-string/jumbo v0, "key"

    const-string/jumbo v12, "value"

    filled-new-array {v0, v12}, [Ljava/lang/String;

    move-result-object v15

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :try_start_9
    iget-object v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_SETTINGS_URI:Landroid/net/Uri;

    const/16 v18, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    const-string/jumbo v13, "initMARsSettingsDefinitionInternal : Exception : "

    invoke-static {v0, v13, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    :goto_8
    if-eqz v0, :cond_17

    :cond_15
    :goto_9
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_15

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    new-instance v13, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;

    sget-object v14, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object v14, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_16
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :cond_17
    const-string/jumbo v0, "initMARsSettingsDefinitionInternal error, no database!!"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_b

    :cond_18
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getMARsSettingsInfoFromDefaultValue()V

    :goto_b
    const-string/jumbo v12, "bigdataRestriction"

    :try_start_a
    iget-object v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_6

    :try_start_b
    iput-boolean v8, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v13, :cond_1a

    :try_start_c
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object v14, v0

    if-eqz v13, :cond_19

    :try_start_d
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_c

    :catchall_3
    move-exception v0

    :try_start_e
    invoke-virtual {v14, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_19
    :goto_c
    throw v14
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_6

    :catch_6
    const-string/jumbo v0, "checkBigDataRestrictionColumnExist-sql, catch no column exception!"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    goto :goto_d

    :catch_7
    const-string/jumbo v0, "checkBigDataRestrictionColumnExist, catch no column exception!"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    :cond_1a
    :goto_d
    iget-boolean v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    const-string/jumbo v13, "policyNum"

    const-string/jumbo v14, "repeatTriggerTime"

    const-string/jumbo v15, "firstTriggerTime"

    const-string/jumbo v16, "killType"

    const-string/jumbo v17, "restriction"

    const-string/jumbo v18, "targetCategory"

    const-string/jumbo v19, "isPolicyEnabled"

    const/4 v6, 0x5

    const/4 v3, 0x3

    const/16 p0, 0x6

    const/4 v10, 0x7

    if-eqz v0, :cond_1b

    new-array v0, v4, [Ljava/lang/String;

    aput-object v13, v0, v7

    aput-object v19, v0, v8

    aput-object v18, v0, v11

    aput-object v17, v0, v3

    aput-object v16, v0, v5

    aput-object v15, v0, v6

    aput-object v14, v0, p0

    aput-object v12, v0, v10

    :goto_e
    move-object/from16 v22, v0

    goto :goto_f

    :cond_1b
    new-array v0, v10, [Ljava/lang/String;

    aput-object v13, v0, v7

    aput-object v19, v0, v8

    aput-object v18, v0, v11

    aput-object v17, v0, v3

    aput-object v16, v0, v5

    aput-object v15, v0, v6

    aput-object v14, v0, p0

    goto :goto_e

    :goto_f
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :try_start_f
    iget-object v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    sget-object v21, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    const/16 v25, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v25}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    const-string/jumbo v12, "initPolicyDefinitionInternal: Exception : "

    invoke-static {v0, v12, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_1e

    :goto_11
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_1d

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1c

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v27

    move/from16 v12, p0

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v29

    sget-object v12, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object v12, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v22 .. v22}, Lcom/android/server/am/mars/database/MARsVersionManager;->convertPolicyNumToName(I)Ljava/lang/String;

    move-result-object v21

    new-instance v20, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    invoke-direct/range {v20 .. v30}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;-><init>(Ljava/lang/String;IIIIIJJ)V

    move-object/from16 v12, v20

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    const/16 p0, 0x6

    goto :goto_11

    :cond_1d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_12

    :cond_1e
    const-string/jumbo v0, "initPolicyDefinitionInternal error, no database!!"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v10, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    goto :goto_13

    :cond_1f
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getPolicyFromDefaultValue()V

    :goto_13
    const-string/jumbo v0, "condition"

    const-string/jumbo v10, "matchType"

    const-string/jumbo v12, "packageName"

    filled-new-array {v13, v0, v10, v12}, [Ljava/lang/String;

    move-result-object v16

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :try_start_10
    iget-object v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_TARGET_EXCLUDE_PACKAGE:Landroid/net/Uri;

    const/16 v19, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    goto :goto_14

    :catch_9
    move-exception v0

    const-string/jumbo v12, "initAdjustTargetExcludePackageInternal: Exception : "

    invoke-static {v0, v12, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_22

    :cond_20
    :goto_15
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_21

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_20

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    sget-object v17, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object v17, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    invoke-static/range {v17 .. v17}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v6, v12, v14, v15, v4}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x8

    const/4 v6, 0x5

    goto :goto_15

    :cond_21
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_16

    :cond_22
    const-string/jumbo v0, "initAdjustTargetExcludePackageInternal error, no database!!"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    iput-object v10, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    goto :goto_17

    :cond_23
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/server/am/mars/database/MARsListManager;->HEALTH_KEY_LIST:Ljava/util/List;

    sget-object v4, Lcom/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsListManager;

    iget-object v4, v4, Lcom/android/server/am/mars/database/MARsListManager;->mExcludePackageDefault:Ljava/util/ArrayList;

    iput-object v4, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    :goto_17
    const-string/jumbo v0, "currentImportantValue"

    filled-new-array {v13, v0}, [Ljava/lang/String;

    move-result-object v22

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_11
    iget-object v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    sget-object v21, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_TARGET_CURRENT_IMPORTANT:Landroid/net/Uri;

    const/16 v25, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v25}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    goto :goto_18

    :catch_a
    move-exception v0

    const-string/jumbo v6, "initAdjustTargetIsCurrentImportantInternal: Exception : "

    invoke-static {v0, v6, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_26

    :cond_24
    :goto_19
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_24

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    new-instance v12, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;

    sget-object v13, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object v13, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v12, v6, v10}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;-><init>(II)V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_25
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1a

    :cond_26
    const-string/jumbo v0, "initAdjustTargetIsCurrentImportantInternal error, no database!!"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    invoke-virtual {v0, v4}, Lcom/android/server/am/mars/database/MARsVersionManager;->setAdjustTargetCurrentImportant(Ljava/util/ArrayList;)V

    goto :goto_1b

    :cond_27
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->getIsCurrentImportantFromDefaultValue()V

    :goto_1b
    const-string/jumbo v24, "matchType"

    const-string/jumbo v25, "action"

    const-string/jumbo v20, "restrictionType"

    const-string/jumbo v21, "isAllowed"

    const-string/jumbo v22, "callee"

    const-string/jumbo v23, "caller"

    filled-new-array/range {v20 .. v25}, [Ljava/lang/String;

    move-result-object v28

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_12
    iget-object v0, v9, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    sget-object v27, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_RESTRICTION:Landroid/net/Uri;

    const/16 v31, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v26 .. v31}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b

    goto :goto_1c

    :catch_b
    move-exception v0

    const-string/jumbo v6, "initAdjustRestrictionInternal: Exception : "

    invoke-static {v0, v6, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_1c
    if-eqz v6, :cond_33

    :cond_28
    :goto_1d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/4 v2, 0x5

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v9, 0xc

    if-eq v0, v9, :cond_2d

    const/16 v10, 0xd

    if-eq v0, v10, :cond_2b

    const/16 v10, 0x10

    if-eq v0, v10, :cond_29

    new-instance v20, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;

    sget-object v10, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v26, v0

    invoke-direct/range {v20 .. v26}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_29
    move-object/from16 v0, v22

    sget-boolean v10, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    sget-boolean v10, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v10, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-object v12, v10, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    if-eqz v12, :cond_28

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a

    goto :goto_1d

    :cond_2a
    iget-object v10, v10, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_2b
    move-object/from16 v0, v22

    sget-boolean v10, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    sget-boolean v10, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v10, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-object v12, v10, Lcom/android/server/am/FreecessController;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    if-eqz v12, :cond_28

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2c

    goto :goto_1d

    :cond_2c
    iget-object v10, v10, Lcom/android/server/am/FreecessController;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1d

    :cond_2d
    move-object/from16 v0, v21

    move-object/from16 v10, v25

    sget-boolean v12, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    sget-boolean v12, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v12, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-object v13, v12, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    if-eqz v13, :cond_31

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2e

    goto/16 :goto_1d

    :cond_2e
    const-string/jumbo v13, "block"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2f

    sget-object v13, Lcom/android/server/am/FreecessController;->productModel:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_30

    :cond_2f
    iget-object v13, v12, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    sget-boolean v13, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v13, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v13

    if-eqz v13, :cond_31

    const-string/jumbo v13, "blockchn"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_31

    iget-object v13, v12, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    iget-object v13, v12, Lcom/android/server/am/FreecessController;->mPendingIntentsIdle:Ljava/util/ArrayList;

    if-eqz v13, :cond_28

    const-string/jumbo v13, "idle"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, v12, Lcom/android/server/am/FreecessController;->mPendingIntentsIdle:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1d

    :cond_32
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1e

    :cond_33
    const-string/jumbo v0, "initAdjustRestrictionInternal error, no database!!"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    iput-object v4, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    goto :goto_1f

    :cond_34
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/server/am/mars/database/MARsListManager;->HEALTH_KEY_LIST:Ljava/util/List;

    sget-object v2, Lcom/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsListManager;

    iget-object v2, v2, Lcom/android/server/am/mars/database/MARsListManager;->mAdjustRestrictionDefault:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    goto :goto_1f

    :cond_35
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getMARsSettingsInfoFromDefaultValue()V

    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getPolicyFromDefaultValue()V

    sget-object v2, Lcom/android/server/am/mars/database/MARsListManager;->HEALTH_KEY_LIST:Ljava/util/List;

    sget-object v2, Lcom/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsListManager;

    iget-object v3, v2, Lcom/android/server/am/mars/database/MARsListManager;->mExcludePackageDefault:Ljava/util/ArrayList;

    iput-object v3, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->getIsCurrentImportantFromDefaultValue()V

    iget-object v2, v2, Lcom/android/server/am/mars/database/MARsListManager;->mAdjustRestrictionDefault:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    :goto_1f
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    sget-boolean v0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v2, v7

    :goto_20
    sget-object v3, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3b

    sget-object v3, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    iget-object v3, v3, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->name:Ljava/lang/String;

    sget-object v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    iget v4, v4, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->num:I

    sget-object v6, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    iget v6, v6, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->enabled:I

    sget-object v9, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    iget v9, v9, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->restriction:I

    sget-object v9, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    iget v9, v9, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->action:I

    if-ne v6, v8, :cond_36

    move v6, v8

    goto :goto_21

    :cond_36
    move v6, v7

    :goto_21
    new-instance v10, Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-direct {v10, v4, v9, v3, v6}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(IILjava/lang/String;Z)V

    if-ne v4, v8, :cond_37

    iput-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    :goto_22
    const/16 v3, 0x8

    goto :goto_23

    :cond_37
    if-ne v4, v11, :cond_38

    iput-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_22

    :cond_38
    if-ne v4, v5, :cond_39

    iput-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_22

    :cond_39
    const/16 v3, 0x8

    if-ne v4, v3, :cond_3a

    iput-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    :cond_3a
    :goto_23
    add-int/2addr v2, v8

    goto :goto_20

    :cond_3b
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "bikemode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    new-instance v3, Lcom/android/server/am/MARsPolicyManager$Policy;

    const-string/jumbo v4, "sbkiepolicy"

    const/16 v5, 0x9

    const/4 v12, 0x6

    invoke-direct {v3, v12, v5, v4, v2}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(IILjava/lang/String;Z)V

    iput-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const-string/jumbo v2, "sys.config.mars.game_policy"

    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v3, Lcom/android/server/am/MARsPolicyManager$Policy;

    const-string/jumbo v4, "gamePolicy"

    const/16 v6, 0xa

    invoke-direct {v3, v5, v6, v4, v2}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(IILjava/lang/String;Z)V

    iput-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-eqz v2, :cond_3c

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_3c

    iput-boolean v8, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    :cond_3c
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_3d

    sget-boolean v3, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v3, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getFreecessEnabledConfig mIsKernelSupportFreecess = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v3, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    const-string v6, "FreecessController"

    invoke-static {v6, v4, v5}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v3, v3, Lcom/android/server/am/FreecessController;->mIsKernelSupportFreecess:Z

    iput-boolean v3, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    :cond_3d
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.samsung.android.sm.ACTION_AUTO_RUN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->SMART_MANAGER_PKG_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v3, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_3e

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3e

    sput-boolean v8, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    :cond_3e
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_3f

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v2, :cond_3f

    sget-object v2, Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;->INSTANCE:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "com.android.server.am.MARS_TRIGGER_SBIKE_MODE_POLICY"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "com.android.server.am.MARS_CANCEL_SBIKE_MODE_POLICY"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicySBikeIntentReceiver:Lcom/android/server/am/MARsTrigger$2;

    invoke-virtual {v4, v2, v3, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_3f
    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_40

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v2, :cond_40

    sget-object v2, Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;->INSTANCE:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "com.android.server.am.MARS_TRIGGER_GAME_MODE_POLICY"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "com.android.server.am.MARS_CANCEL_GAME_MODE_POLICY"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyGameIntentReceiver:Lcom/android/server/am/MARsTrigger$2;

    invoke-virtual {v4, v2, v3, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_40
    sget-object v2, Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;->INSTANCE:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "com.sec.android.sdhms.action.HIGH_CPU_USAGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "com.sec.android.sdhms.action.HIGH_CPU_USAGE_APP"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mTCPUReceiver:Lcom/android/server/am/MARsTrigger$1;

    invoke-virtual {v4, v2, v3, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v2, :cond_41

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_41

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_41

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_41

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_41

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_41

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FC = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", AR = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", PD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", SB = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", GA = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    const-string/jumbo v3, "MARsPolicyManager"

    invoke-static {v3, v2, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_41
    if-nez v1, :cond_47

    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->cancelAllPolicy()V

    goto/16 :goto_28

    :pswitch_8
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_42

    goto/16 :goto_28

    :cond_42
    const-string/jumbo v2, "callee"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "caller"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "isblock"

    invoke-virtual {v1, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v5, "requesttime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v5, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v8, "calleepackage"

    invoke-virtual {v1, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "callerpackage"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "isblocked"

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "requestTime"

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_13
    iget-object v3, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0x63

    if-le v1, v3, :cond_43

    invoke-virtual {v0, v7}, Lcom/android/server/am/mars/database/MARsDBManager;->doUpdateCompHistory(Z)V

    goto :goto_24

    :catchall_4
    move-exception v0

    goto :goto_25

    :cond_43
    :goto_24
    monitor-exit v2

    return-void

    :goto_25
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    throw v0

    :pswitch_9
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_44

    goto/16 :goto_28

    :cond_44
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/database/FASEntity;

    if-eqz v1, :cond_47

    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->updatePkgToSMDB(Lcom/android/server/am/mars/database/FASEntity;)V

    return-void

    :pswitch_a
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_45

    goto :goto_28

    :cond_45
    const-string/jumbo v2, "values"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_47

    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "MARsDBManager"

    const-string/jumbo v3, "updatePkgsToSMDB : begin --size "

    :try_start_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v7, v3, :cond_46

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/mars/database/FASEntity;

    invoke-virtual {v0, v3}, Lcom/android/server/am/mars/database/MARsDBManager;->updatePkgToSMDB(Lcom/android/server/am/mars/database/FASEntity;)V

    add-int/2addr v7, v8

    goto :goto_26

    :catch_c
    move-exception v0

    goto :goto_27

    :cond_46
    const-string/jumbo v0, "updatePkgsToSMDB : end"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c

    goto :goto_28

    :goto_27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Exception on handling DB : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28

    :pswitch_b
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {v0, v8}, Lcom/android/server/am/mars/database/MARsDBManager;->getSettingsValueFromDB(Z)V

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->getDefaultAllowedListDBValues()V

    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->getFreezeExcludeListFromDB()V

    :cond_47
    :goto_28
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
