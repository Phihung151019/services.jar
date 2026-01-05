.class public Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;


# instance fields
.field public final mBlockingTasksWhenStartPhysicalState:Ljava/util/List;

.field public mBrightness:I

.field public final mBrightnessCallbacks:Ljava/util/List;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDisplayStateCallbacks:Ljava/util/List;

.field public final mHandler:Landroid/os/Handler;

.field public final mHasExtraBuiltInDisplay:Z

.field public mIsDisplayOn:Z

.field public mLogicalDisplayState:I

.field public mPhysicalDisplayState:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mDisplayStateCallbacks:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBrightnessCallbacks:Ljava/util/List;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mLogicalDisplayState:I

    iput v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mPhysicalDisplayState:I

    const/16 v0, 0x7f

    iput v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBrightness:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBlockingTasksWhenStartPhysicalState:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mHandler:Landroid/os/Handler;

    iput-boolean p2, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mHasExtraBuiltInDisplay:Z

    return-void
.end method


# virtual methods
.method public isFolded()Z
    .locals 0

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result p0

    return p0
.end method

.method public final onChanged(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onFinish(III)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;IIII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onStart(III)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mHasExtraBuiltInDisplay:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBlockingTasksWhenStartPhysicalState:Ljava/util/List;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/IntConsumer;

    invoke-interface {v1, p2}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;IIII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final registerStateCallback(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mDisplayStateCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mDisplayStateCallbacks:Ljava/util/List;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
