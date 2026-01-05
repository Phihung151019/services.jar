.class public abstract Lcom/android/server/knox/dar/sdp/SDPLogFile;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final FILE_LOCK:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/android/server/knox/dar/sdp/SDPLogFile;->FILE_LOCK:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public static check(Ljava/io/RandomAccessFile;)V
    .locals 4

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x11

    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    const-wide/32 v0, 0x200000

    cmp-long v2, v2, v0

    if-gtz v2, :cond_2

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "Version mismatched"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "File corrupted"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "File size exceeded"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Broken file header"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "File created from scratch"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Unexpected error"

    invoke-direct {v0, v1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static checkAndReset(Ljava/io/RandomAccessFile;)V
    .locals 5

    :try_start_0
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLogFile;->check(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLogUtil;->makeDebugMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    array-length v1, v0

    int-to-long v1, v1

    const-wide/16 v3, 0x12

    add-long/2addr v1, v3

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const-wide/16 v3, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Ljava/io/RandomAccessFile;->write(I)V

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {p0, v3}, Ljava/io/RandomAccessFile;->write(I)V

    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    :cond_0
    return-void
.end method
