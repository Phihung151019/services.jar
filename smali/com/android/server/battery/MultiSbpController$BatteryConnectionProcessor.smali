.class public final Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mBattCallback:Lcom/android/server/BatteryService$BattCallbackImpl;

.field public final mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

.field public final mHandler:Landroid/os/Handler;

.field public final mNoBatteryModeObserver:Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;

.field public mPreviousHotSwapCmd:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;Lcom/android/server/BatteryService$BattCallbackImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->DO_NOTHING:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    iput-object v0, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mPreviousHotSwapCmd:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    iput-object p1, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mNoBatteryModeObserver:Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;

    iput-object p0, p2, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mCallback:Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;

    iput-object p3, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    iput-object p4, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBattCallback:Lcom/android/server/BatteryService$BattCallbackImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    invoke-virtual {v1}, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->check()V

    iget-object v1, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    iget v2, v1, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mCurrentConnections:I

    const/4 v3, -0x1

    const-string/jumbo v4, "[SS]MultiSbpController.BatteryConnectionProcessor"

    if-ne v2, v3, :cond_0

    const-string/jumbo p0, "run wrong battery connection value"

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v5, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->DO_NOTHING:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    iget-object v6, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mNoBatteryModeObserver:Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;

    iget-object v6, v6, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mMode:Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver$Mode;

    sget-object v7, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver$Mode;->ENABLED:Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver$Mode;

    if-eq v6, v7, :cond_3

    sget-object v7, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver$Mode;->ENABLED_TEMPORARY:Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver$Mode;

    if-ne v6, v7, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mPreviousHotSwapCmd:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    sget-object v7, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->ON:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    if-eq v6, v7, :cond_2

    iget v8, v1, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->FULLY_CONNECTED:I

    if-ne v2, v8, :cond_5

    :cond_2
    if-ne v6, v7, :cond_4

    iget v1, v1, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->FULLY_CONNECTED:I

    if-ne v2, v1, :cond_4

    sget-object v7, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->OFF:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mPreviousHotSwapCmd:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    sget-object v2, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->ON:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    if-ne v1, v2, :cond_4

    sget-object v7, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->OFF:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    goto :goto_1

    :cond_4
    move-object v7, v5

    :cond_5
    :goto_1
    if-eq v7, v5, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "run mPreviousHotSwapCmd : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mPreviousHotSwapCmd:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " > currentHotSwapCmd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->run()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[sendBatteryConnectionChangedIntent]currentBatteryConnections:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.server.BatteryService.action.BATTERY_CONNECTION_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    iget v2, v2, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mCurrentConnections:I

    const-string/jumbo v4, "battery_connection_status"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    iget v4, v2, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mCurrentConnections:I

    iget v2, v2, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->FULLY_CONNECTED:I

    if-ne v4, v2, :cond_6

    move v2, v0

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    const-string/jumbo v4, "all_battery_connected"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v1, v3}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    iput-object v7, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mPreviousHotSwapCmd:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    :cond_7
    iget-object v1, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    iget v2, v1, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mPreviousConnections:I

    iget v1, v1, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mCurrentConnections:I

    if-eq v2, v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BatteryConnectionsChanged:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    iget v2, v2, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mPreviousConnections:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    iget v2, v2, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mCurrentConnections:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBattCallback:Lcom/android/server/BatteryService$BattCallbackImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v2, "BatteryService"

    const-string/jumbo v3, "[onBatteryConnectionChanged]"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/BatteryService$BattCallbackImpl;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, v2, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$BattCallbackImpl$1;

    invoke-direct {v3, v1, v0}, Lcom/android/server/BatteryService$BattCallbackImpl$1;-><init>(Lcom/android/server/BatteryService$BattCallbackImpl;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    iget v1, v0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mCurrentConnections:I

    iget v0, v0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->FULLY_CONNECTED:I

    if-ne v1, v0, :cond_8

    iget-object p0, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mNoBatteryModeObserver:Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;

    invoke-virtual {p0}, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->updateNoBatteryModeValue()V

    :cond_8
    return-void
.end method
