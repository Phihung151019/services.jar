.class public final synthetic Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;IIII)V
    .locals 0

    iput p5, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    iput p2, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$3:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    iget v1, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$2:I

    iget p0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$3:I

    iget-boolean v3, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mHasExtraBuiltInDisplay:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->isFolded()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-eq v1, v3, :cond_1

    goto/16 :goto_5

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "DisplayStateListener#onStart : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, -0x1

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    const-string/jumbo v4, "UNKNOWN_DISPLAY"

    goto :goto_1

    :cond_2
    const-string v4, "EXTRA_BUILT_IN_DISPLAY"

    goto :goto_1

    :cond_3
    const-string v4, "DEFAULT_DISPLAY"

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "OTHER_DISPLAY"

    :goto_1
    const-string/jumbo v6, "SemBiometricDisplayStateMonitor"

    invoke-static {v3, v4, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iput v2, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mLogicalDisplayState:I

    iget-boolean v3, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mIsDisplayOn:Z

    invoke-static {v2}, Landroid/view/Display;->isOnState(I)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v2}, Landroid/view/Display;->isOffState(I)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v2}, Landroid/view/Display;->isDozeState(I)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    move v5, v3

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v5, 0x0

    :goto_3
    iget-object v3, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mDisplayStateCallbacks:Ljava/util/List;

    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;

    invoke-interface {v4, v2, p0, v1}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;->onStartDisplayState(III)V

    if-eqz v5, :cond_9

    iget-boolean v6, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mIsDisplayOn:Z

    if-nez v6, :cond_9

    invoke-interface {v4}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;->onDisplayOn()V

    goto :goto_4

    :cond_9
    if-nez v5, :cond_8

    iget-boolean v6, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mIsDisplayOn:Z

    if-eqz v6, :cond_8

    invoke-interface {v4}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;->onDisplayOff()V

    goto :goto_4

    :cond_a
    iput-boolean v5, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mIsDisplayOn:Z

    :goto_5
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    iget v1, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$2:I

    iget p0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;->f$3:I

    iget-boolean v3, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mHasExtraBuiltInDisplay:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->isFolded()Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v4

    goto :goto_6

    :cond_b
    move v3, v5

    :goto_6
    if-eq v1, v3, :cond_c

    goto :goto_9

    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "DisplayStateListener#onFinish : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, -0x1

    if-eq v1, v6, :cond_f

    if-eq v1, v5, :cond_e

    if-eq v1, v4, :cond_d

    const-string/jumbo v4, "UNKNOWN_DISPLAY"

    goto :goto_7

    :cond_d
    const-string v4, "EXTRA_BUILT_IN_DISPLAY"

    goto :goto_7

    :cond_e
    const-string v4, "DEFAULT_DISPLAY"

    goto :goto_7

    :cond_f
    const-string/jumbo v4, "OTHER_DISPLAY"

    :goto_7
    const-string/jumbo v5, "SemBiometricDisplayStateMonitor"

    invoke-static {v3, v4, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iput v2, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mLogicalDisplayState:I

    iput p0, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mPhysicalDisplayState:I

    iget-object v0, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mDisplayStateCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;

    invoke-interface {v3, v2, p0, v1}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;->onFinishDisplayState(III)V

    goto :goto_8

    :cond_10
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
