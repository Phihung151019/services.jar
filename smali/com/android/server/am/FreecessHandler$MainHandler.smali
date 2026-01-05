.class public final Lcom/android/server/am/FreecessHandler$MainHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public extras:Landroid/os/Bundle;

.field public final mFreecessController:Lcom/android/server/am/FreecessController;

.field public final synthetic this$0:Lcom/android/server/am/FreecessHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessHandler;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->this$0:Lcom/android/server/am/FreecessHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object p1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iput-object p1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    return-void
.end method


# virtual methods
.method public final handleFreecessResetAllState()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    const-string/jumbo v1, "reason"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "FreecessController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "!@*** unFreezeAllPackages for watchdog : Start reset all state unfreezing!!! - MARs FW Side (reason: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SoftReset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4, v1, v4}, Lcom/android/server/am/FreecessController;->sendFreecessMsg2kernel(IIII)I

    move-result v1

    if-lez v1, :cond_2

    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    const-string p0, "FreecessController"

    const-string/jumbo v1, "cleanPacketMonitoredUids Exception"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string/jumbo p0, "ShutDown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "FreecessController"

    const-string/jumbo v1, "shutting down. Now remove ALL bg fz trigger msg."

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    :goto_3
    const-string p0, "FreecessController"

    const-string v1, "!@*** unFreezeAllPackages for watchdog : End reset all state unfreezing!!! - MARs FW Side (reason: "

    const-string v2, ")"

    invoke-static {v1, v0, v2, p0}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final handleFreecessSettlementPackage()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string/jumbo v1, "packageName"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "userId"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "packetMonitorFlag"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "disableWakelockFlag"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v7, "isLcdOnTrigger"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v9, "unrestrictJobs"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v7, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7, v2, v8}, Lcom/android/server/am/MARsPolicyManager;->restrictJobsByUid(IZ)V

    :cond_1
    const/4 v7, 0x3

    const/4 v9, 0x1

    if-eqz v4, :cond_5

    if-eq v4, v9, :cond_2

    goto :goto_4

    :cond_2
    iget-object v4, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {v4, v7, v3, v8, v2}, Lcom/android/server/am/FreecessController;->sendFreecessMsg2kernel(IIII)I

    move-result v7

    if-lez v7, :cond_4

    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v7

    :try_start_0
    iget-object v1, v4, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v4, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    monitor-exit v7

    goto :goto_4

    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    const-string/jumbo v7, "RegException"

    invoke-virtual {v4, v1, v0, v7}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {v1, v7, v3, v9, v2}, Lcom/android/server/am/FreecessController;->sendFreecessMsg2kernel(IIII)I

    move-result v4

    if-lez v4, :cond_7

    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v4

    :try_start_1
    iget-object v7, v1, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v1, v1, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_6
    :goto_2
    monitor-exit v4

    goto :goto_4

    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_7
    const-string v1, "FreecessController"

    const-string/jumbo v4, "deletePacketMonitoredUid Exception"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    if-eq v5, v3, :cond_e

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    if-ne v5, v9, :cond_8

    move v8, v9

    :cond_8
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-nez v1, :cond_9

    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, p0, Lcom/android/server/am/FreecessController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    :cond_9
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1, v2, v8}, Landroid/os/PowerManagerInternal;->setWakeLockEnableDisable(IZ)I

    move-result v1

    if-ne v1, v9, :cond_b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_a

    const-string/jumbo v1, "disable"

    goto :goto_5

    :cond_a
    const-string/jumbo v1, "enable"

    :goto_5
    const-string v3, " frozen app ("

    const-string v4, ","

    invoke-static {p0, v1, v3, v0, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ") wakelock."

    const-string v1, "FreecessController"

    invoke-static {v2, v0, v1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void

    :cond_b
    const/4 v3, 0x2

    if-ne v1, v3, :cond_e

    const-string/jumbo v1, "Wakelock"

    if-eqz v6, :cond_d

    iget-boolean v3, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-eqz v3, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    sget-object v3, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-virtual {v3, v2}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_6
    return-void
.end method

.method public final handleFreezeStateChanged()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    const-string/jumbo v1, "enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "uid"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mAlarmManagerInternal:Lcom/android/server/alarm/AlarmManagerService$LocalService;

    if-nez v2, :cond_0

    const-class v2, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mAlarmManagerInternal:Lcom/android/server/alarm/AlarmManagerService$LocalService;

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mAlarmManagerInternal:Lcom/android/server/alarm/AlarmManagerService$LocalService;

    iget-object v3, v2, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, v2, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    if-nez v0, :cond_3

    iget-object v3, v2, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v2, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "Sending alarms blocked by MARsFreecess for uid "

    const-string v6, "AlarmManager"

    invoke-static {v1, v5, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v5, v2, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v4}, Lcom/android/server/alarm/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(JLjava/util/ArrayList;)V

    :cond_2
    :goto_0
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    if-eqz v2, :cond_5

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    if-nez v2, :cond_4

    const-string/jumbo v2, "location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    if-eqz p0, :cond_5

    invoke-interface {p0, v0, v1}, Landroid/location/ILocationManager;->onFreezeStateChanged(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_3
    const-string v2, "FreecessController"

    const-string v3, "Error occurred while setLRs("

    const-string v4, ", "

    const-string v5, "): "

    invoke-static {v1, v3, v4, v5, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public final handleLcdOnFreeze()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_0

    const-string v0, "FreecessHandler"

    const-string/jumbo v1, "handleLcdOnFreeze\'s extra is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v2, "uid"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v1, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "packageName"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v1, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v1, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "type"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {v2, v5, v6, v1, v9}, Lcom/android/server/am/FreecessController;->freeze(IIILjava/lang/String;)Lcom/android/server/am/FreezeResult;

    move-result-object v15

    const-string v1, "FreecessHandler"

    const-string/jumbo v2, "freeze "

    const-string v4, "("

    const-string v7, ") result : "

    invoke-static {v5, v2, v9, v4, v7}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lcom/android/server/am/FreezeResult;->getKey()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/am/FreezeResult;->FREEZE_SUCCESS:Lcom/android/server/am/FreezeResult;

    if-ne v15, v1, :cond_1

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    const-string v1, "FRZ"

    const-string v2, "Bg "

    const-string v3, " "

    invoke-static {v5, v2, v9, v3}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v1, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_EXCLUDE_LIST:Lcom/android/server/am/FreezeResult;

    if-eq v15, v1, :cond_6

    sget-object v1, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_NOT_TARGET:Lcom/android/server/am/FreezeResult;

    if-eq v15, v1, :cond_6

    sget-object v1, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_DISABLE:Lcom/android/server/am/FreezeResult;

    if-eq v15, v1, :cond_6

    sget-object v1, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_ALREADY_FROZEN:Lcom/android/server/am/FreezeResult;

    if-eq v15, v1, :cond_6

    sget-object v1, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_NO_RUNNING_PROCESS:Lcom/android/server/am/FreezeResult;

    if-eq v15, v1, :cond_6

    sget-object v1, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_SCREEN_STATE_MISMATCH:Lcom/android/server/am/FreezeResult;

    if-ne v15, v1, :cond_2

    goto :goto_5

    :cond_2
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {v2, v5}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v3, v2, Lcom/android/server/am/FreecessPkgStatus;->latestProcState:I

    :cond_3
    move/from16 v16, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v1, Lcom/android/server/am/mars/EventRecorder;->mFeatureEnable:Z

    sget-object v1, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/android/server/am/mars/EventRecorder;->mFeatureEnable:Z

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-object v2, v1, Lcom/android/server/am/mars/EventRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, v1, Lcom/android/server/am/mars/EventRecorder;->mPendingWrite:Ljava/util/ArrayDeque;

    new-instance v10, Lcom/android/server/am/mars/events/FreezeSkipEvent;

    sget-object v11, Lcom/android/server/am/mars/events/EventType;->FREEZE_SKIP_SCREEN_ON:Lcom/android/server/am/mars/events/EventType;

    invoke-direct/range {v10 .. v16}, Lcom/android/server/am/mars/events/FreezeSkipEvent;-><init>(Lcom/android/server/am/mars/events/EventType;Ljava/lang/Integer;JLcom/android/server/am/FreezeResult;I)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/android/server/am/mars/EventRecorder;->mPendingWrite:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    const/16 v4, 0xfa

    if-le v3, v4, :cond_5

    invoke-virtual {v1, v13, v14}, Lcom/android/server/am/mars/EventRecorder;->performWriteAsync(J)V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_5
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    iget-object v4, v0, Lcom/android/server/am/FreecessHandler$MainHandler;->this$0:Lcom/android/server/am/FreecessHandler;

    sget-wide v7, Lcom/android/server/am/FreecessHandler;->mScreenOnQuickFreezeCheckDelay:J

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/FreecessHandler;->triggerScreenOnFreezeWithDelay(IIJLjava/lang/String;)V

    return-void

    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_6
    :goto_5
    const-string v0, "FreecessHandler"

    const-string/jumbo v1, "stop trying to freeze "

    invoke-static {v1, v9, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x17

    const-wide/16 v4, 0x3a98

    const/16 v6, 0x16

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eq v2, v6, :cond_1b

    if-eq v2, v3, :cond_14

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unexpected value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-eqz v1, :cond_25

    const-string/jumbo p1, "packageName"

    invoke-virtual {v1, p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "reason"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p1, :cond_25

    if-eq v0, v8, :cond_25

    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(ILjava/lang/String;Z)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getRequestFocusPkg()Ljava/lang/String;

    move-result-object v7

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1, v7}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    const-string/jumbo v0, "has Focus"

    invoke-virtual {p0, p1, v7, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->cancelCalmMode()V

    return-void

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleRepeatCalmMode()V

    return-void

    :pswitch_4
    if-eqz v1, :cond_25

    const-string/jumbo p1, "list"

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->triggerCalmMode(Ljava/util/ArrayList;)V

    return-void

    :pswitch_5
    if-eqz v1, :cond_25

    const-string/jumbo p1, "packageName"

    const-string v0, ""

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v0, "uid"

    invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "reason"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->unFreezeSpecialPackage(ILjava/lang/String;)V

    return-void

    :pswitch_6
    if-eqz v1, :cond_25

    const-string/jumbo p1, "packageName"

    const-string v0, ""

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/FreecessController;->deleteRemovedPackage(ILjava/lang/String;)V

    return-void

    :pswitch_7
    if-eqz v1, :cond_25

    const-string/jumbo p1, "packageName"

    const-string v0, ""

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    const-string v2, "FreecessController"

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v3, v3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    invoke-virtual {v3, v0}, Lcom/android/server/am/FreecessController$UidPidMap;->getPidList(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->canUidBeFrozen(Ljava/util/ArrayList;)Lcom/android/server/am/FreezeResult;

    move-result-object v0

    sget-object v3, Lcom/android/server/am/FreezeResult;->FREEZE_SUCCESS:Lcom/android/server/am/FreezeResult;

    if-eq v3, v0, :cond_25

    const-string/jumbo v3, "unfreeze "

    const-string v4, "("

    invoke-static {v3, p1, v4}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")in postMonitoringFrozenProcs. reason : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/am/FreezeResult;->getKey()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PostMonitor-"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/am/FreezeResult;->getKey()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const-string/jumbo p0, "postMonitoringFrozenProcs: u="

    const-string p1, " is not frozen, return."

    invoke-static {v0, p0, p1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleFreezeStateChanged()V

    return-void

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleUnfreezeActivePackages()V

    return-void

    :pswitch_a
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, ":"

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v4, "/data/system/ssrm_local_freecess"

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x2

    if-le v4, v5, :cond_3

    aget-object v4, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, ""

    if-eqz v4, :cond_4

    :try_start_2
    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    :cond_4
    move-object v4, v6

    :goto_2
    aget-object v7, v2, v0

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    move-object v7, v6

    :goto_3
    aget-object v2, v2, v5

    if-eqz v2, :cond_6

    move-object v6, v2

    :cond_6
    const-string v2, "ALL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "Enhance_Switch"

    const-string/jumbo v8, "Switch"

    const-string v9, "@"

    const-string/jumbo v10, "WL"

    const-string v11, "1"

    if-eqz v2, :cond_c

    :try_start_3
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v6, v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_4
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    if-eqz v6, :cond_7

    iget-object v7, p0, Lcom/android/server/am/FreecessController;->mFreezeExemption:Ljava/util/Set;

    check-cast v7, Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/server/am/FreecessController;->mFreezeExemption:Ljava/util/Set;

    invoke-static {v6}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    check-cast v7, Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/2addr v5, v0

    goto :goto_4

    :cond_8
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v2, :cond_9

    move v2, v0

    goto :goto_5

    :cond_9
    move v2, v3

    :goto_5
    invoke-virtual {p0, v2}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    if-eqz v2, :cond_b

    move v2, v0

    goto :goto_6

    :cond_b
    move v2, v3

    :goto_6
    iput-boolean v2, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    goto/16 :goto_1

    :cond_c
    sget-object v2, Lcom/android/server/am/FreecessController;->sCountry:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezeExemption:Ljava/util/Set;

    if-eqz v2, :cond_3

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v6, v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_7
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    if-eqz v6, :cond_d

    iget-object v7, p0, Lcom/android/server/am/FreecessController;->mFreezeExemption:Ljava/util/Set;

    check-cast v7, Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/android/server/am/FreecessController;->mFreezeExemption:Ljava/util/Set;

    invoke-static {v6}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    check-cast v7, Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/2addr v5, v0

    goto :goto_7

    :cond_e
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v2, :cond_f

    move v2, v0

    goto :goto_8

    :cond_f
    move v2, v3

    :goto_8
    invoke-virtual {p0, v2}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    if-eqz v2, :cond_11

    move v2, v0

    goto :goto_9

    :cond_11
    move v2, v3

    :goto_9
    iput-boolean v2, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_12
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_13

    :goto_a
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "e = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "FreecessController"

    invoke-static {p0, p1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_13

    :pswitch_b
    if-eqz v1, :cond_25

    const-string/jumbo p1, "type"

    invoke-virtual {v1, p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    iput-boolean v3, p0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    iput-boolean v3, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->setFreecessEnableForSpecificReason(IZ)V

    return-void

    :pswitch_c
    iget-object p1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p1, v8, v3}, Lcom/android/server/am/FreecessController;->restrictJobsByOlaf(IZ)V

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    const-string/jumbo p1, "timeout"

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->unFreezeForOLAF(Ljava/lang/String;)V

    return-void

    :pswitch_d
    if-eqz v1, :cond_25

    const-string/jumbo p1, "enterFlag"

    invoke-virtual {v1, p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    if-eqz p1, :cond_13

    invoke-virtual {p0, v2, v0}, Lcom/android/server/am/FreecessController;->restrictJobsByOlaf(IZ)V

    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFreecessOlafUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object v1, p0, Lcom/android/server/am/FreecessController;->mOlafTargetPkg:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/FreecessController;->mOlafTargetUserId:I

    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/FreecessController;->triggerOLAF(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/FreecessController;->mFreecessOlafUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object v7, p0, Lcom/android/server/am/FreecessController;->mOlafTargetPkg:Ljava/lang/String;

    const/16 p1, -0xa

    iput p1, p0, Lcom/android/server/am/FreecessController;->mOlafTargetUserId:I

    return-void

    :cond_13
    const-string p1, "Force"

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->unFreezeForOLAF(Ljava/lang/String;)V

    invoke-virtual {p0, v8, v3}, Lcom/android/server/am/FreecessController;->restrictJobsByOlaf(IZ)V

    return-void

    :pswitch_e
    if-eqz v1, :cond_25

    const-string/jumbo p1, "uid"

    invoke-virtual {v1, p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v3, v3}, Lcom/android/server/am/FreecessController;->sendFreecessMsg2kernel(IIII)I

    move-result p1

    if-gez p1, :cond_25

    const-string p1, "FBException"

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    return-void

    :pswitch_f
    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleFreecessSettlementPackage()V

    return-void

    :pswitch_10
    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleFreecessResetAllState()V

    return-void

    :pswitch_11
    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler$MainHandler;->handleLcdOnFreeze()V

    return-void

    :cond_14
    if-eqz v1, :cond_25

    const-string/jumbo p1, "uid"

    invoke-virtual {v1, p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v0, "delay"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    sget-object p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    const-string/jumbo v0, "mSlientAudioApp has "

    const-string/jumbo v1, "SILENT:"

    const-string v2, " endCheckSilentAudio result :"

    iget-object v3, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    if-nez v3, :cond_15

    goto/16 :goto_13

    :cond_15
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v3, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    monitor-enter v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    iget-object v6, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    :catchall_2
    move-exception p0

    goto/16 :goto_f

    :cond_16
    :goto_c
    iget-object v6, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    monitor-exit v3

    goto/16 :goto_13

    :cond_17
    iget-object v6, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    iget-object v3, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->SILENT_AUDIO_PREX:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v8, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v8, :cond_18

    const-string v8, "ActiveMusicRecordFilter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " check time:"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    monitor-enter v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :try_start_a
    const-string/jumbo v8, "true"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    cmp-long v3, v8, v4

    if-ltz v3, :cond_1a

    iget-object v3, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    const-string v4, "DEV"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :catchall_3
    move-exception p0

    goto :goto_e

    :cond_19
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_1a
    :goto_d
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p1, :cond_25

    const-string p1, "ActiveMusicRecordFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_13

    :goto_e
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    :goto_f
    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    :catch_1
    move-exception p0

    const-string p1, "ActiveMusicRecordFilter"

    const-string v0, " endCheckSilentAudio exception :"

    invoke-static {p0, v0, p1}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_1b
    if-eqz v1, :cond_25

    const-string/jumbo p1, "uid"

    invoke-virtual {v1, p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v0, "packageName"

    invoke-virtual {p0, v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    const-string/jumbo v1, "put "

    const-string v2, " startCheckSilentAudio :"

    iget-object v6, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    if-nez v6, :cond_1c

    goto/16 :goto_13

    :cond_1c
    iget-object v6, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    monitor-enter v6

    :try_start_10
    iget-object v7, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    monitor-exit v6

    return-void

    :catchall_4
    move-exception p0

    goto/16 :goto_12

    :cond_1d
    monitor-exit v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    iget-object v6, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mActiveMusicRecordPkgs:Landroid/util/ArrayMap;

    if-eqz v6, :cond_1e

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1e

    iget-object v6, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mActiveMusicRecordPkgs:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    :cond_1e
    invoke-virtual {v0, p1, p0}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->isUsingAudio(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    :cond_1f
    iget-object v6, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    monitor-enter v6

    :try_start_11
    sget-boolean v7, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v7, :cond_20

    const-string v7, "ActiveMusicRecordFilter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :catchall_5
    move-exception p0

    goto/16 :goto_11

    :cond_20
    :goto_10
    iget-object v2, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_21
    iget-object v2, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v2, :cond_22

    const-string v2, "ActiveMusicRecordFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to check at : "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    monitor-exit v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    iget-object v1, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->SILENT_AUDIO_PREX:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget-object v1, v0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v1, :cond_23

    goto :goto_13

    :cond_23
    invoke-virtual {v1, v3, p0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_13

    :cond_24
    iget-object v1, v0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v1, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-string/jumbo v2, "packageName"

    const-string/jumbo v3, "uid"

    invoke-static {p1, v2, p0, v3}, Lcom/android/server/am/FreecessHandler$MainHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "delay"

    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v1, p0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, v0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :goto_11
    :try_start_12
    monitor-exit v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    throw p0

    :goto_12
    :try_start_13
    monitor-exit v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    throw p0

    :cond_25
    :goto_13
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public final handleRepeatCalmMode()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string/jumbo v1, "packageName"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "userId"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "reason"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v4, v2}, Lcom/android/server/am/FreecessController;->freezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/am/FreecessHandler;->sendCalmModeRepeatMsg(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final handleUnfreezeActivePackages()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    const-string/jumbo v1, "reason"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->mFreecessController:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "screenOn-widget"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget-object v3, v3, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    move v4, v2

    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/FreecessPkgStatus;

    sget-object v6, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPkgFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    iget-object v7, v5, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v8, v5, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v9, v5, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const/16 v10, 0xe

    invoke-virtual {v6, v8, v9, v10, v7}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->filter(IIILjava/lang/String;)I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {p0, v5, v0, v2}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget-object v3, v3, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    move v4, v2

    :goto_3
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/FreecessPkgStatus;

    iget-object v6, v5, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v6, v6, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    iget v7, v5, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v6, v7}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0, v5, v0, v2}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    monitor-exit v1

    return-void

    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_5
    return-void
.end method
