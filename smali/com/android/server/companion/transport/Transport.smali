.class public abstract Lcom/android/server/companion/transport/Transport;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAssociationId:I

.field public final mListeners:Landroid/util/SparseArray;

.field public final mNextSequence:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mOnTransportClosed:Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda2;

.field public final mPendingRequests:Landroid/util/SparseArray;

.field public final mRemoteIn:Ljava/io/InputStream;

.field public final mRemoteOut:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/transport/Transport;->mNextSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p1, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p1, p0, Lcom/android/server/companion/transport/Transport;->mRemoteIn:Ljava/io/InputStream;

    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p1, p0, Lcom/android/server/companion/transport/Transport;->mRemoteOut:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public final addListener(ILandroid/companion/IOnMessageReceivedListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final callback(I[B)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "CDM_CompanionTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Message 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " is received from associationId "

    invoke-static {p1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sending data length "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to the listener(s)."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/IOnMessageReceivedListener;

    :try_start_1
    iget v1, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    invoke-interface {v0, v1, p2}, Landroid/companion/IOnMessageReceivedListener;->onMessageReceived(I[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final handleMessage(II[B)V
    .locals 3

    sget-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CDM_CompanionTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Received message 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sequence "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from association "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    invoke-static {v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    const/high16 v1, 0x43000000    # 128.0f

    if-ne v0, v1, :cond_2

    const p2, 0x43708287

    if-eq p1, p2, :cond_1

    const p2, 0x43807378

    if-eq p1, p2, :cond_1

    const p2, 0x43847987

    if-eq p1, p2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Ignoring unknown message 0x"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CDM_CompanionTransport"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/companion/transport/Transport;->callback(I[B)V

    return-void

    :cond_2
    const/high16 v1, 0x63000000

    if-ne v0, v1, :cond_3

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/transport/Transport;->processRequest(II[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p2, "CDM_CompanionTransport"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to respond to 0x"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_3
    const/high16 v1, 0x33000000

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_4

    const-string p0, "CDM_CompanionTransport"

    const-string p1, "Ignoring unknown sequence "

    invoke-static {p2, p1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const p2, 0x33706573

    if-eq p1, p2, :cond_6

    const p2, 0x33838567

    if-eq p1, p2, :cond_5

    const-string p0, "CDM_CompanionTransport"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Ignoring unknown response 0x"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-virtual {p0, p3}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "Remote failure"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_7
    const-string p0, "CDM_CompanionTransport"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Unknown message 0x"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final processRequest(II[B)V
    .locals 3

    const v0, 0x33706573

    const-string v1, "CDM_CompanionTransport"

    const v2, 0x33838567

    sparse-switch p1, :sswitch_data_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown request 0x"

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    return-void

    :sswitch_0
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/companion/transport/Transport;->callback(I[B)V

    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Failed to restore permissions"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    return-void

    :sswitch_1
    invoke-virtual {p0, v2, p2, p3}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    return-void

    :sswitch_2
    invoke-virtual {p0, p1, p3}, Lcom/android/server/companion/transport/Transport;->callback(I[B)V

    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x63678883 -> :sswitch_2
        0x63807378 -> :sswitch_1
        0x63826983 -> :sswitch_0
        0x63827765 -> :sswitch_2
    .end sparse-switch
.end method

.method public final sendMessage(I[B)Ljava/util/concurrent/Future;
    .locals 4

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    const/high16 v1, -0x1000000

    and-int/2addr v1, p1

    const/high16 v2, 0x43000000    # 128.0f

    if-ne v1, v2, :cond_1

    sget-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CDM_CompanionTransport"

    const-string/jumbo v1, "Sending a one-way message"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-object v0

    :cond_1
    const/high16 v2, 0x63000000

    if-ne v1, v2, :cond_3

    sget-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "CDM_CompanionTransport"

    const-string/jumbo v1, "Requesting for response"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mNextSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object v2, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catch_1
    move-exception p1

    iget-object p2, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    monitor-enter p2

    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :cond_3
    const-string p0, "CDM_CompanionTransport"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Failed to send message 0x"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "The message being sent must be either a one-way or a request."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public abstract sendMessage(II[B)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
