.class public final Lcom/android/server/DeviceIdleController$MyHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "isStationary = "

    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "handleMessage("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Landroid/os/Message;->what:I

    const-string v7, ")"

    invoke-static {v6, v7, v4, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_0
    iget v4, v1, Landroid/os/Message;->what:I

    const v5, 0x84d8

    const v6, 0x84d6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_c

    :pswitch_1
    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    invoke-virtual {v0, v1, v7, v9, v7}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->onTempPowerSaveWhitelistChange(IILjava/lang/String;Z)V

    return-void

    :pswitch_2
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget v3, v1, Landroid/os/Message;->arg2:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    invoke-virtual {v0, v2, v3, v1, v8}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->onTempPowerSaveWhitelistChange(IILjava/lang/String;Z)V

    return-void

    :pswitch_3
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    if-ne v1, v8, :cond_1

    goto :goto_0

    :cond_1
    move v8, v7

    :goto_0
    iget-object v3, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v3

    :try_start_0
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mTempAllowlistChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v1, v0

    :goto_1
    if-ge v7, v1, :cond_13

    aget-object v3, v0, v7

    if-eqz v8, :cond_2

    invoke-interface {v3, v2}, Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;->onAppAdded(I)V

    goto :goto_2

    :cond_2
    invoke-interface {v3, v2}, Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;->onAppRemoved(I)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_4
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/deviceidle/IDeviceIdleConstraint;

    iget v1, v1, Landroid/os/Message;->arg1:I

    if-ne v1, v8, :cond_3

    invoke-interface {v0}, Lcom/android/server/deviceidle/IDeviceIdleConstraint;->startMonitoring()V

    return-void

    :cond_3
    invoke-interface {v0}, Lcom/android/server/deviceidle/IDeviceIdleConstraint;->stopMonitoring()V

    return-void

    :pswitch_5
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    return-void

    :pswitch_6
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/DeviceIdleInternal$StationaryListener;

    iget-object v4, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v4

    :try_start_2
    iget-object v3, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController;->isStationaryLocked()Z

    move-result v3

    const-string v5, "DeviceIdleController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_4

    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/server/DeviceIdleInternal$StationaryListener;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [Lcom/android/server/DeviceIdleInternal$StationaryListener;

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_4
    :goto_3
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v9, :cond_5

    array-length v0, v9

    :goto_4
    if-ge v7, v0, :cond_5

    aget-object v2, v9, v7

    invoke-interface {v2, v3}, Lcom/android/server/DeviceIdleInternal$StationaryListener;->onDeviceStationaryChanged(Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    if-eqz v1, :cond_13

    invoke-interface {v1, v3}, Lcom/android/server/DeviceIdleInternal$StationaryListener;->onDeviceStationaryChanged(Z)V

    return-void

    :goto_5
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :pswitch_7
    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    const-string/jumbo v0, "Time to remove uid "

    iget-object v4, v2, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-eqz v3, :cond_6

    const-string v7, "DeviceIdleController"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "checkTempAppWhitelistTimeout: uid="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", timeNow="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    monitor-enter v2

    :try_start_4
    iget-object v7, v2, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    if-nez v7, :cond_7

    monitor-exit v2

    return-void

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_7
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/util/MutableLong;

    iget-wide v8, v8, Landroid/util/MutableLong;->value:J

    cmp-long v8, v4, v8

    if-ltz v8, :cond_8

    iget-object v0, v2, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->delete(I)V

    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/DeviceIdleController;->onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V

    goto :goto_6

    :cond_8
    if-eqz v3, :cond_9

    const-string v3, "DeviceIdleController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/util/MutableLong;

    iget-wide v8, v0, Landroid/util/MutableLong;->value:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/util/MutableLong;

    iget-wide v6, v0, Landroid/util/MutableLong;->value:J

    sub-long/2addr v6, v4

    invoke-virtual {v2, v1, v6, v7}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    :goto_6
    monitor-exit v2

    return-void

    :goto_7
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :pswitch_8
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_a

    move-object v3, v2

    goto :goto_8

    :cond_a
    const-string/jumbo v3, "unknown"

    :goto_8
    invoke-static {v6, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v3, v3, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v3, v7}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v3

    iget-object v4, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v4, v4, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v4, v7}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v4

    :try_start_5
    iget-object v6, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v6, v6, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v6, v7}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    iget-object v6, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v6, v6, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v6, v7, v2, v1}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    if-eqz v3, :cond_b

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v3, v2, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v2, v2, Lcom/android/server/DeviceIdleController;->mIdleIntentOptions:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v6, v9, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_b
    if-eqz v4, :cond_c

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mLightIdleIntentOptions:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v9, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_c
    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_c

    :pswitch_9
    const-string/jumbo v1, "unknown"

    invoke-static {v6, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v1, v1, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1, v7}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v1

    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v2, v2, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v2, v7}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v2

    :try_start_6
    iget-object v3, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v3, v3, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v3, v7}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    iget-object v3, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v3, v3, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-interface {v3, v7, v9, v4}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v1

    :try_start_7
    iget v3, v1, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    add-int/2addr v3, v8

    iput v3, v1, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v9, v1, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    iget-object v10, v1, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    iget-object v11, v1, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Lcom/android/server/DeviceIdleController$4;

    iget-object v1, v1, Lcom/android/server/DeviceIdleController;->mIdleIntentOptions:Landroid/os/Bundle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    move-object/from16 v16, v1

    invoke-virtual/range {v9 .. v16}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    goto :goto_9

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :cond_d
    :goto_9
    if-eqz v2, :cond_e

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v1

    :try_start_9
    iget v2, v1, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    add-int/2addr v2, v8

    iput v2, v1, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v8, v1, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    iget-object v9, v1, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    iget-object v10, v1, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Lcom/android/server/DeviceIdleController$4;

    iget-object v15, v1, Lcom/android/server/DeviceIdleController;->mLightIdleIntentOptions:Landroid/os/Bundle;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-virtual/range {v8 .. v15}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    goto :goto_a

    :catchall_4
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0

    :cond_e
    :goto_a
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_c

    :pswitch_a
    new-array v2, v7, [Ljava/lang/Object;

    const v3, 0x84d3

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v2, v2, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v2, v8}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v2

    iget-object v4, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v4, v4, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v4, v7}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v4

    goto :goto_b

    :cond_f
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v2, v2, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v2, v7}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v2

    iget-object v4, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v4, v4, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v4, v8}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v4

    :goto_b
    :try_start_b
    iget-object v5, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v5, v5, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v5, v8}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    iget-object v5, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v5, v5, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v1, v1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_10

    move v8, v3

    :cond_10
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-interface {v5, v8, v9, v1}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2

    :catch_2
    if-eqz v2, :cond_11

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v3, v2, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v2, v2, Lcom/android/server/DeviceIdleController;->mIdleIntentOptions:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v5, v9, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_11
    if-eqz v4, :cond_12

    iget-object v1, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v3, v2, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v2, v2, Lcom/android/server/DeviceIdleController;->mLightIdleIntentOptions:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v4, v9, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_12
    new-array v1, v7, [Ljava/lang/Object;

    const v2, 0x84d5

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_13
    :goto_c
    return-void

    :pswitch_b
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->handleWriteConfigFile()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
