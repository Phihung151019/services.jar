.class public final Lcom/android/server/biometrics/sensors/face/aidl/TestHal;
.super Landroid/hardware/biometrics/face/IFace$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final createSession(IILandroid/hardware/biometrics/face/ISessionCallback;)Landroid/hardware/biometrics/face/ISession;
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

    const-string/jumbo p1, "face.aidl.TestHal"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;

    invoke-direct {p0, p3}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;-><init>(Landroid/hardware/biometrics/face/ISessionCallback;)V

    return-object p0
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

.method public final getSensorProps()[Landroid/hardware/biometrics/face/SensorProps;
    .locals 1

    const-string/jumbo p0, "face.aidl.TestHal"

    const-string/jumbo v0, "getSensorProps"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/hardware/biometrics/face/SensorProps;

    return-object p0
.end method
