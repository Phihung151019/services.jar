.class public final Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;
.super Landroid/hardware/biometrics/face/ISession$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic val$cb:Landroid/hardware/biometrics/face/ISessionCallback;


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/face/ISessionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/ISession$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    const-string/jumbo p1, "face.aidl.TestHal"

    const-string/jumbo p2, "authenticate"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;I)V

    return-object p1
.end method

.method public final authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .locals 2

    const-string/jumbo v0, "face.aidl.TestHal"

    const-string/jumbo v1, "close"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISessionCallback;->onSessionClosed()V

    return-void
.end method

.method public final detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 2

    const-string/jumbo v0, "face.aidl.TestHal"

    const-string/jumbo v1, "detectInteraction"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;I)V

    return-object v0
.end method

.method public final detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public final enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    const-string/jumbo p1, "face.aidl.TestHal"

    const-string/jumbo p2, "enroll"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;I)V

    return-object p1
.end method

.method public final enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public final enrollWithOptions(Landroid/hardware/biometrics/face/FaceEnrollOptions;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 3

    iget-object v0, p1, Landroid/hardware/biometrics/face/FaceEnrollOptions;->hardwareAuthToken:Landroid/hardware/keymaster/HardwareAuthToken;

    iget-byte v1, p1, Landroid/hardware/biometrics/face/FaceEnrollOptions;->enrollmentType:B

    iget-object v2, p1, Landroid/hardware/biometrics/face/FaceEnrollOptions;->features:[B

    iget-object p1, p1, Landroid/hardware/biometrics/face/FaceEnrollOptions;->nativeHandlePreview:Landroid/hardware/common/NativeHandle;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public final enumerateEnrollments()V
    .locals 2

    const-string/jumbo v0, "face.aidl.TestHal"

    const-string/jumbo v1, "enumerateEnrollments"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-interface {p0, v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onEnrollmentsEnumerated([I)V

    return-void
.end method

.method public final generateChallenge()V
    .locals 2

    const-string/jumbo v0, "face.aidl.TestHal"

    const-string/jumbo v1, "generateChallenge"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onChallengeGenerated(J)V

    return-void
.end method

.method public final getAuthenticatorId()V
    .locals 2

    const-string/jumbo v0, "face.aidl.TestHal"

    const-string/jumbo v1, "getAuthenticatorId"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticatorIdRetrieved(J)V

    return-void
.end method

.method public final getEnrollmentConfig(B)[Landroid/hardware/biometrics/face/EnrollmentStageConfig;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/hardware/biometrics/face/EnrollmentStageConfig;

    return-object p0
.end method

.method public final getFeatures()V
    .locals 2

    const-string/jumbo v0, "face.aidl.TestHal"

    const-string/jumbo v1, "getFeatures"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-interface {p0, v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onFeaturesRetrieved([B)V

    return-void
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "c43fbb9be4a662cc9ace640dba21cccdb84c6c21"

    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final invalidateAuthenticatorId()V
    .locals 2

    const-string/jumbo v0, "face.aidl.TestHal"

    const-string/jumbo v1, "invalidateAuthenticatorId"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticatorIdInvalidated(J)V

    return-void
.end method

.method public final onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    .locals 0

    const-string/jumbo p0, "face.aidl.TestHal"

    const-string/jumbo p1, "onContextChanged"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final removeEnrollments([I)V
    .locals 2

    const-string/jumbo v0, "face.aidl.TestHal"

    const-string/jumbo v1, "removeEnrollments"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/ISessionCallback;->onEnrollmentsRemoved([I)V

    return-void
.end method

.method public final resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V
    .locals 1

    const-string/jumbo p1, "face.aidl.TestHal"

    const-string/jumbo v0, "resetLockout"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISessionCallback;->onLockoutCleared()V

    return-void
.end method

.method public final revokeChallenge(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "revokeChallenge: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "face.aidl.TestHal"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/ISessionCallback;->onChallengeRevoked(J)V

    return-void
.end method

.method public final setFeature(Landroid/hardware/keymaster/HardwareAuthToken;BZ)V
    .locals 0

    const-string/jumbo p1, "face.aidl.TestHal"

    const-string/jumbo p3, "setFeature"

    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {p0, p2}, Landroid/hardware/biometrics/face/ISessionCallback;->onFeatureSet(B)V

    return-void
.end method
