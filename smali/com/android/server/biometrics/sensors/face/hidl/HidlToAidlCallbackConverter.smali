.class public final Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;
.super Landroid/os/HwBinder;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;


# instance fields
.field public final mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public final debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 2

    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    new-array v3, v0, [B

    fill-array-data v3, :array_2

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    filled-new-array {v1, v2, v3, v0}, [[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :array_0
    .array-data 1
        -0x6dt
        0x5bt
        -0xet
        0x43t
        0x43t
        0x5et
        0x6ct
        -0x10t
        -0x76t
        0x24t
        0x1ct
        -0x3dt
        -0x15t
        -0x1bt
        -0x16t
        -0x6at
        -0x19t
        -0x5et
        -0x27t
        0x68t
        -0x32t
        0x62t
        0x1at
        -0x4et
        0x47t
        0x68t
        -0x50t
        -0x5ct
        0x2ft
        0x4at
        0x51t
        -0x49t
    .end array-data

    :array_1
    .array-data 1
        0x7t
        -0x69t
        0x10t
        -0x29t
        -0x6dt
        0xat
        -0x25t
        -0x10t
        0x7t
        0x54t
        -0x44t
        -0x7bt
        -0x66t
        0x1ft
        -0x2bt
        -0x40t
        0x71t
        -0x68t
        0xft
        -0x60t
        -0x75t
        0x35t
        0x28t
        -0x33t
        -0x1dt
        -0x39t
        -0x65t
        -0x44t
        -0xbt
        -0x73t
        -0xet
        0x4at
    .end array-data

    :array_2
    .array-data 1
        -0x4at
        -0x1bt
        0x5dt
        0x77t
        -0x6bt
        -0x45t
        -0x51t
        -0x30t
        0x11t
        -0x5t
        -0x6bt
        -0x5dt
        -0x4at
        -0x2dt
        -0x6bt
        0x4bt
        -0xat
        0x6ct
        0x34t
        -0x62t
        0x14t
        -0x31t
        0x10t
        0x7ft
        0x3bt
        0x72t
        0x3t
        0x2ct
        -0x1dt
        -0x32t
        -0x4ct
        0x48t
    .end array-data

    :array_3
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    const-string/jumbo v0, "android.hardware.biometrics.face@1.0::IBiometricsFaceClientCallback"

    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    const-string/jumbo v2, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFaceClientCallback"

    const-string/jumbo v3, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFaceClientCallback"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFaceClientCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public final onAuthenticated(JIILjava/util/ArrayList;)V
    .locals 3

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-lez p3, :cond_0

    move p4, p2

    goto :goto_0

    :cond_0
    move p4, p1

    :goto_0
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [B

    :goto_1
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_3

    if-le v0, p2, :cond_2

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-static {v1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    return-void

    :cond_3
    const/4 p1, -0x1

    if-ne p3, p1, :cond_4

    new-instance p1, Landroid/hardware/biometrics/face/AuthenticationFrame;

    invoke-direct {p1}, Landroid/hardware/biometrics/face/AuthenticationFrame;-><init>()V

    new-instance p2, Landroid/hardware/biometrics/face/BaseFrame;

    invoke-direct {p2}, Landroid/hardware/biometrics/face/BaseFrame;-><init>()V

    iput-object p2, p1, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    const/16 p3, 0x17

    iput-byte p3, p2, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    const/16 p3, 0x3fa

    iput p3, p2, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)V

    :cond_4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationFailed()V

    return-void
.end method

.method public final onEnumerate(ILjava/util/ArrayList;)V
    .locals 2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onEnrollmentsEnumerated([I)V

    return-void
.end method

.method public final onError(III)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onError(II)V

    return-void
.end method

.method public final onRemoved(ILjava/util/ArrayList;)V
    .locals 2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onEnrollmentsRemoved([I)V

    return-void
.end method

.method public final onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string/jumbo v3, "sehOnPreviewUpdated: skip after stop"

    const-string/jumbo v4, "] "

    const-string/jumbo v5, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFaceClientCallback"

    const-string/jumbo v6, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFaceClientCallback"

    const-string/jumbo v7, "SemFace"

    const-string v8, ","

    const-string/jumbo v9, "android.hardware.biometrics.face@1.0::IBiometricsFaceClientCallback"

    const/4 v10, 0x0

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    return-void

    :sswitch_0
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void

    :sswitch_1
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v0, v2}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_2
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_3
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    return-void

    :sswitch_4
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v10}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v10, v3, :cond_1

    mul-int/lit8 v5, v10, 0x20

    int-to-long v5, v5

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {v2, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_5
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v2, v5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_6
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_7
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v2, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_0
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    :try_start_0
    invoke-virtual {v1}, Landroid/os/HwParcel;->readHidlMemory()Landroid/os/HidlMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HidlMemory;->dup()Landroid/os/HidlMemory;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v9, "sehOnAuthenticatedFromMemory: ["

    invoke-static {v6, v5, v9, v4, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v4, v2, v3, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsAuthenticationExtOperation:Z

    if-nez v2, :cond_2

    const-string/jumbo v0, "sehOnAuthenticatedFromMemory: auth preview mode is off"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-nez v5, :cond_3

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendFailed()V

    return-void

    :cond_3
    if-nez v1, :cond_4

    const-string/jumbo v0, "sehOnAuthenticatedFromMemory: result data is null"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    new-instance v3, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0, v1, v5}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;Landroid/os/HidlMemory;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_1
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v1}, Landroid/os/HwParcel;->readHidlMemory()Landroid/os/HidlMemory;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/HidlMemory;->dup()Landroid/os/HidlMemory;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "sehOnPreviewFrame: "

    invoke-static {v13, v14, v0, v8, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsOperationStarted:Z

    if-nez v0, :cond_5

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-nez v4, :cond_6

    const-string/jumbo v0, "sehOnPreviewFrame: preview data is null"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iget-object v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLpreviewImage:[B

    if-eqz v0, :cond_7

    const-string/jumbo v0, "sehOnPreviewFrame: previous preview is not processed yet"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    invoke-static {v4}, Landroid/os/HidlMemoryUtil;->hidlMemoryToByteArray(Landroid/os/HidlMemory;)[B

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLpreviewImage:[B

    iget-object v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    new-instance v11, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;

    move/from16 v16, v5

    invoke-direct/range {v11 .. v16}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;IIII)V

    invoke-virtual {v0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->send()V

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_2
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    move-object/from16 v11, p2

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v7

    const-string/jumbo v9, "sehOnAuthenticated: ["

    invoke-static {v6, v3, v9, v4, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, ""

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [B

    sput-object v4, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoResultData:[B

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_8

    sget-object v4, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoResultData:[B

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v4, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_8
    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onAuthenticated(JIILjava/util/ArrayList;)V

    return-void

    :pswitch_3
    move-object v11, v1

    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "sehOnPreviewUpdated: "

    invoke-static {v13, v14, v0, v8, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsOperationStarted:Z

    if-nez v0, :cond_9

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    iget-object v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLpreviewImage:[B

    if-eqz v0, :cond_b

    const-string/jumbo v0, "sehOnPreviewUpdated: previous preview is not processed yet"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLpreviewImage:[B

    move v0, v10

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_c

    iget-object v3, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLpreviewImage:[B

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    iget-object v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    new-instance v11, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;

    move/from16 v16, v4

    invoke-direct/range {v11 .. v16}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;IIII)V

    invoke-virtual {v0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_d
    :goto_4
    const-string/jumbo v0, "sehOnPreviewUpdated: preview data is null or size is 0"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_4
    move-object v11, v1

    invoke-virtual {v11, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v1

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "AidlResponseHandler"

    const-string/jumbo v4, "onLockoutChanged"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v3, v3, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda23;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;J)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_5
    move-object v11, v1

    invoke-virtual {v11, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt64()J

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onEnumerate(ILjava/util/ArrayList;)V

    return-void

    :pswitch_6
    move-object v11, v1

    invoke-virtual {v11, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt64()J

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onRemoved(ILjava/util/ArrayList;)V

    return-void

    :pswitch_7
    move-object v11, v1

    invoke-virtual {v11, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt64()J

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onError(III)V

    return-void

    :pswitch_8
    move-object v11, v1

    invoke-virtual {v11, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt64()J

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt32()I

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "AidlResponseHandler"

    const-string/jumbo v4, "onAcquired"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v3, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    new-instance v4, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda22;

    invoke-direct {v4, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda22;-><init>(II)V

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    return-void

    :pswitch_9
    move-object v11, v1

    invoke-virtual {v11, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v1

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onAuthenticated(JIILjava/util/ArrayList;)V

    return-void

    :pswitch_a
    move-object v11, v1

    invoke-virtual {v11, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt64()J

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt32()I

    invoke-virtual {v11}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onEnrollmentProgress(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_7
        0xf444247 -> :sswitch_6
        0xf445343 -> :sswitch_5
        0xf485348 -> :sswitch_4
        0xf494e54 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public final queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string/jumbo v0, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFaceClientCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFaceClientCallback@Stub"

    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
