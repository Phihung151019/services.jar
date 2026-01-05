.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter;

.field public final synthetic f$1:Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter;Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter$$ExternalSyntheticLambda0;->f$1:Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;

    return-void
.end method


# virtual methods
.method public final onValues(ILjava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter$$ExternalSyntheticLambda0;->f$1:Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;

    iput p1, p0, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;->retValue:I

    if-nez p1, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [B

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;->data:[B

    :cond_1
    return-void
.end method
