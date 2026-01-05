.class public final Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final run()V
    .locals 13

    const/4 p0, 0x1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v1, 0x2

    move v2, v0

    :goto_0
    if-lez v1, :cond_7

    sget-boolean v2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    :try_start_0
    sget v4, Lcom/android/server/am/FreecessController;->NETLINK_KFREECESS:I

    sget v5, Landroid/system/OsConstants;->AF_NETLINK:I

    sget v6, Landroid/system/OsConstants;->SOCK_DGRAM:I

    invoke-static {v5, v6, v4}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v4

    sget v5, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v6, Landroid/system/OsConstants;->SO_RCVBUF:I

    const/high16 v7, 0x10000

    invoke-static {v4, v5, v6, v7}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    iput-object v4, v2, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    invoke-static {v0, v0}, Landroid/net/util/SocketUtils;->makeNetlinkSocketAddress(II)Ljava/net/SocketAddress;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    const/16 v4, 0x9c

    sput v4, Lcom/android/server/am/FreecessController;->DEFAULT_RECV_BUFSIZE:I

    move v5, p0

    :goto_1
    const/4 v6, 0x4

    if-gt v5, v6, :cond_4

    invoke-static {p0, v5, v0, v0, v0}, Lcom/android/server/am/mars/netlink/FreecessNetlinkMessage;->newFreecessRequest(IIIII)[B

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    sget v8, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v9, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v12

    invoke-static {v7, v8, v9, v12}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    invoke-static {v7, v6, v0, v4}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v6

    if-gez v6, :cond_1

    iget-object v4, v2, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_0

    :try_start_1
    invoke-static {v4}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    iput-object v3, v2, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    const-string v4, "FreecessController"

    const-string/jumbo v5, "initSendRecvMsgNetLink sendMessage error"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v2, v0

    goto :goto_6

    :catch_1
    move-exception v4

    goto :goto_4

    :cond_1
    iget-object v6, v2, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    sget v7, Lcom/android/server/am/FreecessController;->DEFAULT_RECV_BUFSIZE:I

    invoke-static {v6, v7, v10, v11}, Lcom/android/server/am/mars/netlink/NetlinkSocket;->recvMessage(Ljava/io/FileDescriptor;IJ)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/am/mars/netlink/StructFreeCessMsg;

    move-result-object v6

    iget v6, v6, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->version:I

    const/high16 v7, 0x10000000

    const/high16 v8, 0x20000000

    if-eq v6, v7, :cond_2

    if-eq v6, v8, :cond_2

    iput-boolean p0, v2, Lcom/android/server/am/FreecessController;->mMismatchFlag:Z

    :cond_2
    if-ne v6, v8, :cond_3

    iput-boolean p0, v2, Lcom/android/server/am/FreecessController;->mIsUsingCgroupV2:Z

    invoke-virtual {v2}, Lcom/android/server/am/FreecessController;->updateCgroupVersionToSsrm()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    add-int/2addr v5, p0

    goto :goto_1

    :cond_4
    move v2, p0

    goto :goto_6

    :goto_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v4, v2, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    if-eqz v4, :cond_5

    :try_start_3
    invoke-static {v4}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_5
    iput-object v3, v2, Lcom/android/server/am/FreecessController;->mSendRecvNetLinkFd:Ljava/io/FileDescriptor;

    goto :goto_3

    :goto_6
    if-eqz v2, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v1, v1, -0x1

    const-wide/16 v3, 0x3e8

    :try_start_4
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    :goto_7
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0, v2}, Lcom/android/server/am/FreecessController;->reportSocketResult(Z)V

    if-eqz v2, :cond_8

    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    new-instance v1, Lcom/android/server/am/FreecessHandler$FreecessThread;

    const-string v2, "FreecessHandler"

    invoke-direct {v1, v2, v0, v0}, Lcom/android/server/am/FreecessHandler$FreecessThread;-><init>(Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/android/server/am/FreecessHandler;->mFreecessThread:Lcom/android/server/am/FreecessHandler$FreecessThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-static {}, Lcom/android/server/am/FreecessHandler;->receiveNetLinkInformationContinously()V

    :cond_8
    return-void
.end method
