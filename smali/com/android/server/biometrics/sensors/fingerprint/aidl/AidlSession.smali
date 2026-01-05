.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

.field public final mHalInterfaceVersion:I

.field public mLazySehFingerprint:Ljava/util/function/Function;

.field public final mSession:Landroid/hardware/biometrics/fingerprint/ISession;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/hardware/biometrics/fingerprint/ISession;ILcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mHalInterfaceVersion:I

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mUserId:I

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    const-string p0, "AidlSession: Ver = "

    const-string p2, "FingerprintService"

    invoke-static {p1, p0, p2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda2;ILcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda2;ILcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mHalInterfaceVersion:I

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mUserId:I

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda2;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mLazySehFingerprint:Ljava/util/function/Function;

    const-string p0, "AidlSession: Ver = 0"

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final hasContextMethods()Z
    .locals 1

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mHalInterfaceVersion:I

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
