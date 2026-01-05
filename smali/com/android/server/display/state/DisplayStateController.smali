.class public final Lcom/android/server/display/state/DisplayStateController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDisplayId:I

.field public final mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

.field public mDozeStateOverride:I

.field public mDozeStateOverrideReason:I

.field public mPerformScreenOffTransition:Z

.field public final mShouldSkipScreenOffTransition:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerProximityStateController;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    iput v0, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverride:I

    iput v0, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverrideReason:I

    iput p3, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayId:I

    iput-object p1, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    iput-boolean p2, p0, Lcom/android/server/display/state/DisplayStateController;->mShouldSkipScreenOffTransition:Z

    return-void
.end method


# virtual methods
.method public final setPerformScreenOffTransition()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    return-void
.end method

.method public final shouldPerformScreenOffTransition()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    return p0
.end method

.method public final updateDisplayState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ZZ)Landroid/util/Pair;
    .locals 10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyReason:I

    iget v2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverride:I

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverrideReason:I

    goto :goto_0

    :cond_1
    iget v2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v2, :cond_2

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenStateReason:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/display/state/DisplayStateController;->mShouldSkipScreenOffTransition:Z

    xor-int/2addr v2, v4

    iput-boolean v2, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    move v2, v4

    :goto_0
    iget-object v5, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    iput-boolean v0, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    iget v6, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    iput v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorPositiveDebounceDelay:I

    iget v6, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    iput v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorNegativeDebounceDelay:I

    iget v6, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverType:I

    const/16 v7, 0x8

    if-eq v6, v7, :cond_5

    const/16 v7, 0xf

    if-eq v6, v7, :cond_5

    const/16 v7, 0x10

    if-eq v6, v7, :cond_5

    const/16 v7, 0x11

    if-ne v6, v7, :cond_4

    goto :goto_1

    :cond_4
    move v6, v0

    goto :goto_2

    :cond_5
    :goto_1
    move v6, v4

    :goto_2
    iput-boolean v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mIsViewTypeCover:Z

    iget-object v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    iget-object v7, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    iget-object v8, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    if-eqz v6, :cond_a

    iget-boolean v6, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v6, :cond_6

    invoke-virtual {v5, p1}, Lcom/android/server/display/DisplayPowerProximityStateController;->isProximitySensorValidState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5, v4}, Lcom/android/server/display/DisplayPowerProximityStateController;->setProximitySensorEnabled(Z)V

    iget-boolean v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    if-nez v6, :cond_8

    iget v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    if-ne v6, v4, :cond_8

    iget-boolean v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    if-nez v6, :cond_8

    iput-boolean v4, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v8, v4}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    new-instance v6, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;

    const/4 v9, 0x2

    invoke-direct {v6, v8, v9}, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/WakelockController;I)V

    invoke-virtual {v7, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_6
    iget-boolean v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    if-eqz v6, :cond_7

    iget-boolean v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    if-eqz v6, :cond_7

    iget v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    if-ne v6, v4, :cond_7

    if-eq v2, v4, :cond_7

    invoke-virtual {v5, p1}, Lcom/android/server/display/DisplayPowerProximityStateController;->isProximitySensorValidState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5, v4}, Lcom/android/server/display/DisplayPowerProximityStateController;->setProximitySensorEnabled(Z)V

    goto :goto_3

    :cond_7
    invoke-virtual {v5, v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->setProximitySensorEnabled(Z)V

    iput-boolean v0, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    :cond_8
    :goto_3
    iget-boolean v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    if-eqz v6, :cond_b

    iget v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    if-ne v6, v4, :cond_9

    iget-boolean v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    if-eqz v6, :cond_b

    :cond_9
    iput-boolean v0, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    iput-boolean v4, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    invoke-virtual {v8, v3}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    new-instance v3, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v3, v8, v6}, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/WakelockController;I)V

    invoke-virtual {v7, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_a
    invoke-virtual {v5, v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->setProximitySensorEnabled(Z)V

    iput-boolean v0, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    iput-boolean v0, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    iget-boolean v6, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    if-eqz v6, :cond_b

    iput-boolean v0, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    iput-boolean v4, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    invoke-virtual {v8, v3}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    new-instance v3, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v3, v8, v6}, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/WakelockController;I)V

    invoke-virtual {v7, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    :goto_4
    if-eqz p2, :cond_c

    if-nez p3, :cond_c

    iget-boolean p2, v5, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    if-eqz p2, :cond_d

    :cond_c
    move v2, v4

    :cond_d
    iget p2, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayId:I

    const/4 p3, 0x4

    if-ne p2, p3, :cond_e

    iget-boolean p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    if-nez p2, :cond_e

    goto :goto_5

    :cond_e
    move v4, v2

    :goto_5
    invoke-static {v4}, Landroid/view/Display;->isOffState(I)Z

    move-result p2

    if-eqz p2, :cond_f

    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    const/16 p2, 0xd

    if-ne p1, p2, :cond_f

    iput-boolean v0, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    :cond_f
    new-instance p0, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
