.class public abstract Lcom/android/server/biometrics/HardwareAuthTokenUtils;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static getLong(I[B)J
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    add-int v3, v2, p0

    aget-byte v3, p1, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static toByteArray(Landroid/hardware/keymaster/HardwareAuthToken;)[B
    .locals 6

    const/16 v0, 0x45

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    iget-wide v2, p0, Landroid/hardware/keymaster/HardwareAuthToken;->challenge:J

    const/4 v4, 0x1

    invoke-static {v2, v3, v0, v4}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->writeLong(J[BI)V

    iget-wide v2, p0, Landroid/hardware/keymaster/HardwareAuthToken;->userId:J

    const/16 v4, 0x9

    invoke-static {v2, v3, v0, v4}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->writeLong(J[BI)V

    iget-wide v2, p0, Landroid/hardware/keymaster/HardwareAuthToken;->authenticatorId:J

    const/16 v4, 0x11

    invoke-static {v2, v3, v0, v4}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->writeLong(J[BI)V

    iget v2, p0, Landroid/hardware/keymaster/HardwareAuthToken;->authenticatorType:I

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    if-ne v3, v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    :cond_0
    int-to-byte v4, v2

    const/16 v5, 0x19

    aput-byte v4, v0, v5

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    const/16 v5, 0x1a

    aput-byte v4, v0, v5

    shr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    const/16 v5, 0x1b

    aput-byte v4, v0, v5

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    const/16 v4, 0x1c

    aput-byte v2, v0, v4

    iget-object v2, p0, Landroid/hardware/keymaster/HardwareAuthToken;->timestamp:Landroid/hardware/keymaster/Timestamp;

    iget-wide v4, v2, Landroid/hardware/keymaster/Timestamp;->milliSeconds:J

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    if-ne v3, v2, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v4

    :cond_1
    const/16 v2, 0x1d

    invoke-static {v4, v5, v0, v2}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->writeLong(J[BI)V

    iget-object p0, p0, Landroid/hardware/keymaster/HardwareAuthToken;->mac:[B

    array-length v2, p0

    const/16 v3, 0x25

    invoke-static {p0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;
    .locals 7

    new-instance v0, Landroid/hardware/keymaster/HardwareAuthToken;

    invoke-direct {v0}, Landroid/hardware/keymaster/HardwareAuthToken;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1, p0}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->getLong(I[B)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/keymaster/HardwareAuthToken;->challenge:J

    const/16 v1, 0x9

    invoke-static {v1, p0}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->getLong(I[B)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/keymaster/HardwareAuthToken;->userId:J

    const/16 v1, 0x11

    invoke-static {v1, p0}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->getLong(I[B)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/keymaster/HardwareAuthToken;->authenticatorId:J

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v2, v4, :cond_0

    add-int/lit8 v4, v2, 0x19

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    mul-int/lit8 v5, v2, 0x8

    shl-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    if-ne v2, v4, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    :cond_1
    iput v3, v0, Landroid/hardware/keymaster/HardwareAuthToken;->authenticatorType:I

    new-instance v3, Landroid/hardware/keymaster/Timestamp;

    invoke-direct {v3}, Landroid/hardware/keymaster/Timestamp;-><init>()V

    const/16 v4, 0x1d

    invoke-static {v4, p0}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->getLong(I[B)J

    move-result-wide v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    if-ne v2, v6, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v4

    :cond_2
    iput-wide v4, v3, Landroid/hardware/keymaster/Timestamp;->milliSeconds:J

    iput-object v3, v0, Landroid/hardware/keymaster/HardwareAuthToken;->timestamp:Landroid/hardware/keymaster/Timestamp;

    const/16 v2, 0x20

    new-array v3, v2, [B

    iput-object v3, v0, Landroid/hardware/keymaster/HardwareAuthToken;->mac:[B

    const/16 v4, 0x25

    invoke-static {p0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static writeLong(J[BI)V
    .locals 3

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x8

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x10

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x18

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x20

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x5

    const/16 v1, 0x28

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x6

    const/16 v1, 0x30

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x7

    const/16 v0, 0x38

    shr-long/2addr p0, v0

    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, p2, p3

    return-void
.end method
