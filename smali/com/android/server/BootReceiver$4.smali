.class public final Lcom/android/server/BootReceiver$4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# instance fields
.field public mTraceBuffer:[B


# virtual methods
.method public final onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .locals 2

    const/4 p2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/BootReceiver$4;->mTraceBuffer:[B

    const/16 v1, 0x400

    invoke-static {p1, v0, p2, v1}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/BootReceiver$4;->mTraceBuffer:[B

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return v1

    :cond_0
    :try_start_1
    sget p0, Lcom/android/server/BootReceiver;->sSentReports:I

    const/16 v0, 0x8

    if-ge p0, v0, :cond_1

    const-string/jumbo p0, "dmesgd.start"

    const-string v0, "1"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lcom/android/server/BootReceiver;->sSentReports:I

    add-int/2addr p0, v1

    sput p0, Lcom/android/server/BootReceiver;->sSentReports:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return v1

    :goto_1
    :try_start_2
    const-string v0, "BootReceiver"

    const-string v1, "Error watching for trace events"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return p2

    :goto_2
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    throw p0
.end method
