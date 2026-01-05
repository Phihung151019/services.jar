.class public abstract Lcom/android/server/backup/utils/FullBackupUtils;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .locals 5

    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/high16 v0, 0x10000

    new-array v1, v0, [B

    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-lez v2, :cond_3

    :goto_0
    if-lez v2, :cond_0

    if-le v2, v0, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {p1, v1, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_2
    const-string p0, "BackupManagerService"

    const-string/jumbo p1, "Unexpectedly reached end of file while reading data"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method
