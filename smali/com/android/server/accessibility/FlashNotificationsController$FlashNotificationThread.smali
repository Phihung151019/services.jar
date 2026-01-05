.class public final Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mColor:I

.field public final mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

.field public mForceStop:Z

.field public mShouldDoCameraFlash:Z

.field public mShouldDoScreenFlash:Z

.field public final synthetic this$0:Lcom/android/server/accessibility/FlashNotificationsController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/FlashNotificationsController;Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mColor:I

    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoScreenFlash:Z

    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoCameraFlash:Z

    iput-object p2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mForceStop:Z

    return-void
.end method


# virtual methods
.method public final delay(J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mForceStop:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long p1, v2, p1

    cmp-long v4, p1, v0

    if-gtz v4, :cond_0

    :cond_2
    :goto_0
    return-void
.end method

.method public final run()V
    .locals 6

    const-string v0, "FlashNotifController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "run started: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    iget-object v2, v2, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    iget v1, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mColor:I

    iput v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mColor:I

    iget v1, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mNotiType:I

    and-int/lit8 v2, v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v2, v4, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoScreenFlash:Z

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_1

    iget v0, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoCameraFlash:Z

    const-string v0, "FlashNotifController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mShouldDoScreenFlash: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoScreenFlash:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mShouldDoCameraFlash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoCameraFlash:Z

    invoke-static {v0, v1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iget-boolean v1, v0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoCameraFlash:Z

    if-eqz v1, :cond_2

    iput-boolean v5, v0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationRunning:Z

    const-string v0, "FlashNotifController"

    const-string/jumbo v1, "mIsCameraFlashNotificationRunning true in thread run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iget-object v0, v0, Lcom/android/server/accessibility/FlashNotificationsController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->startFlashNotification()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->doScreenFlashNotificationOff()V

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->doCameraFlashNotificationOff()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iget-object v0, v0, Lcom/android/server/accessibility/FlashNotificationsController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    :try_start_4
    const-string v0, "FlashNotifController"

    const-string v1, "Error while releasing FlashNotificationsController wakelock (already released by the system?)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iget-object v0, v0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotifications:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iget-object v1, v1, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    const/4 v2, 0x0

    if-ne v1, p0, :cond_3

    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iput-object v2, v1, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_3
    :goto_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mForceStop:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    iget-object v4, v1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mToken:Landroid/os/IBinder;

    if-eqz v4, :cond_5

    iget-object v1, v1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mDeathRecipient:Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    :try_start_6
    invoke-interface {v4, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_1
    :cond_5
    :goto_4
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iput-object v2, v1, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    :cond_6
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iput-boolean v3, v0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationRunning:Z

    const-string v0, "FlashNotifController"

    const-string/jumbo v1, "mIsCameraFlashNotificationRunning false in thread run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FlashNotifController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "run finished: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mTag:Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_5
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p0

    :catchall_2
    move-exception v0

    :try_start_9
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/FlashNotificationsController;->doScreenFlashNotificationOff()V

    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/FlashNotificationsController;->doCameraFlashNotificationOff()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iget-object v1, v1, Lcom/android/server/accessibility/FlashNotificationsController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    :catch_2
    :try_start_b
    const-string v1, "FlashNotifController"

    const-string v2, "Error while releasing FlashNotificationsController wakelock (already released by the system?)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    throw v0

    :goto_7
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0
.end method

.method public final startFlashNotification()V
    .locals 3

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mForceStop:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    iget v1, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mRepeat:I

    if-ltz v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mRepeat:I

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoScreenFlash:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iget v2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mColor:I

    iget-boolean v0, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mForceStartScreenFlash:Z

    invoke-static {v1, v2, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mdoScreenFlashNotificationOn(Lcom/android/server/accessibility/FlashNotificationsController;IZ)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoCameraFlash:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mdoCameraFlashNotificationOn(Lcom/android/server/accessibility/FlashNotificationsController;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    iget v0, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOnDuration:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->delay(J)V

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->doScreenFlashNotificationOff()V

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->doCameraFlashNotificationOff()V

    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mForceStop:Z

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    iget v0, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOffDuration:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->delay(J)V

    goto :goto_0

    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
