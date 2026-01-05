.class public final Landroid/hardware/security/keymint/RpcHardwareInfo$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    new-instance p0, Landroid/hardware/security/keymint/RpcHardwareInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->versionNumber:I

    iput v0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->supportedEekCurve:I

    const/4 v0, 0x4

    iput v0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->supportedNumKeysInCsr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const-string/jumbo v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v2, v0, :cond_b

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    if-lt v0, v2, :cond_1

    sub-int/2addr v4, v2

    if-gt v1, v4, :cond_0

    :goto_0
    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p0

    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->versionNumber:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v0, v1

    if-lt v0, v2, :cond_3

    sub-int/2addr v4, v2

    if-gt v1, v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->rpcAuthorName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v0, v1

    if-lt v0, v2, :cond_5

    sub-int/2addr v4, v2

    if-gt v1, v4, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->supportedEekCurve:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v0, v1

    if-lt v0, v2, :cond_7

    sub-int/2addr v4, v2

    if-gt v1, v4, :cond_6

    goto :goto_0

    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v0, v1

    if-lt v0, v2, :cond_9

    sub-int/2addr v4, v2

    if-gt v1, v4, :cond_8

    goto :goto_0

    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->supportedNumKeysInCsr:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v4, v2

    if-gt v1, v4, :cond_a

    goto :goto_0

    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_b
    :try_start_6
    new-instance p0, Landroid/os/BadParcelableException;

    const-string/jumbo v0, "Parcelable too small"

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    sub-int/2addr v4, v2

    if-le v1, v4, :cond_c

    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    throw p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Landroid/hardware/security/keymint/RpcHardwareInfo;

    return-object p0
.end method
