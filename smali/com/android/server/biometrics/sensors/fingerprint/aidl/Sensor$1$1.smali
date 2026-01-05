.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;


# instance fields
.field public final synthetic this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;

.field public final synthetic val$newUserId:I

.field public final synthetic val$sensorId:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$1;->val$sensorId:I

    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$1;->val$newUserId:I

    return-void
.end method


# virtual methods
.method public final onEnrollSuccess()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$1;->val$sensorId:I

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$1;->val$newUserId:I

    invoke-virtual {v1, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleLoadAuthenticatorIdsForUser(II)V

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda13;

    const/4 v4, 0x2

    invoke-direct {v3, v0, p0, v2, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;III)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onHardwareUnavailable()V
    .locals 2

    const-string/jumbo v0, "Sensor"

    const-string v1, "Fingerprint sensor hardware unavailable."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    return-void
.end method
