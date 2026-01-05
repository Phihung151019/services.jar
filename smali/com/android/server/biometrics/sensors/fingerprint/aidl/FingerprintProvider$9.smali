.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;
.super Lcom/android/server/biometrics/sensors/BaseClientMonitor;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDataTransmissionUnit:I

.field public final mErrorValue:I

.field public final mPath:Ljava/lang/String;

.field public final mSuccessValue:I

.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/content/Context;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/biometrics/log/BiometricContext;)V
    .locals 10

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {p2}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object v5, p4

    move/from16 v7, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    const p1, 0xe1000

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mDataTransmissionUnit:I

    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mPath:Ljava/lang/String;

    const/16 p1, -0x64

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mErrorValue:I

    const/16 p1, 0x64

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mSuccessValue:I

    return-void
.end method


# virtual methods
.method public final getProtoEnum()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final handleUpdate(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintRequestReceiver:Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;->onResult(I)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/hardware/face/IFaceServiceReceiver;->onSemStatusUpdate(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "handleUpdate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/SemUpdateTrustAppClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mSuccessValue:I

    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-interface {v0, p0, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    const-string/jumbo p1, "startUpdate: size = "

    const-string/jumbo v0, "startUpdate: start"

    const-string v1, "Biometrics/SemUpdateTrustAppClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo p1, "startUpdate: No file exist"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mErrorValue:I

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->handleUpdate(I)V

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_3

    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x19000

    new-array p1, p1, [B

    :goto_0
    invoke-virtual {v3, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v2, v4, :cond_1

    invoke-virtual {v0, p1, v5, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    move-object v2, v3

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string/jumbo p1, "startUpdate: done reading file"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget v7, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v8, 0x2711

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->handleRequestCommandWithoutScheduler(III[B[B)I

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mErrorValue:I

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->handleUpdate(I)V

    return-void

    :cond_2
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mDataTransmissionUnit:I

    const-string/jumbo v2, "startUpdate: OPERATION_WRITE error"

    if-ne p1, v4, :cond_3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget v7, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/16 v8, 0x2711

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->handleRequestCommandWithoutScheduler(III[B[B)I

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mErrorValue:I

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->handleUpdate(I)V

    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    int-to-double v3, p1

    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mDataTransmissionUnit:I

    int-to-double v6, p1

    div-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move v3, v5

    :goto_1
    if-ge v3, p1, :cond_5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mDataTransmissionUnit:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v10, v4, [B

    invoke-virtual {v0, v10, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget v7, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/16 v8, 0x2711

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->handleRequestCommandWithoutScheduler(III[B[B)I

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mErrorValue:I

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->handleUpdate(I)V

    return-void

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :try_start_2
    const-string/jumbo p1, "SHA-256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    array-length p1, v10

    :goto_2
    if-ge v5, p1, :cond_6

    aget-byte v0, v10, v5

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%02x"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget v7, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    const/16 v8, 0x2711

    const/4 v9, 0x2

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->handleRequestCommandWithoutScheduler(III[B[B)I

    move-result p1

    if-eqz p1, :cond_7

    const-string/jumbo p1, "startUpdate: OPERATION_END error"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mErrorValue:I

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->handleUpdate(I)V

    return-void

    :cond_7
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mSuccessValue:I

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->handleUpdate(I)V

    return-void

    :catch_2
    move-exception v0

    move-object p1, v0

    const-string/jumbo v0, "startUpdate: failure to get MessageDigest instance"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mErrorValue:I

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->handleUpdate(I)V

    goto :goto_4

    :goto_3
    const-string/jumbo v0, "startUpdate: failure to read file"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->mErrorValue:I

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;->handleUpdate(I)V

    if-eqz v2, :cond_8

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    const-string/jumbo p0, "startUpdate: failed to close file"

    invoke-static {v1, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_4
    return-void
.end method
