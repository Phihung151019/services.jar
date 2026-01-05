.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    return-void
.end method


# virtual methods
.method public final onFinishDisplayState(III)V
    .locals 0

    const/4 p2, 0x2

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    if-ne p1, p2, :cond_0

    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mPreviousLogicalState:I

    if-eq p2, p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->setDisplayStateLimit(Z)V

    :cond_0
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mPreviousLogicalState:I

    return-void
.end method
