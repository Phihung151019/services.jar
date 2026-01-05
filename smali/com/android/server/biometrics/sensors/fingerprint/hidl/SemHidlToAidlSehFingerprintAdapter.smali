.class public final Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;


# instance fields
.field public final mSession:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda2;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter;->mSession:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda2;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    const-string/jumbo p0, "SemHidlToAidlSehFingerprintAdapter"

    const-string/jumbo v0, "asBinder unsupported in HIDL"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final sehRequest(III[B)Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;
    .locals 5

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter;->mSession:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda2;

    iget-object p1, p1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->getIBiometricsFingerprint()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object p1

    new-instance v0, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;

    invoke-direct {v0}, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;-><init>()V

    instance-of v1, p1, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_0

    array-length v3, p4

    if-lez v3, :cond_0

    array-length v3, p4

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v4, p4, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    check-cast p1, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    new-instance p4, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter;Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;)V

    invoke-interface {p1, p2, p3, v1, p4}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;->sehRequest(IILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;)V

    return-object v0

    :cond_1
    const/16 p0, 0xb

    if-ne p2, p0, :cond_2

    iput v2, v0, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;->retValue:I

    return-object v0

    :cond_2
    const/4 p0, -0x1

    iput p0, v0, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;->retValue:I

    return-object v0
.end method
