.class public final Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;
.super Landroid/os/HwBinder;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;


# instance fields
.field public final mAuthenticatorID:Landroid/util/SparseLongArray;

.field public mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

.field public final mContext:Landroid/content/Context;

.field public mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field public mCurrentEnrollmentId:I

.field public mCurrentUserID:I

.field public final mDeviceId:J

.field public final mEnrollmentIds:Ljava/util/Set;

.field public final mH:Landroid/os/Handler;

.field public final mIsCancellation:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mIsTpaMode:Z

.field public final mRandom:Ljava/util/Random;

.field public final mRequestActionTable:Landroid/util/SparseIntArray;

.field public final mSehRequestOutput:Ljava/util/ArrayList;

.field public final mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

.field public final mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsCancellation:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    invoke-direct {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mSehRequestOutput:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRandom:Ljava/util/Random;

    new-instance p2, Landroid/util/SparseLongArray;

    invoke-direct {p2}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mAuthenticatorID:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mDeviceId:J

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRequestActionTable:Landroid/util/SparseIntArray;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mEnrollmentIds:Ljava/util/Set;

    if-eqz p3, :cond_0

    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;)V

    new-instance p2, Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    const/4 p3, 0x2

    invoke-direct {p2, p3, p1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;-><init>(ILcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    new-instance p1, Lcom/android/server/ServiceThread;

    const/4 p2, 0x1

    const-string/jumbo p3, "fingerprint.hidl.SehTestHal"

    const/4 v0, -0x2

    invoke-direct {p1, p3, v0, p2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->start()V

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mH:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    const/4 p0, 0x6

    const p2, 0x186c8

    invoke-virtual {p1, p0, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public final authenticate(IJ)I
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string/jumbo p2, "authenticateTPA: "

    const-string p3, ", "

    invoke-static {p1, p2, p3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    const-string/jumbo v0, "fingerprint.hidl.SehTestHal"

    invoke-static {p2, p3, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    if-eq p2, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    iget-wide p2, p2, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mDelayAuthAction:J

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mH:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;I)V

    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-nez p0, :cond_1

    const-wide/16 p2, 0x258

    :cond_1
    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    :cond_2
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->authenticate(IJ)I

    return v1
.end method

.method public final cancel()I
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsCancellation:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mH:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->cancel()I

    return v1
.end method

.method public final debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method public final deliverErrorEvent(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mDeviceId:J

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onError(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public final enroll(II[B)I
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string/jumbo p2, "enrollTPA: "

    const-string p3, ", "

    invoke-static {p1, p2, p3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    const-string/jumbo v0, "fingerprint.hidl.SehTestHal"

    invoke-static {p2, p3, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    if-eq p2, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mH:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;I)V

    const-wide/16 v2, 0x258

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->enroll(II[B)I

    return v1
.end method

.method public final enumerate()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->enumerate()I

    const/4 p0, 0x0

    return p0
.end method

.method public final getAuthenticatorId()J
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mEnrollmentIds:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mAuthenticatorID:Landroid/util/SparseLongArray;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    invoke-virtual {v0, p0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-wide v1
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
    .locals 3

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    filled-new-array {v1, v2, v0}, [[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_0
    .array-data 1
        0x21t
        0x35t
        0x57t
        -0x25t
        0x52t
        -0x4t
        -0xet
        -0x35t
        -0x56t
        0x19t
        -0x3ft
        -0x65t
        -0x45t
        -0x51t
        -0x7ct
        -0x1at
        -0x7t
        0x61t
        -0x2ft
        0x76t
        -0x32t
        0x54t
        0xft
        -0x4at
        -0x4bt
        0x4at
        -0x24t
        -0x4ft
        0x37t
        0x52t
        0xbt
        0x23t
    .end array-data

    :array_1
    .array-data 1
        0x1ft
        -0x43t
        -0x3ft
        -0x8t
        0x52t
        -0x8t
        -0x43t
        0x2et
        0x4at
        0x6ct
        0x5ct
        -0x4dt
        0xat
        -0x3et
        -0x49t
        -0x7at
        0x68t
        -0x37t
        -0x73t
        -0x32t
        0x11t
        -0x76t
        0x61t
        0x76t
        0x2dt
        0x40t
        0x34t
        -0x52t
        -0x7bt
        -0x61t
        0x43t
        -0x28t
    .end array-data

    :array_2
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
    .locals 3

    new-instance p0, Ljava/util/ArrayList;

    const-string/jumbo v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    const-string/jumbo v2, "vendor.samsung.hardware.biometrics.fingerprint@3.0::ISehBiometricsFingerprint"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "vendor.samsung.hardware.biometrics.fingerprint@3.0::ISehBiometricsFingerprint"

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

    const-string/jumbo p4, "vendor.samsung.hardware.biometrics.fingerprint@3.0::ISehBiometricsFingerprint"

    const-wide/16 v0, 0x0

    const-string/jumbo v2, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    return-void

    :sswitch_0
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void

    :sswitch_1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    return-void

    :sswitch_4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v4, 0x8

    invoke-virtual {p1, v4, v5, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v2, p2, 0x20

    invoke-direct {p4, v2}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v3, p2, :cond_1

    mul-int/lit8 v2, v3, 0x20

    int-to-long v4, v2

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_0

    array-length v6, v2

    const/16 v7, 0x20

    if-ne v6, v7, :cond_0

    invoke-virtual {p4, v4, v5, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    new-instance v0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub$1;

    invoke-direct {v0, p3}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub$1;-><init>(Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p4, p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->sehRequest(IILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;)V

    return-void

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->authenticate(IJ)I

    move-result p0

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->setActiveGroup(ILjava/lang/String;)I

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->remove(II)I

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->enumerate()I

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->cancel()I

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->getAuthenticatorId()J

    move-result-wide p0

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0, p1}, Landroid/os/HwParcel;->writeInt64(J)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->postEnroll()I

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 p1, 0x45

    new-array p4, p1, [B

    const-wide/16 v4, 0x45

    invoke-virtual {p2, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->enroll(II[B)I

    move-result p0

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->preEnroll()J

    move-result-wide p0

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0, p1}, Landroid/os/HwParcel;->writeInt64(J)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    const-wide/16 p0, 0x1

    invoke-virtual {p3, p0, p1}, Landroid/os/HwParcel;->writeInt64(J)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

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

.method public final postEnroll()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v1
.end method

.method public final preEnroll()J
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRandom:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string/jumbo v0, "vendor.samsung.hardware.biometrics.fingerprint@3.0::ISehBiometricsFingerprint"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final remove(II)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->remove(II)I

    const/4 p0, 0x0

    return p0
.end method

.method public final sehRequest(IILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;)V
    .locals 1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sehRequest: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "fingerprint.hidl.SehTestHal"

    invoke-static {v0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRequestActionTable:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mSehRequestOutput:Ljava/util/ArrayList;

    invoke-interface {p4, p3, v0}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;->onValues(ILjava/util/ArrayList;)V

    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mSehRequestOutput:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    const/16 p3, 0x16

    if-ne p1, p3, :cond_0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public final setActiveGroup(ILjava/lang/String;)I
    .locals 0

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public final setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    const-wide/16 p0, 0x1

    return-wide p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "vendor.samsung.hardware.biometrics.fingerprint@3.0::ISehBiometricsFingerprint@Stub"

    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
