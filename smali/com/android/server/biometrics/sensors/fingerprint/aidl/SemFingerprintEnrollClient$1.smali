.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl$SysUiCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;

.field public final synthetic val$canIgnoreSysUiError:Z


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;

    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient$1;->val$canIgnoreSysUiError:Z

    return-void
.end method


# virtual methods
.method public final onSysUiDismissed()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient$1;->val$canIgnoreSysUiError:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onUserCanceled()V

    :cond_0
    return-void
.end method

.method public final onSysUiError(II)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient$1;->val$canIgnoreSysUiError:Z

    if-nez p1, :cond_0

    const/4 p1, 0x5

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->onError(II)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->cancel()V

    :cond_0
    return-void
.end method
