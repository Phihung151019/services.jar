.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal;
.super Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public createSession(IILandroid/hardware/biometrics/fingerprint/ISessionCallback;)Landroid/hardware/biometrics/fingerprint/ISession;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "createSession, sensorId: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " userId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "fingerprint.aidl.TestHal"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;

    invoke-direct {p0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;-><init>(Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    return-object p0
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

.method public final getSensorProps()[Landroid/hardware/biometrics/fingerprint/SensorProps;
    .locals 1

    const-string/jumbo p0, "fingerprint.aidl.TestHal"

    const-string/jumbo v0, "getSensorProps"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/hardware/biometrics/fingerprint/SensorProps;

    return-object p0
.end method
