.class public final Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mContent:[B

.field public mProtectorType:B

.field public mVersion:B


# direct methods
.method public static fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
    .locals 3

    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    iput-byte v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    iput-byte v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mProtectorType:B

    const/4 v1, 0x2

    array-length v2, p0

    invoke-static {p0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mContent:[B

    return-object v0
.end method
