.class public final Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/sensors/LockoutTracker;


# instance fields
.field public mCurrentUserLockoutMode:I


# virtual methods
.method public final getLockoutModeForUser(I)I
    .locals 0

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;->mCurrentUserLockoutMode:I

    return p0
.end method

.method public final setLockoutModeForUser(II)V
    .locals 0

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;->mCurrentUserLockoutMode:I

    return-void
.end method
