.class public final Lcom/android/server/am/LmkdConnection;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mInputBuf:Ljava/nio/ByteBuffer;

.field public final mInputData:Ljava/io/DataInputStream;

.field public final mListener:Lcom/android/server/am/ProcessList$1;

.field public mLmkdInputStream:Ljava/io/InputStream;

.field public final mLmkdInputStreamLock:Ljava/lang/Object;

.field public mLmkdOutputStream:Ljava/io/OutputStream;

.field public final mLmkdOutputStreamLock:Ljava/lang/Object;

.field public mLmkdSocket:Landroid/net/LocalSocket;

.field public final mLmkdSocketLock:Ljava/lang/Object;

.field public final mMsgQueue:Landroid/os/MessageQueue;

.field public mReplyBuf:Ljava/nio/ByteBuffer;

.field public final mReplyBufLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/MessageQueue;Lcom/android/server/am/ProcessList$1;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdOutputStreamLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdOutputStream:Ljava/io/OutputStream;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdInputStreamLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdInputStream:Ljava/io/InputStream;

    const/16 v1, 0xde

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/android/server/am/LmkdConnection;->mInputData:Ljava/io/DataInputStream;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/android/server/am/LmkdConnection;->mMsgQueue:Landroid/os/MessageQueue;

    iput-object p2, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/ProcessList$1;

    return-void
.end method

.method public static openSocket()Landroid/net/LocalSocket;
    .locals 4

    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string/jumbo v2, "lmkd"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final processIncomingData()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdInputStreamLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mLmkdInputStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v2, v4, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    :cond_0
    const/4 v0, -0x1

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v0, :cond_5

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mInputData:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->reset()V

    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/ProcessList$1;

    iget-object v5, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    array-length v4, v4

    if-ne v0, v4, :cond_1

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    if-ne v4, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/ProcessList$1;

    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mInputData:Ljava/io/DataInputStream;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/ProcessList$1;->handleUnsolicitedMessage(Ljava/io/DataInputStream;I)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const-string p0, "ActivityManager"

    const-string/jumbo v2, "Received an unexpected packet from lmkd"

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/ProcessList$1;

    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mInputData:Ljava/io/DataInputStream;

    invoke-virtual {v2, p0, v0}, Lcom/android/server/am/ProcessList$1;->handleUnsolicitedMessage(Ljava/io/DataInputStream;I)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "ActivityManager"

    const-string/jumbo v2, "Received an unexpected packet from lmkd, replybuf is null"

    invoke-static {p0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    monitor-exit v1

    goto :goto_4

    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    const-string p0, "ActivityManager"

    const-string v1, "Failed to parse lmkd data buffer. Size = "

    invoke-static {v0, v1, p0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    return-void

    :goto_5
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final write(Ljava/nio/ByteBuffer;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdOutputStreamLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    invoke-virtual {p0, v2, v1, p1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
