.class public final Lcom/android/server/biometrics/sensors/face/hidl/TestHal;
.super Landroid/os/HwBinder;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;


# instance fields
.field public mCallback:Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

.field public final mContext:Landroid/content/Context;

.field public final mSensorId:I

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mSensorId:I

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public final authenticate(J)I
    .locals 0

    const-string/jumbo p0, "face.hidl.TestHal"

    const-string/jumbo p1, "authenticate"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final cancel()I
    .locals 2

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x5

    invoke-interface {p0, v0, v1, v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onError(III)V

    :cond_0
    return v0
.end method

.method public final debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method public final enroll(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 0

    const-string/jumbo p0, "face.hidl.TestHal"

    const-string/jumbo p1, "enroll"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final enumerate()I
    .locals 2

    const-string/jumbo v0, "face.hidl.TestHal"

    const-string/jumbo v1, "enumerate"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onEnumerate(ILjava/util/ArrayList;)V

    :cond_0
    return v0
.end method

.method public final generateChallenge()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 2

    const-string/jumbo p0, "face.hidl.TestHal"

    const-string/jumbo v0, "generateChallenge"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    return-object p0
.end method

.method public final getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 2

    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    return-object p0
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

.method public final getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    .locals 0

    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->status:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

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
        -0x3dt
        0x2et
        0x54t
        -0x8t
        -0x13t
        0x16t
        0x6dt
        -0x57t
        -0x4t
        -0x13t
        -0x1t
        -0x29t
        -0x52t
        -0x2at
        0x26t
        0x33t
        -0x11t
        0x10t
        0x8t
        0x5t
        0x37t
        0x7t
        -0x2ct
        0x5dt
        -0x6et
        0x3ct
        0x73t
        -0x52t
        0x6dt
        0x4dt
        -0x57t
        -0x7ft
    .end array-data

    :array_1
    .array-data 1
        0x8t
        0x1ct
        0x60t
        -0x44t
        -0x65t
        -0x9t
        -0x50t
        0x5ft
        0x35t
        -0x2bt
        0x47t
        -0x75t
        -0x3et
        0x6bt
        -0x3ft
        0x6dt
        -0x5ft
        -0x80t
        -0x3t
        -0x21t
        0x77t
        -0x79t
        0x40t
        0x36t
        0x76t
        0xct
        0x4ft
        0x6ct
        -0xet
        0x7et
        -0x16t
        0x44t
    .end array-data

    :array_2
    .array-data 1
        -0x1ft
        -0x71t
        -0xdt
        0x18t
        -0xdt
        -0x4t
        0x43t
        -0x25t
        0x37t
        -0xbt
        0x54t
        0x69t
        0x6dt
        -0x3ct
        -0x1bt
        0x51t
        -0x55t
        -0x47t
        -0x4ft
        0x19t
        -0x43t
        -0x1bt
        0x39t
        0x50t
        -0x9t
        0x3et
        0x28t
        -0x32t
        0x33t
        -0x57t
        0x7at
        0x40t
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

    const-string/jumbo v0, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    const-string/jumbo v2, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFace"

    const-string/jumbo v3, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFace"

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

.method public final onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 8

    const/4 p4, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFace"

    const-string/jumbo v4, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    const-string/jumbo v5, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void

    :sswitch_1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    return-void

    :sswitch_4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    invoke-virtual {p1, v2, v3, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, p2, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge p4, p2, :cond_1

    mul-int/lit8 v3, p4, 0x20

    int-to-long v3, v3

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    if-eqz v5, :cond_0

    array-length v6, v5

    const/16 v7, 0x20

    if-ne v6, v7, :cond_0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;->sehAuthenticateForIssuance(JILjava/util/ArrayList;Z)I

    move-result p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo p2, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFaceClientCallback"

    invoke-interface {p1, p2}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v1, v0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    if-eqz v1, :cond_3

    move-object v2, v0

    check-cast v2, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    goto :goto_1

    :cond_3
    new-instance v0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Proxy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    :try_start_0
    invoke-virtual {v0}, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Proxy;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, p4

    :cond_4
    if-ge v3, v1, :cond_5

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_4

    move-object v2, v0

    :catch_0
    :cond_5
    :goto_1
    invoke-interface {p0, v2}, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;->sehSetCallbackEx(Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p0, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehSetFaceTag(Ljava/util/ArrayList;)I

    move-result p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_3
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    return-void

    :pswitch_4
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    return-void

    :pswitch_5
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_6
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance p1, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub$1;

    invoke-direct {p1, p3}, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub$1;-><init>(Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehGetSecurityLevel(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetSecurityLevelCallback;)V

    return-void

    :pswitch_7
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_8
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_9
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p2}, Landroid/os/HwParcel;->readHidlMemory()Landroid/os/HidlMemory;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/HidlMemory;->dup()Landroid/os/HidlMemory;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :catch_1
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :pswitch_b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_c
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehSetRotation(I)I

    move-result p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehGetEngineVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehGetTaInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehResumeEnrollment()I

    move-result p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_10
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehPauseEnrollment()I

    move-result p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_11
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehIsTaSessionClosed()Z

    move-result p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_12
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehCloseTaSession()I

    move-result p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_13
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehOpenTaSession()I

    move-result p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_14
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p0, v0, v1, p1, p2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehAuthenticate(JILjava/util/ArrayList;)I

    move-result p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_15
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    const-string/jumbo p2, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFaceClientCallback"

    invoke-interface {p1, p2}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v0

    if-eqz v0, :cond_7

    instance-of v1, v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    if-eqz v1, :cond_7

    move-object v2, v0

    check-cast v2, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    goto :goto_2

    :cond_7
    new-instance v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Proxy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    :try_start_2
    invoke-virtual {v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Proxy;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, p4

    :cond_8
    if-ge v3, v1, :cond_9

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v4, :cond_8

    move-object v2, v0

    :catch_2
    :cond_9
    :goto_2
    invoke-interface {p0, v2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehSetCallback(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p0, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4

    :pswitch_16
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->resetLockout(Ljava/util/ArrayList;)I

    move-result p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_17
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_18
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->authenticate(J)I

    move-result p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_19
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->remove(I)I

    move-result p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_1a
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enumerate()I

    move-result p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_1b
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->cancel()I

    move-result p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_1c
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p0, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_1d
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    move-result-object p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    iget p2, p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->status:I

    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    iget-boolean p0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    invoke-virtual {p1, v0, v1, p0}, Landroid/os/HwBlob;->putBool(JZ)V

    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_1e
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setFeature(IZLjava/util/ArrayList;I)I

    move-result p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_1f
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->revokeChallenge()I

    move-result p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_20
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enroll(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_21
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->generateChallenge()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p0, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_22
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setActiveUser(ILjava/lang/String;)I

    move-result p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_23
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_3

    :cond_a
    const-string/jumbo p2, "android.hardware.biometrics.face@1.0::IBiometricsFaceClientCallback"

    invoke-interface {p1, p2}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v0

    if-eqz v0, :cond_b

    instance-of v1, v0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    if-eqz v1, :cond_b

    move-object v2, v0

    check-cast v2, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    goto :goto_3

    :cond_b
    new-instance v0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Proxy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    :try_start_3
    invoke-virtual {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Proxy;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, p4

    :cond_c
    if-ge v3, v1, :cond_d

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v4, :cond_c

    move-object v2, v0

    :catch_3
    :cond_d
    :goto_3
    invoke-interface {p0, v2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object p0

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p0, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

    const-string/jumbo v0, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final remove(I)I
    .locals 5

    const-string/jumbo v0, "face.hidl.TestHal"

    const-string/jumbo v1, "remove"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mSensorId:I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mUserId:I

    invoke-virtual {p1, v0, v2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/hardware/face/Face;

    invoke-virtual {v4}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mUserId:I

    invoke-interface {p1, p0, v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onRemoved(ILjava/util/ArrayList;)V

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mUserId:I

    invoke-interface {v0, p0, v2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onRemoved(ILjava/util/ArrayList;)V

    :cond_2
    :goto_1
    return v1
.end method

.method public final resetLockout(Ljava/util/ArrayList;)I
    .locals 0

    const-string/jumbo p0, "face.hidl.TestHal"

    const-string/jumbo p1, "resetLockout"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final revokeChallenge()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final sehAuthenticate(JILjava/util/ArrayList;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final sehAuthenticateForIssuance(JILjava/util/ArrayList;Z)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final sehCloseTaSession()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final sehGetEngineVersion()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final sehGetSecurityLevel(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetSecurityLevelCallback;)V
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x2

    invoke-interface {p1, p0, v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetSecurityLevelCallback;->onValues(II)V

    return-void
.end method

.method public final sehGetTaInfo()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final sehIsTaSessionClosed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final sehOpenTaSession()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final sehPauseEnrollment()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final sehResumeEnrollment()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public sehSetCallback(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object p0

    return-object p0
.end method

.method public sehSetCallbackEx(Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object p0

    return-object p0
.end method

.method public final sehSetFaceTag(Ljava/util/ArrayList;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final sehSetRotation(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setActiveUser(ILjava/lang/String;)I
    .locals 0

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mUserId:I

    const/4 p0, 0x0

    return p0
.end method

.method public final setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 0

    check-cast p1, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    return-object p0
.end method

.method public final setFeature(IZLjava/util/ArrayList;I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFace@Stub"

    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final userActivity()V
    .locals 0

    return-void
.end method
