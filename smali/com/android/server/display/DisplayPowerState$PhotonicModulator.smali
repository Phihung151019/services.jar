.class public final Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mActualBacklight:F

.field public mActualSdrBacklight:F

.field public mActualState:I

.field public mBacklightChangeInProgress:Z

.field public final mLock:Ljava/lang/Object;

.field public mPendingBacklight:F

.field public mPendingSdrBacklight:F

.field public mPendingState:I

.field public mStateChangeInProgress:Z

.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    const-string/jumbo p1, "PhotonicModulator"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingSdrBacklight:F

    iput p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualSdrBacklight:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    iget v3, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iget v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:F

    iget v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingSdrBacklight:F

    iget v7, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:F

    cmpl-float v7, v5, v7

    if-nez v7, :cond_3

    iget v7, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualSdrBacklight:F

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move v7, v4

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_10

    :cond_3
    :goto_2
    move v7, v0

    :goto_3
    if-nez v3, :cond_4

    iget-object v8, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    sget-boolean v9, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    iget-object v9, v8, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Lcom/android/server/display/DisplayPowerState$4;

    iget-object v8, v8, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    :cond_4
    if-nez v7, :cond_5

    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    :cond_5
    if-eqz v2, :cond_6

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_6

    move v8, v0

    goto :goto_4

    :cond_6
    move v8, v4

    :goto_4
    if-nez v3, :cond_8

    if-eqz v7, :cond_7

    goto :goto_5

    :cond_7
    move v3, v4

    goto :goto_6

    :cond_8
    :goto_5
    move v3, v0

    :goto_6
    if-eqz v8, :cond_19

    if-nez v3, :cond_9

    goto/16 :goto_d

    :cond_9
    iput v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    iput v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:F

    iput v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualSdrBacklight:F

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v1, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    if-eqz v1, :cond_a

    const-string v1, "DisplayPowerState"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Updating screen state: id="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    iget v7, v7, Lcom/android/server/display/DisplayPowerState;->mDisplayId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", state="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", backlight="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", sdrBacklight="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    iget-object v3, v1, Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    iget v1, v1, Lcom/android/server/display/DisplayPowerState;->mDisplayId:I

    check-cast v3, Lcom/android/server/display/DisplayManagerService$1;

    iget-object v7, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v7, v7, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v7

    :try_start_1
    iget-object v8, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v8, v8, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v8

    const/4 v9, -0x1

    if-le v8, v9, :cond_12

    iget-object v9, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v9, v9, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    if-eq v2, v9, :cond_b

    move v9, v0

    goto :goto_7

    :cond_b
    move v9, v4

    :goto_7
    if-eqz v9, :cond_10

    iget-object v10, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v10, v10, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    move v12, v0

    move v13, v12

    move v11, v4

    :goto_8
    if-ge v11, v10, :cond_11

    if-ne v11, v8, :cond_c

    move v14, v2

    goto :goto_9

    :cond_c
    iget-object v14, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v14, v14, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    :goto_9
    if-eq v14, v0, :cond_d

    move v12, v4

    :cond_d
    invoke-static {v14}, Landroid/view/Display;->isActiveState(I)Z

    move-result v14

    if-eqz v14, :cond_e

    move v13, v4

    :cond_e
    if-nez v12, :cond_f

    if-nez v13, :cond_f

    goto :goto_a

    :cond_f
    add-int/2addr v11, v0

    goto :goto_8

    :catchall_1
    move-exception p0

    goto :goto_c

    :cond_10
    move v12, v0

    move v13, v12

    :cond_11
    :goto_a
    move v4, v9

    goto :goto_b

    :cond_12
    move v12, v0

    move v13, v12

    :goto_b
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v2, v0, :cond_13

    iget-object v7, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v7, v1, v2, v5, v6}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mrequestDisplayStateInternal(Lcom/android/server/display/DisplayManagerService;IIFF)V

    :cond_13
    if-eqz v4, :cond_14

    iget-object v7, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v7, v7, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v7, v13, v12}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onDisplayStateChange(ZZ)V

    :cond_14
    if-nez v1, :cond_15

    if-eqz v4, :cond_15

    iget-object v4, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v4, v4, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v4, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onDefaultDisplayStateChange(I)V

    :cond_15
    if-eq v2, v0, :cond_16

    iget-object v4, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v4, v1, v2, v5, v6}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mrequestDisplayStateInternal(Lcom/android/server/display/DisplayManagerService;IIFF)V

    :cond_16
    if-eqz v1, :cond_17

    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz v4, :cond_18

    if-ne v1, v0, :cond_18

    :cond_17
    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda17;

    invoke-direct {v3, v1, v2}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/display/DisplayPowerController;I)V

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_18
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DISPLAY_STATE_CONCURRENCY:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "DisplayPowerState"

    const-string/jumbo v0, "Photonic modulator thread is interrupted"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :goto_c
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_19
    :goto_d
    :try_start_3
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_f

    :catch_0
    :try_start_5
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    iget-boolean v2, v2, Lcom/android/server/display/DisplayPowerState;->mStopped:Z

    if-eqz v2, :cond_1a

    monitor-exit v1

    :goto_e
    return-void

    :cond_1a
    :goto_f
    monitor-exit v1

    goto/16 :goto_0

    :goto_10
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method
