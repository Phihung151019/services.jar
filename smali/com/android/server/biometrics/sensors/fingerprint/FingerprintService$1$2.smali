.class public final Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;
.super Landroid/hardware/fingerprint/FingerprintServiceReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final numSensors:I

.field public sensorsFinishedRemoving:I

.field public final synthetic val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .locals 0

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintServiceReceiver;-><init>()V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;->sensorsFinishedRemoving:I

    iget-object p2, p1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;->numSensors:I

    return-void
.end method


# virtual methods
.method public final onRemoved(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 1

    if-nez p2, :cond_0

    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;->sensorsFinishedRemoving:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;->sensorsFinishedRemoving:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "sensorsFinishedRemoving: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;->sensorsFinishedRemoving:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", numSensors: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;->numSensors:I

    const-string v0, "FingerprintService"

    invoke-static {p1, p2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;->sensorsFinishedRemoving:I

    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;->numSensors:I

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$2;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onRemoved(Landroid/hardware/fingerprint/Fingerprint;I)V

    :cond_0
    return-void
.end method
