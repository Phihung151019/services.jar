.class public final Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sqd/IbsQuickDim;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    iput-object p0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v0, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v0, "com.samsung.server.PowerManagerService.action.USER_ACTIVITY"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    iput-object p0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPkgFilter:Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPkgFilter:Landroid/content/IntentFilter;

    const-string/jumbo p1, "package"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string/jumbo p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iget-object p1, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iput-boolean v2, p2, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOn:Z

    invoke-virtual {p2}, Lcom/android/server/ibs/sqd/IbsQuickDim;->quitDimMode()V

    iget-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iget-object p2, p2, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sget-boolean p2, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    if-eqz p2, :cond_0

    const-string p2, "IbsQuickDim"

    const-string/jumbo v1, "screen off "

    invoke-static {p2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iput v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const-string/jumbo p1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iput-boolean v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOn:Z

    return-void

    :cond_2
    const-string/jumbo p1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-boolean p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "IbsQuickDim"

    const-string/jumbo p2, "POWER_CONNECTED"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iput-boolean v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mCharging:Z

    return-void

    :cond_4
    const-string/jumbo p1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-boolean p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    if-eqz p1, :cond_5

    const-string p1, "IbsQuickDim"

    const-string/jumbo p2, "POWER_DISCONNECTED"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iput-boolean v2, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mCharging:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mChargingFinishTime:J

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQDPowerSave:F

    return-void

    :cond_6
    const-string/jumbo p1, "com.samsung.server.PowerManagerService.action.USER_ACTIVITY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string/jumbo p1, "status"

    const/4 v2, -0x1

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    const-string p2, "BroadcastReceiver flag = "

    iget-object v4, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    sget-boolean v5, Lcom/android/server/ibs/sqd/IbsQuickDim;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v6, "IbsQuickDim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_7
    :goto_2
    if-ne p1, v0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->removeAllmessage()V

    if-eqz v5, :cond_8

    const-string p1, "IbsQuickDim"

    const-string/jumbo p2, "PMS set dim"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iput v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    goto :goto_3

    :cond_9
    if-ne p1, v3, :cond_b

    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->quitDimMode()V

    invoke-virtual {p0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->removeAllmessage()V

    iput v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mLastFPS:I

    if-eqz v5, :cond_a

    const-string p1, "IbsQuickDim"

    const-string/jumbo p2, "pause check dim"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iput v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    :cond_b
    :goto_3
    monitor-exit v4

    return-void

    :goto_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_c
    const-string/jumbo p1, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    const-string p1, "IbsQuickDim"

    const-string/jumbo p2, "handleBootComplete"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    new-instance p2, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p2, v0, p0}, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_d
    const-string/jumbo p1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_e
    return-void
.end method
