.class public final Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final cLock:Ljava/lang/Object;

.field public static mLogQ:Ljava/util/Queue;

.field public static mSavQ:Ljava/util/Queue;

.field public static mState:I

.field public static final qLock:Ljava/lang/Object;


# direct methods
.method public static -$$Nest$madd(Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->qLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mLogQ:Ljava/util/Queue;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_0

    const-string/jumbo v1, "Log buffer reached the limit! Clearing the buffer..."

    sget-object v2, Lcom/android/server/knox/dar/sdp/SDPLogger;->mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    const-string/jumbo v2, "SDPLogger"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const-string v1, "ACLog: Unfortunately buffer cleared to prevent overflow!"

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLogUtil;->makeDebugMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mLogQ:Ljava/util/Queue;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->cLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->qLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mLogQ:Ljava/util/Queue;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mState:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    :goto_0
    sget-object p0, Lcom/android/server/knox/dar/sdp/SDPLogger;->mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object p0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->qLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mLogQ:Ljava/util/Queue;

    sput-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mSavQ:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mLogQ:Ljava/util/Queue;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    sget-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->cLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 p0, 0x2

    :try_start_2
    sput p0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mState:I

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    sget-object p0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mSavQ:Ljava/util/Queue;

    sget-object v0, Lcom/android/server/knox/dar/sdp/SDPLogFile;->FILE_LOCK:Ljava/util/concurrent/locks/Lock;

    const-string v0, "/data/log/sdp_log"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Saving logs... [QS : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "SDPLogFile"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/android/server/knox/dar/sdp/SDPLogFile;->FILE_LOCK:Ljava/util/concurrent/locks/Lock;

    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_3
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rwd"

    invoke-direct {v1, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLogFile;->checkAndReset(Ljava/io/RandomAccessFile;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_1
    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo v8, "UTF-8"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    array-length v8, v7

    int-to-long v8, v8

    add-long/2addr v5, v8

    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    const-wide/32 v8, 0x200000

    cmp-long v5, v5, v8

    if-lez v5, :cond_2

    const-wide/16 v5, 0x11

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    invoke-virtual {v1, v7}, Ljava/io/RandomAccessFile;->write([B)V

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->write(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const/16 p0, 0x3ef

    const/16 v3, 0x1a0

    const/16 v4, 0x3e8

    invoke-static {v0, v3, v4, p0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Set permission : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string/jumbo v0, "SDPLogFile"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "Saving success! [FP : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", FS : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "SDPLogFile"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to save logs : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v1, "SDPLogFile"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    sget-object p0, Lcom/android/server/knox/dar/sdp/SDPLogFile;->FILE_LOCK:Ljava/util/concurrent/locks/Lock;

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object p0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mSavQ:Ljava/util/Queue;

    check-cast p0, Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    const/4 p0, 0x0

    sput-object p0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mSavQ:Ljava/util/Queue;

    sget-object p0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->cLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_8
    sget-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->qLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    sget-object v1, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mLogQ:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/android/server/knox/dar/sdp/SDPLogger;->mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    const/4 v1, 0x1

    sput v1, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mState:I

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v1

    goto :goto_6

    :cond_6
    :try_start_b
    sget-object v1, Lcom/android/server/knox/dar/sdp/SDPLogger;->mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    const/4 v1, 0x0

    sput v1, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mState:I

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_8

    :goto_6
    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v1

    :goto_7
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v0

    :catchall_4
    move-exception p0

    :try_start_f
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw p0

    :catchall_5
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v0

    :catch_1
    const-string/jumbo p0, "Logger interrupted!"

    const-string/jumbo v0, "SDPLogger"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    return-void
.end method
