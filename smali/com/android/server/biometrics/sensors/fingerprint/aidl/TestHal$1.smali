.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;
.super Landroid/hardware/biometrics/fingerprint/ISession$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    const-string/jumbo p1, "fingerprint.aidl.TestHal"

    const-string/jumbo p2, "authenticate"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1$1;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;I)V

    return-object p1
.end method

.method public final authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .locals 2

    const-string/jumbo v0, "fingerprint.aidl.TestHal"

    const-string/jumbo v1, "close"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onSessionClosed()V

    return-void
.end method

.method public final detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 2

    const-string/jumbo v0, "fingerprint.aidl.TestHal"

    const-string/jumbo v1, "detectInteraction"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;I)V

    return-object v0
.end method

.method public final detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public final enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 1

    const-string/jumbo p1, "fingerprint.aidl.TestHal"

    const-string/jumbo v0, "enroll"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;I)V

    return-object p1
.end method

.method public final enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public final enumerateEnrollments()V
    .locals 2

    const-string/jumbo v0, "fingerprint.aidl.TestHal"

    const-string/jumbo v1, "enumerateEnrollments"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-interface {p0, v0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onEnrollmentsEnumerated([I)V

    return-void
.end method

.method public final generateChallenge()V
    .locals 2

    const-string/jumbo v0, "fingerprint.aidl.TestHal"

    const-string/jumbo v1, "generateChallenge"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onChallengeGenerated(J)V

    return-void
.end method

.method public final getAuthenticatorId()V
    .locals 2

    const-string/jumbo v0, "fingerprint.aidl.TestHal"

    const-string/jumbo v1, "getAuthenticatorId"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onAuthenticatorIdRetrieved(J)V

    return-void
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    const-string p0, "41a730a7a6b5aa9cebebce70ee5b5e509b0af6fb"

    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final invalidateAuthenticatorId()V
    .locals 2

    const-string/jumbo v0, "fingerprint.aidl.TestHal"

    const-string/jumbo v1, "invalidateAuthenticatorId"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onAuthenticatorIdInvalidated(J)V

    return-void
.end method

.method public final onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    .locals 0

    const-string/jumbo p0, "fingerprint.aidl.TestHal"

    const-string/jumbo p1, "onContextChanged"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onPointerCancelWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 0

    const-string/jumbo p0, "fingerprint.aidl.TestHal"

    const-string/jumbo p1, "onPointerCancelWithContext"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onPointerDown(IIIFF)V
    .locals 0

    const-string/jumbo p0, "fingerprint.aidl.TestHal"

    const-string/jumbo p1, "onPointerDown"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onPointerDownWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 6

    iget v1, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    iget v0, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    float-to-int v2, v0

    iget v0, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    float-to-int v3, v0

    iget v4, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    iget v5, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->onPointerDown(IIIFF)V

    return-void
.end method

.method public final onPointerUp(I)V
    .locals 0

    const-string/jumbo p0, "fingerprint.aidl.TestHal"

    const-string/jumbo p1, "onPointerUp"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onPointerUpWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 0

    iget p1, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->onPointerUp(I)V

    return-void
.end method

.method public final onUiReady()V
    .locals 1

    const-string/jumbo p0, "fingerprint.aidl.TestHal"

    const-string/jumbo v0, "onUiReady"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final removeEnrollments([I)V
    .locals 2

    const-string/jumbo v0, "fingerprint.aidl.TestHal"

    const-string/jumbo v1, "removeEnrollments"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onEnrollmentsRemoved([I)V

    return-void
.end method

.method public final resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V
    .locals 1

    const-string/jumbo p1, "fingerprint.aidl.TestHal"

    const-string/jumbo v0, "resetLockout"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onLockoutCleared()V

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

    const-string/jumbo v1, "fingerprint.aidl.TestHal"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onChallengeRevoked(J)V

    return-void
.end method

.method public final setIgnoreDisplayTouches(Z)V
    .locals 0

    const-string/jumbo p0, "fingerprint.aidl.TestHal"

    const-string/jumbo p1, "setIgnoreDisplayTouches"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
