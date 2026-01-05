.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;


# static fields
.field static final LOCAL_HBM_PATH_OF_IN_HOUSE:Ljava/lang/String; = "/sys/class/lcd/panel/local_hbm"

.field static final LOCAL_HBM_PATH_OF_JDM:Ljava/lang/String; = "/sys/class/display/display_ctrl/lhbm_mode_set"


# instance fields
.field public mCurrentLocalHbmStatus:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

.field public final mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

.field public mFreezeBrightnessMode:I

.field public mIsFreezeBrightnessMode:Z

.field public mLocalHbmModeChangeAfterScreenOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1;

.field public mStartPhysicalDisplayState:I

.field public final mSysFsProvider:Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;

.field public mTouchDownDeliverAfterLhbmOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;

.field public final mUseInHouseSolution:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mStartPhysicalDisplayState:I

    sget-object p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_OFF:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mCurrentLocalHbmStatus:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mSysFsProvider:Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;

    iput-boolean p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mUseInHouseSolution:Z

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    invoke-virtual {p2, p0}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->registerStateCallback(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;)V

    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;)V

    iget-object p0, p2, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBlockingTasksWhenStartPhysicalState:Ljava/util/List;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p2, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBlockingTasksWhenStartPhysicalState:Ljava/util/List;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final changeToNextState(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V
    .locals 7

    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_OFF:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    sget-object v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_ON_SOURCE_OFF:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    sget-object v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_ON_SOURCE_ON:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mUseInHouseSolution:Z

    if-nez v3, :cond_1

    if-ne p1, v2, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mCurrentLocalHbmStatus:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    if-eq v4, v5, :cond_4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    goto/16 :goto_3

    :cond_2
    if-ne p1, v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    goto :goto_1

    :cond_3
    if-ne p1, v0, :cond_b

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    goto :goto_1

    :cond_4
    if-ne p1, v0, :cond_5

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    goto :goto_1

    :cond_5
    if-ne p1, v2, :cond_b

    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    goto :goto_1

    :cond_6
    if-ne p1, v1, :cond_7

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    goto :goto_1

    :cond_7
    if-ne p1, v2, :cond_b

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "LocalHbmStatus change from : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mCurrentLocalHbmStatus:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "FingerprintService.SemFpLhbmOpticalController"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mCurrentLocalHbmStatus:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    if-eqz v3, :cond_8

    if-ne p1, v2, :cond_a

    goto :goto_2

    :cond_8
    if-ne p1, v1, :cond_a

    :goto_2
    if-eqz v3, :cond_9

    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mIsFreezeBrightnessMode:Z

    if-eq p1, v5, :cond_9

    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    if-eqz p1, :cond_9

    iput-boolean v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mIsFreezeBrightnessMode:Z

    invoke-virtual {p1, v5}, Landroid/hardware/display/DisplayManagerInternal;->setFreezeBrightnessMode(Z)I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mFreezeBrightnessMode:I

    :cond_9
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mTouchDownDeliverAfterLhbmOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mTouchDownDeliverAfterLhbmOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;

    return-void

    :cond_a
    if-eqz v3, :cond_b

    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mIsFreezeBrightnessMode:Z

    if-eqz p1, :cond_b

    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    if-eqz p1, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mIsFreezeBrightnessMode:Z

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManagerInternal;->setFreezeBrightnessMode(Z)I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mFreezeBrightnessMode:I

    :cond_b
    :goto_3
    return-void
.end method

.method public final declared-synchronized handleLocalHbm(I)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_OFF:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->changeToNextState(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mStartPhysicalDisplayState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    iget v0, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mPhysicalDisplayState:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_ON_SOURCE_OFF:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->changeToNextState(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    sget-object p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_ON_SOURCE_ON:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->changeToNextState(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mLocalHbmModeChangeAfterScreenOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;I)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mLocalHbmModeChangeAfterScreenOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final handleTouchEventInLhbm(Landroid/util/Pair;IJ)V
    .locals 15

    move/from16 v3, p2

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mUseInHouseSolution:Z

    const/4 v7, 0x2

    if-ne v3, v7, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mTouchDownDeliverAfterLhbmOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mCurrentLocalHbmStatus:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    sget-object v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_ON_SOURCE_ON:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mCurrentLocalHbmStatus:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    sget-object v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_ON_SOURCE_OFF:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    if-ne v1, v2, :cond_2

    :cond_1
    :goto_0
    move-object/from16 v8, p1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;

    move-object v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;Landroid/util/Pair;IJ)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mTouchDownDeliverAfterLhbmOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;

    return-void

    :goto_1
    int-to-byte v2, v3

    new-array v13, v6, [B

    const/4 v4, 0x0

    aput-byte v2, v13, v4

    if-eqz v0, :cond_3

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v12, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mFreezeBrightnessMode:I

    const/4 v14, 0x0

    const/16 v11, 0x2b

    invoke-interface/range {v9 .. v14}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(III[B[B)I

    goto :goto_2

    :cond_3
    iget-object p0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object p0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, 0x0

    const/16 v2, 0x16

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(III[B[B)I

    :goto_2
    iget-object p0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semGetCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    if-nez p0, :cond_4

    const-wide/16 v0, 0x0

    goto :goto_3

    :cond_4
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    :goto_3
    if-ne v3, v7, :cond_5

    iget-object v2, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v3, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Landroid/hardware/biometrics/fingerprint/PointerContext;

    invoke-direct {v4}, Landroid/hardware/biometrics/fingerprint/PointerContext;-><init>()V

    invoke-interface {v2, v0, v1, v3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->onPointerDown(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V

    instance-of p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object p0

    long-to-int v0, v0

    const/16 v1, 0x10

    shr-long v1, p3, v1

    long-to-int v1, v1

    const-wide/32 v2, 0xffff

    and-long v2, p3, v2

    long-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBioLoggingManager;->getFpHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;III)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_5
    if-ne v3, v6, :cond_6

    iget-object p0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v2, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Landroid/hardware/biometrics/fingerprint/PointerContext;

    invoke-direct {v3}, Landroid/hardware/biometrics/fingerprint/PointerContext;-><init>()V

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->onPointerUp(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V

    :cond_6
    return-void
.end method

.method public final onFinishDisplayState(III)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mUseInHouseSolution:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mLocalHbmModeChangeAfterScreenOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mLocalHbmModeChangeAfterScreenOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1;

    :cond_0
    return-void
.end method

.method public final writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mUseInHouseSolution:Z

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mSysFsProvider:Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/io/File;

    const-string v0, "/sys/class/lcd/panel/local_hbm"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->writeFile(Ljava/io/File;[B)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/io/File;

    const-string v0, "/sys/class/display/display_ctrl/lhbm_mode_set"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->writeFile(Ljava/io/File;[B)V

    :goto_0
    return-void
.end method
