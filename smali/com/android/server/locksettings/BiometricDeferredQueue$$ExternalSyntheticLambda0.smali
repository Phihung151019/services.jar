.class public final synthetic Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/locksettings/BiometricDeferredQueue;

.field public final synthetic f$1:I

.field public final synthetic f$2:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/BiometricDeferredQueue;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/locksettings/BiometricDeferredQueue;

    iput p2, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;->f$2:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/locksettings/BiometricDeferredQueue;

    iget v1, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;->f$2:[B

    iget-object v2, v0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceManager:Landroid/hardware/face/FaceManager;

    const-string v3, "BiometricDeferredQueue"

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Face addPendingLockoutResetForUser: "

    invoke-static {v1, v2, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockoutsForFace:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;

    invoke-direct {v4, v1, p0}, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;-><init>(I[B)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, v0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const-string v4, "Fingerprint addPendingLockoutResetForUser: "

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1, v4, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockoutsForFingerprint:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;

    invoke-direct {v5, v1, p0}, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;-><init>(I[B)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, v0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    if-eqz v2, :cond_2

    invoke-static {v1, v4, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mPendingResetLockouts:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;

    invoke-direct {v2, v1, p0}, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;-><init>(I[B)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
