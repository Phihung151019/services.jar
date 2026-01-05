.class Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/SensitiveContentProtectionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SensitiveContentProtectionManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public final onListenerConnected()V
    .locals 4

    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    const-string/jumbo v0, "SensitiveContentProtectionManagerService.onListenerConnected"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    iget-object v0, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    iget-boolean v3, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionActive:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/SensitiveContentProtectionManagerService;->updateAppsThatShouldBlockScreenCapture()V

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    const-string/jumbo v0, "SensitiveContentProtectionManagerService.onNotificationPosted"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo p0, "SensitiveContentProtect"

    const-string/jumbo p1, "Unable to parse null notification"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    if-nez p2, :cond_1

    :try_start_1
    const-string/jumbo p0, "SensitiveContentProtect"

    const-string/jumbo p1, "Ranking map not initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    iget-object v0, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    iget-boolean v3, v3, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionActive:Z

    if-nez v3, :cond_2

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_2
    :try_start_4
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRawRankingObject(Ljava/lang/String;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/service/notification/NotificationListenerService$Ranking;->hasSensitiveContent()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz p2, :cond_4

    new-instance p2, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v5

    invoke-direct {p2, v5, v3, v4}, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;-><init>(ILandroid/os/IBinder;Ljava/lang/String;)V

    move-object v3, p2

    :cond_4
    if-eqz v3, :cond_5

    iget-object p2, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    iget-object p2, p2, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v4, Landroid/util/ArraySet;

    invoke-static {v3}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, v4}, Lcom/android/server/wm/WindowManagerInternal;->addBlockScreenCaptureForApps(Landroid/util/ArraySet;)V

    :cond_5
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    if-eqz p0, :cond_7

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mAllSeenNotificationKeys:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSeenOtpNotificationKeys:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mAllSeenNotificationKeys:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    const-string/jumbo v0, "SensitiveContentProtectionManagerService.onNotificationRankingUpdate"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo p0, "SensitiveContentProtect"

    const-string/jumbo p1, "Ranking map not initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    iget-object v0, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    iget-boolean v3, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionActive:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/SensitiveContentProtectionManagerService;->updateAppsThatShouldBlockScreenCapture(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method
