.class public final synthetic Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->handleBrightnessModeChange()V

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mShutdownReceiver:Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :pswitch_1
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessChangeRunnable:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :pswitch_2
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessChangeRunnable:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void

    :pswitch_3
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void

    :pswitch_4
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void

    :pswitch_5
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingOverrideDozeScreenStateLocked:I

    iput v2, v1, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverride:I

    const/4 v2, 0x3

    iput v2, v1, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverrideReason:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mOffloadDozeOverrideHoldsWakelock:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/display/WakelockController;->releaseWakelockInternal(I)Z

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_6
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setBrightnessToFollow(FFFZ)V

    return-void

    :pswitch_7
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setBrightnessToFollow(FFFZ)V

    return-void

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
