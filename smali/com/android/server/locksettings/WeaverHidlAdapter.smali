.class public final Lcom/android/server/locksettings/WeaverHidlAdapter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/weaver/IWeaver;


# instance fields
.field public final mImpl:Landroid/hardware/weaver/V1_0/IWeaver;


# direct methods
.method public constructor <init>(Landroid/hardware/weaver/V1_0/IWeaver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/WeaverHidlAdapter;->mImpl:Landroid/hardware/weaver/V1_0/IWeaver;

    return-void
.end method

.method public static toByteArrayList([B)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "WeaverHidlAdapter does not support asBinder"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getConfig()Landroid/hardware/weaver/WeaverConfig;
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/hardware/weaver/WeaverConfig;

    iget-object p0, p0, Lcom/android/server/locksettings/WeaverHidlAdapter;->mImpl:Landroid/hardware/weaver/V1_0/IWeaver;

    check-cast p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v3, "android.hardware.weaver@1.0::IWeaver"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object p0, p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v4, 0x0

    invoke-interface {p0, v0, v2, v3, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v3}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v3}, Landroid/os/HwParcel;->readInt32()I

    move-result p0

    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    const-wide/16 v5, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v5

    const-wide/16 v6, 0x8

    invoke-virtual {v0, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    if-nez p0, :cond_0

    new-instance p0, Landroid/hardware/weaver/WeaverConfig;

    invoke-direct {p0}, Landroid/hardware/weaver/WeaverConfig;-><init>()V

    iput v2, p0, Landroid/hardware/weaver/WeaverConfig;->slots:I

    iput v5, p0, Landroid/hardware/weaver/WeaverConfig;->keySize:I

    iput v0, p0, Landroid/hardware/weaver/WeaverConfig;->valueSize:I

    aput-object p0, v1, v4

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Failed to get HIDL weaver config. status: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", slots: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "WeaverHidlAdapter"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    aget-object p0, v1, v4

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    throw p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final read(I[B)Landroid/hardware/weaver/WeaverReadResponse;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/weaver/WeaverReadResponse;

    iget-object p0, p0, Lcom/android/server/locksettings/WeaverHidlAdapter;->mImpl:Landroid/hardware/weaver/V1_0/IWeaver;

    invoke-static {p2}, Lcom/android/server/locksettings/WeaverHidlAdapter;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object p2

    new-instance v1, Lcom/android/server/locksettings/WeaverHidlAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/locksettings/WeaverHidlAdapter$$ExternalSyntheticLambda0;-><init>([Landroid/hardware/weaver/WeaverReadResponse;)V

    check-cast p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;

    invoke-virtual {p0, p1, p2, v1}, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->read(ILjava/util/ArrayList;Landroid/hardware/weaver/V1_0/IWeaver$readCallback;)V

    const/4 p0, 0x0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final write(I[B[B)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/locksettings/WeaverHidlAdapter;->mImpl:Landroid/hardware/weaver/V1_0/IWeaver;

    invoke-static {p2}, Lcom/android/server/locksettings/WeaverHidlAdapter;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p3}, Lcom/android/server/locksettings/WeaverHidlAdapter;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object p3

    check-cast p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v1, "android.hardware.weaver@1.0::IWeaver"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    :try_start_0
    iget-object p0, p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/os/ServiceSpecificException;

    const-string p2, "Failed IWeaver.write call, status: "

    invoke-static {p0, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p0
.end method
