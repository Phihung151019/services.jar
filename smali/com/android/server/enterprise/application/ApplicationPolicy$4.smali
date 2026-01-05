.class public final Lcom/android/server/enterprise/application/ApplicationPolicy$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    :try_start_0
    const-string/jumbo v2, "networkInfo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    if-eqz v1, :cond_4

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy$15;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "Connected"

    const-string v4, "Disconnected"

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    const/4 v6, 0x2

    if-eq v2, v6, :cond_0

    :try_start_1
    const-string/jumbo v2, "Unknown"

    goto :goto_0

    :cond_0
    move-object v2, v4

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    iget-object v6, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "mobile"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iput v5, v4, Landroid/os/Message;->arg1:I

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    iput v5, v4, Landroid/os/Message;->arg1:I

    :goto_1
    iget-object v5, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    iget-object v5, v5, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->datausageHandler:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void

    :pswitch_0
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v5

    if-eqz v3, :cond_11

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_11

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_11

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string/jumbo v12, "mHandler must not be null!"

    const/4 v6, 0x0

    const-string v13, "ApplicationPolicy"

    if-eqz v4, :cond_9

    :try_start_3
    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v4, v4, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v4

    const-string/jumbo v8, "android.intent.extra.REPLACING"

    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    :goto_4
    if-ge v6, v15, :cond_7

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v16, v6, 0x1

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v6, v9}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iget-object v8, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v8, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/application/ManagedAppInfo;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string/jumbo v8, "applicationUninstallationCount"

    invoke-virtual {v6, v9, v7, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V

    if-nez v14, :cond_6

    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isSystemApp(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;Ljava/lang/String;IIZ)Z

    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/high16 v10, 0x1000000

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;Ljava/lang/String;IIZ)Z

    const-string v6, "App removed, clear masks"

    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move/from16 v6, v16

    goto :goto_4

    :cond_7
    if-nez v14, :cond_10

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$misDualApp(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v4, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_8

    const/4 v6, 0x1

    invoke-static {v4, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string/jumbo v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$misDualApp(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v1, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isSystemApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v4, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_a

    invoke-static {v4, v6, v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const-string/jumbo v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v4, v4, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v6

    :cond_c
    :goto_5
    if-ge v9, v8, :cond_d

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iget-object v14, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v14, Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v14, v11, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/application/ManagedAppInfo;

    move-result-object v11

    if-eqz v11, :cond_c

    iget-object v11, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string/jumbo v14, "applicationInstallationCount"

    invoke-virtual {v11, v10, v7, v14}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V

    const-string v10, "App install count incremented"

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_d
    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v4, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isSystemApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v4, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateSystemAppDisableState(Ljava/lang/String;)V

    :cond_e
    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$misDualApp(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v4, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_f

    invoke-static {v4, v6, v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_6
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v0, v7, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mgetProvidersFromPackage(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(ILjava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11
    :goto_7
    return-void

    :pswitch_1
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$menablePreventStart(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/server/enterprise/application/ProcessStats;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    invoke-virtual {v1}, Lcom/android/server/enterprise/application/ProcessStats;->update()V

    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "content://com.sec.knox.provider2/ApplicationPolicy/getPackagesFromDisableClipboardBlackList"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "content://com.sec.knox.provider2/ApplicationPolicy/getPackagesFromDisableClipboardWhiteList"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void

    :pswitch_2
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateSystemUIMonitor()V

    :cond_12
    return-void

    :pswitch_3
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBootCompleted:Z

    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    goto :goto_8

    :cond_13
    return-void

    :pswitch_4
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    if-eqz v2, :cond_18

    move-object v3, v2

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_a

    :cond_14
    const-string/jumbo v3, "android.intent.extra.user_handle"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-int v6, v4

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne v1, v7, :cond_15

    iget-object v7, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v7, v7, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    check-cast v7, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    iget-object v8, v7, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    if-nez v8, :cond_16

    iget-object v8, v7, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    iput-object v8, v7, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    :cond_16
    iget-object v7, v7, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    invoke-virtual {v7, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    if-eqz v7, :cond_17

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_17

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_17
    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mstartCachedAppsForActiveUser(Lcom/android/server/enterprise/application/ApplicationPolicy;JI)V

    goto :goto_9

    :cond_18
    :goto_a
    return-void

    :pswitch_5
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string/jumbo v2, "android.intent.extra.user_handle"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onUserRemoved() userId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApplicationPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "content://com.sec.knox.provider2/ApplicationPolicy/getPackagesFromDisableClipboardBlackList"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "content://com.sec.knox.provider2/ApplicationPolicy/getPackagesFromDisableClipboardWhiteList"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_19
    return-void

    :pswitch_6
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$menablePreventStart(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    const-string/jumbo v2, "android.intent.extra.user_handle"

    const/16 v3, -0x2710

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "ApplicationPolicy"

    if-eq v1, v3, :cond_1a

    const-string/jumbo v3, "calling refreshWidgetStatus for userId "

    invoke-static {v1, v3, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    goto :goto_b

    :cond_1a
    const-string/jumbo v0, "could not call refreshWidgetStatus due to USER_NULL userId "

    invoke-static {v1, v0, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1b
    :goto_b
    return-void

    :pswitch_7
    const-string/jumbo v2, "mInstallReceiver - packageName = "

    const-string/jumbo v3, "mInstallReceiver - sessionId = "

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onReceive - mInstallReceiver "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1d

    const-string/jumbo v4, "com.samsung.android.knox.intent.action.INSTALL_COMMIT_INTERNAL"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v4, v4, Lcom/android/server/enterprise/application/ApplicationPolicy;->mInstallAppLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    const-string/jumbo v5, "android.content.pm.extra.SESSION_ID"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v3, v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mInstallMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;

    if-eqz v3, :cond_1c

    iput v5, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mSessionId:I

    const-string/jumbo v6, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mPackageName:Ljava/lang/String;

    const-string/jumbo v6, "android.content.pm.extra.STATUS"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mStatusCode:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", statusCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mStatusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mInstallMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mInstallAppLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_c

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_1c
    :goto_c
    monitor-exit v4

    goto :goto_e

    :goto_d
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_1d
    :goto_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
