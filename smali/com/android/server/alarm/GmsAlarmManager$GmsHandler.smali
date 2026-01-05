.class public final Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 23

    move-object/from16 v0, p1

    const/4 v1, -0x1

    iget v2, v0, Landroid/os/Message;->what:I

    const-string/jumbo v3, "state"

    const-string/jumbo v4, "com.samsung.android.server.action_google_net_state"

    const-string/jumbo v5, "RemoteException:"

    const-string v6, "IllegalStateException:"

    const/4 v7, 0x3

    const/4 v8, 0x2

    const-string v9, ","

    const-string v10, "GmsAlarmManager"

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v13, p0

    iget-object v13, v13, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_26

    :pswitch_0
    invoke-static {v13}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mrestoreGcmAlarm(Lcom/android/server/alarm/GmsAlarmManager;)V

    iget v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleCalendarUid:I

    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    iget v2, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    iget-object v3, v13, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v3, :cond_0

    invoke-virtual {v13}, Lcom/android/server/alarm/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget-boolean v3, v13, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    if-eqz v3, :cond_1

    iget-object v3, v13, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v2, v12}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    iget-object v3, v13, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v2, v12}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    iget-object v3, v13, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v1, v12}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    iget-object v3, v13, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v1, v12}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    iget-object v3, v13, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v0, v12}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    iget-object v3, v13, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v0, v12}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    invoke-virtual {v13, v2, v11}, Lcom/android/server/alarm/GmsAlarmManager;->restrictJobsByUid(IZ)V

    invoke-virtual {v13, v1, v11}, Lcom/android/server/alarm/GmsAlarmManager;->restrictJobsByUid(IZ)V

    invoke-virtual {v13, v0, v11}, Lcom/android/server/alarm/GmsAlarmManager;->restrictJobsByUid(IZ)V

    invoke-virtual {v13, v12}, Lcom/android/server/alarm/GmsAlarmManager;->setGmsMultiUserWorkAllow(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    invoke-static {v5, v0, v10}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_1
    :goto_2
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_2

    iget-boolean v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    if-eqz v1, :cond_2

    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgAppid:I

    invoke-virtual {v0, v1, v11}, Landroid/os/PowerManagerInternal;->setWakeLockBlackListEnableDisable(IZ)V

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleCalendarPkgAppid:I

    invoke-virtual {v0, v1, v11}, Landroid/os/PowerManagerInternal;->setWakeLockBlackListEnableDisable(IZ)V

    :cond_2
    iput-boolean v11, v13, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    goto/16 :goto_26

    :pswitch_1
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    const-wide/16 v1, 0x2710

    if-eqz v0, :cond_3

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_3
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :pswitch_2
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v12

    :goto_3
    if-ltz v2, :cond_46

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "get userId: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5, v3, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-le v4, v1, :cond_4

    if-eqz v4, :cond_4

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/16 v5, 0x9

    iput v5, v3, Landroid/os/Message;->what:I

    iput v4, v3, Landroid/os/Message;->arg1:I

    iget-object v4, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    add-int/2addr v2, v1

    goto :goto_3

    :pswitch_3
    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v0}, Lcom/android/server/alarm/GmsAlarmManager;->updateMultiUserGmsUid(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v11

    :cond_5
    :goto_4
    if-ge v2, v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/2addr v2, v12

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_46

    iget-boolean v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    if-nez v1, :cond_7

    goto/16 :goto_26

    :cond_7
    iget-object v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_8

    invoke-virtual {v13}, Lcom/android/server/alarm/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    if-nez v1, :cond_8

    goto/16 :goto_26

    :cond_8
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v11

    :goto_5
    if-ge v2, v1, :cond_46

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/2addr v2, v12

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, v13, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v4, v7, v11}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    iget-object v4, v13, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v4, v7, v11}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v13, v3, v12}, Lcom/android/server/alarm/GmsAlarmManager;->restrictJobsByUid(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_7

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    :goto_7
    invoke-static {v5, v0, v10}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    goto/16 :goto_26

    :pswitch_4
    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v0}, Lcom/android/server/alarm/GmsAlarmManager;->updateMultiUserGmsUid(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v11

    :goto_8
    if-ge v2, v1, :cond_9

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/2addr v2, v12

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    iget-object v4, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_46

    iget-boolean v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    if-nez v1, :cond_a

    goto/16 :goto_26

    :cond_a
    iget-object v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_b

    invoke-virtual {v13}, Lcom/android/server/alarm/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    if-nez v1, :cond_b

    goto/16 :goto_26

    :cond_b
    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v11

    :goto_9
    if-ge v2, v1, :cond_46

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/2addr v2, v12

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, v13, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v4, v7, v12}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    iget-object v4, v13, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v4, v7, v12}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v13, v3, v11}, Lcom/android/server/alarm/GmsAlarmManager;->restrictJobsByUid(IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_b

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    :goto_b
    invoke-static {v5, v0, v10}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    goto/16 :goto_26

    :pswitch_5
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Exception with contentResolver : "

    sget-boolean v3, Lcom/android/server/alarm/GmsAlarmManager;->DEBUG_SCPM:Z

    if-eqz v3, :cond_c

    const-string/jumbo v0, "updateSCPMParametersFromDB"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz v3, :cond_d

    const-string/jumbo v0, "isSCPMAvailable"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v4, "com.samsung.android.sm.policy"

    invoke-virtual {v0, v4, v11}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_46

    if-eqz v3, :cond_e

    const-string/jumbo v0, "isNeedUpdateSCPMPolicy"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v4, 0x0

    :try_start_3
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    iget-object v15, v13, Lcom/android/server/alarm/GmsAlarmManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_c

    :catch_6
    const-string/jumbo v0, "policy list is null"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    :goto_c
    if-eqz v0, :cond_11

    :cond_f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_10

    const-string/jumbo v5, "policyName"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "policyVersion"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "gmsnet"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    const-string/jumbo v7, "isNeedUpdateSCPMPolicy: policyName="

    const-string v9, " , policyVersion="

    invoke-static {v7, v5, v9, v6, v10}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v5, v12

    goto :goto_d

    :cond_10
    move v5, v11

    :goto_d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_e

    :cond_11
    move v5, v11

    :goto_e
    if-eqz v5, :cond_21

    const-string/jumbo v5, "item"

    const-string/jumbo v6, "category"

    const-string/jumbo v7, "data1"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v0, "hasValidItemFromDB!!"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_4
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    iget-object v15, v13, Lcom/android/server/alarm/GmsAlarmManager;->SCPM_URI_GNET:Landroid/net/Uri;

    const/16 v19, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_f

    :catch_7
    move-exception v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v4

    :goto_f
    const-string/jumbo v9, "whitelist"

    const-string/jumbo v14, "checkin_addr"

    if-eqz v0, :cond_15

    :cond_12
    :goto_10
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_12

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v1, v12

    goto :goto_11

    :cond_13
    const/4 v1, -0x1

    goto :goto_10

    :cond_14
    move v1, v11

    :goto_11
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_12

    :cond_15
    const-string/jumbo v0, "hasValidItemFromDB error, no database!!"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v11

    :goto_12
    if-eqz v1, :cond_21

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v0, "getSCPMPolicyItemFromDB!!"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_5
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->SCPM_URI_GNET:Landroid/net/Uri;

    const/16 v22, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_13

    :catch_8
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_13
    if-eqz v4, :cond_20

    :cond_16
    :goto_14
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, " ,scpm url: data1 = "

    if-eqz v5, :cond_17

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_16

    const-string/jumbo v0, "getSCPMPolicyItemFromDB category = "

    invoke-static {v0, v1, v6, v2, v10}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_17
    const-string/jumbo v5, "switch"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    if-eqz v3, :cond_18

    const-string v5, " item = "

    const-string v7, " switch category = "

    invoke-static {v5, v0, v7, v1, v6}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v2, v10}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "true"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_15
    const/4 v0, -0x1

    goto :goto_16

    :sswitch_0
    const-string/jumbo v5, "alarm_restriction"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_15

    :cond_19
    move v0, v8

    goto :goto_16

    :sswitch_1
    const-string/jumbo v5, "wakelock_restriction"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_15

    :cond_1a
    move v0, v12

    goto :goto_16

    :sswitch_2
    const-string/jumbo v5, "network_restriction"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_15

    :cond_1b
    move v0, v11

    :goto_16
    packed-switch v0, :pswitch_data_1

    goto :goto_14

    :pswitch_6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    or-int/2addr v0, v12

    iput v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    goto/16 :goto_14

    :cond_1c
    iget v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v0, v0, -0x2

    iput v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    goto/16 :goto_14

    :pswitch_7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    goto/16 :goto_14

    :cond_1d
    iget v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v0, v0, -0x5

    iput v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    goto/16 :goto_14

    :pswitch_8
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    or-int/2addr v0, v8

    iput v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    goto/16 :goto_14

    :cond_1e
    iget v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v0, v0, -0x3

    iput v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    goto/16 :goto_14

    :cond_1f
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_17

    :cond_20
    const-string/jumbo v0, "getSCPMPolicyItemFromDB error, no database!!"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_26

    :cond_21
    const-string/jumbo v0, "scpm doesn\'t find the Policy name for gmsnet"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    :pswitch_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, v13, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    sget-object v2, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\"GMST\":\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v13, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    iget-wide v4, v4, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\"GMSC\":\""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v13, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    iget-wide v5, v5, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\"NGMST\":\""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v13, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    iget-wide v5, v5, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mTime:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\"NGMSC\":\""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v13, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    iget-wide v5, v5, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\"VPNT\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    iget-wide v5, v1, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mTime:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\"VPNC\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    iget-wide v3, v1, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mBigdataEnable:Z

    if-eqz v1, :cond_23

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.android.server.gmsalarmmanager"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    const-string v3, "GNET"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_22

    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.providers.context"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "app_id = com.android.server.gmsalarmmanager, feature = GNET, extra = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v13}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msendInsertLogDelay(Lcom/android/server/alarm/GmsAlarmManager;)V

    return-void

    :pswitch_a
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    if-eqz v0, :cond_24

    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    if-eqz v0, :cond_24

    const-string/jumbo v0, "MSG_DISABLE_GMS_NETWORK_BY_UNCHARGING"

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v11, [Ljava/lang/Object;

    const v1, 0x9d0d

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-static {v13, v11}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGmsNetWorkAllow(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    :cond_24
    iput-boolean v11, v13, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    return-void

    :pswitch_b
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    if-eqz v0, :cond_25

    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    if-nez v0, :cond_25

    const-string/jumbo v0, "MSG_ENABLE_GMS_NETWORK_BY_CHARGING"

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v11, [Ljava/lang/Object;

    const v1, 0x9d0c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-static {v13, v12}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGmsNetWorkAllow(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    invoke-static {v13}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mrestoreGcmAlarm(Lcom/android/server/alarm/GmsAlarmManager;)V

    :cond_25
    iput-boolean v12, v13, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    return-void

    :pswitch_c
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    if-eqz v0, :cond_26

    iput-boolean v11, v13, Lcom/android/server/alarm/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    invoke-static {v13, v12}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGMSLocationProviderChangeReceiverState(Lcom/android/server/alarm/GmsAlarmManager;I)V

    :cond_26
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    if-nez v0, :cond_27

    goto/16 :goto_26

    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[GMS-CORE] MSG_ENABLE_GMS_NETWORK:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mVendingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleCalendarUid:I

    invoke-static {v0, v1, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    if-nez v0, :cond_28

    new-array v0, v11, [Ljava/lang/Object;

    const v1, 0x9d0a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-static {v13, v12}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGmsNetWorkAllow(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    :cond_28
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean v11, v13, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    invoke-static {v13}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mrestoreGcmAlarm(Lcom/android/server/alarm/GmsAlarmManager;)V

    invoke-static {v13, v12}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGMSLocationProviderChangeReceiverState(Lcom/android/server/alarm/GmsAlarmManager;I)V

    iget v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_29

    goto/16 :goto_26

    :cond_29
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_46

    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgAppid:I

    invoke-virtual {v0, v1, v11}, Landroid/os/PowerManagerInternal;->setWakeLockBlackListEnableDisable(IZ)V

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleCalendarPkgAppid:I

    invoke-virtual {v0, v1, v11}, Landroid/os/PowerManagerInternal;->setWakeLockBlackListEnableDisable(IZ)V

    return-void

    :pswitch_d
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    if-eqz v0, :cond_2a

    iput-boolean v11, v13, Lcom/android/server/alarm/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    invoke-static {v13, v8}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGMSLocationProviderChangeReceiverState(Lcom/android/server/alarm/GmsAlarmManager;I)V

    :cond_2a
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    if-eqz v0, :cond_2b

    goto/16 :goto_26

    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[GMS-CORE] MSG_DISABLE_GMS_NETWORK:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mVendingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleCalendarUid:I

    invoke-static {v0, v1, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    if-nez v0, :cond_2c

    new-array v0, v11, [Ljava/lang/Object;

    const v1, 0x9d09

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-static {v13, v11}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGmsNetWorkAllow(Lcom/android/server/alarm/GmsAlarmManager;Z)V

    :cond_2c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean v12, v13, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    invoke-static {v13, v8}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msetGMSLocationProviderChangeReceiverState(Lcom/android/server/alarm/GmsAlarmManager;I)V

    iget v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2d

    goto/16 :goto_26

    :cond_2d
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_46

    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgAppid:I

    invoke-virtual {v0, v1, v12}, Landroid/os/PowerManagerInternal;->setWakeLockBlackListEnableDisable(IZ)V

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleCalendarPkgAppid:I

    invoke-virtual {v0, v1, v12}, Landroid/os/PowerManagerInternal;->setWakeLockBlackListEnableDisable(IZ)V

    return-void

    :pswitch_e
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    if-nez v0, :cond_2e

    goto/16 :goto_26

    :cond_2e
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2f

    move v0, v12

    goto :goto_18

    :cond_2f
    move v0, v11

    :goto_18
    if-eqz v0, :cond_30

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    const-wide/32 v1, 0xdbba0

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_19

    :cond_30
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    const-wide/32 v1, 0x1b7740

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_19
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOn:Z

    if-nez v0, :cond_31

    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    if-nez v0, :cond_31

    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    if-nez v0, :cond_31

    goto/16 :goto_26

    :cond_31
    iget-boolean v1, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    const-string v2, "8985"

    const-string v3, "8986"

    const-string/jumbo v4, "phone"

    if-eqz v0, :cond_35

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_32

    goto :goto_1a

    :cond_32
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_33

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_33
    :goto_1a
    move v0, v12

    goto :goto_1b

    :cond_34
    move v0, v11

    :goto_1b
    if-nez v0, :cond_39

    :cond_35
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v0, :cond_3d

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_36

    goto :goto_1c

    :cond_36
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_37

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_37
    move v0, v12

    goto :goto_1d

    :cond_38
    :goto_1c
    move v0, v11

    :goto_1d
    if-eqz v0, :cond_3d

    :cond_39
    invoke-static {v13}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mcheckActiveNet(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {v13}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mcheckGoogleNetwork(Lcom/android/server/alarm/GmsAlarmManager;)I

    move-result v0

    const-string/jumbo v2, "[GMS-CORE] China or hongkong mode and google network return: "

    invoke-static {v0, v2, v10}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_3b

    const/16 v2, 0xcc

    if-eq v0, v2, :cond_3b

    const/16 v2, 0x12e

    if-ne v0, v2, :cond_3a

    goto :goto_1e

    :cond_3a
    iput-boolean v11, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    goto :goto_1f

    :cond_3b
    :goto_1e
    iput-boolean v12, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    goto :goto_1f

    :cond_3c
    iput-boolean v11, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    goto :goto_1f

    :cond_3d
    iput-boolean v12, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    :goto_1f
    invoke-static {v13}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mcheckActiveNet(Lcom/android/server/alarm/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    if-eqz v0, :cond_3e

    const-string/jumbo v0, "[GMS-CORE] net work google can net"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {v13, v0, v12}, Lcom/android/server/alarm/GmsAlarmManager;->setUrlFirewallRule(Ljava/util/ArrayList;Z)V

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_24

    :cond_3e
    const-string/jumbo v0, "[GMS-CORE] net work google no net"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v13, Lcom/android/server/alarm/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v0, v11

    :goto_20
    if-ge v0, v3, :cond_43

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v0, "[GMS-CORE] parseHostAndSetUrlFirewallRule host = "

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    move v4, v11

    :goto_21
    array-length v9, v0

    if-ge v4, v9, :cond_3f

    aget-object v9, v0, v4

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    aget-object v14, v0, v4

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v12

    goto :goto_21

    :catch_9
    move-exception v0

    goto :goto_22

    :cond_3f
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v0, v4, :cond_40

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_41

    :cond_40
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {v13, v0, v12}, Lcom/android/server/alarm/GmsAlarmManager;->setUrlFirewallRule(Ljava/util/ArrayList;Z)V

    invoke-virtual {v13, v6, v11}, Lcom/android/server/alarm/GmsAlarmManager;->setUrlFirewallRule(Ljava/util/ArrayList;Z)V

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_9

    goto :goto_23

    :goto_22
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    :cond_41
    :goto_23
    move v0, v5

    goto :goto_20

    :cond_42
    const-string/jumbo v0, "[GMS-CORE] no net work"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {v13, v0, v12}, Lcom/android/server/alarm/GmsAlarmManager;->setUrlFirewallRule(Ljava/util/ArrayList;Z)V

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_43
    :goto_24
    iput-boolean v11, v13, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    if-eqz v1, :cond_44

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    goto :goto_25

    :cond_44
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    :goto_25
    iget-boolean v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    if-nez v0, :cond_45

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    goto :goto_26

    :cond_45
    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, v13, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    :cond_46
    :goto_26
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xe15f73b -> :sswitch_2
        0x3cdd985c -> :sswitch_1
        0x6677fade -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
