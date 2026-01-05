.class public final Lcom/android/server/clipboard/EmulatorClipboardMonitor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final LOG_CLIBOARD_ACCESS:Z


# instance fields
.field public mPipe:Ljava/io/FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.boot.qemu.log_clipboard_access"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->LOG_CLIBOARD_ACCESS:Z

    return-void
.end method

.method public static openPipe()Ljava/io/FileDescriptor;
    .locals 2

    invoke-static {}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->openPipeImpl()Ljava/io/FileDescriptor;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->openPipeImpl()Ljava/io/FileDescriptor;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static openPipeImpl()Ljava/io/FileDescriptor;
    .locals 5

    :try_start_0
    sget v0, Landroid/system/OsConstants;->AF_VSOCK:I

    sget v1, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Landroid/system/VmSocketAddress;

    sget v3, Landroid/system/OsConstants;->VMADDR_CID_HOST:I

    const/16 v4, 0x1388

    invoke-direct {v1, v4, v3}, Landroid/system/VmSocketAddress;-><init>(II)V

    invoke-static {v0, v1}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    const-string/jumbo v1, "pipe:clipboard"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v3, 0xf

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const/16 v3, 0xe

    aput-byte v2, v1, v3

    array-length v2, v1

    invoke-static {v0, v1, v2}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->writeFully(Ljava/io/FileDescriptor;[BI)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    :try_start_2
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static receiveMessage(Ljava/io/FileDescriptor;)[B
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lez v0, :cond_1

    invoke-static {p0, v1, v3, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v4

    if-lez v4, :cond_0

    add-int/2addr v3, v4

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-ltz v0, :cond_4

    const/high16 v1, 0x8000000

    if-gt v0, v1, :cond_4

    new-array v1, v0, [B

    :goto_1
    if-lez v0, :cond_3

    invoke-static {p0, v1, v2, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v3

    if-lez v3, :cond_2

    add-int/2addr v2, v3

    sub-int/2addr v0, v3

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_3
    return-object v1

    :cond_4
    new-instance p0, Ljava/net/ProtocolException;

    const-string v1, "Clipboard message length: "

    const-string v2, " out of bounds."

    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sendMessage(Ljava/io/FileDescriptor;[B)V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {p0, v1, v0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->writeFully(Ljava/io/FileDescriptor;[BI)V

    array-length v0, p1

    invoke-static {p0, p1, v0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->writeFully(Ljava/io/FileDescriptor;[BI)V

    return-void
.end method

.method public static writeFully(Ljava/io/FileDescriptor;[BI)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-lez p2, :cond_1

    invoke-static {p0, p1, v0, p2}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    if-lez v1, :cond_0

    add-int/2addr v0, v1

    sub-int/2addr p2, v1

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/system/ErrnoException;

    const-string/jumbo p1, "write"

    sget p2, Landroid/system/OsConstants;->EIO:I

    invoke-direct {p0, p1, p2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Landroid/content/ClipData;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mPipe:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_3

    const-string p0, ""

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, v0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
