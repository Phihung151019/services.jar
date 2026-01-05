.class public final Lcom/android/server/companion/transport/SecureTransport;
.super Lcom/android/server/companion/transport/Transport;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mRequestQueue:Ljava/util/concurrent/BlockingQueue;

.field public final mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

.field public volatile mShouldProcessRequests:Z


# direct methods
.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;I)V
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/transport/Transport;-><init>(ILandroid/os/ParcelFileDescriptor;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/companion/transport/SecureTransport;->mShouldProcessRequests:Z

    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 p2, 0x1f4

    invoke-direct {p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/companion/transport/SecureTransport;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/android/server/companion/securechannel/SecureChannel;

    iget-object v1, p0, Lcom/android/server/companion/transport/Transport;->mRemoteIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/android/server/companion/transport/Transport;->mRemoteOut:Ljava/io/OutputStream;

    new-instance v5, Lcom/android/server/companion/securechannel/AttestationVerifier;

    invoke-direct {v5, p3, p4}, Lcom/android/server/companion/securechannel/AttestationVerifier;-><init>(Landroid/content/Context;I)V

    const/4 v4, 0x0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/securechannel/SecureChannel;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/android/server/companion/transport/SecureTransport;[BLcom/android/server/companion/securechannel/AttestationVerifier;)V

    iput-object v0, v3, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    return-void
.end method

.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;[B)V
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/transport/Transport;-><init>(ILandroid/os/ParcelFileDescriptor;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/companion/transport/SecureTransport;->mShouldProcessRequests:Z

    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 p2, 0x1f4

    invoke-direct {p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/companion/transport/SecureTransport;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/android/server/companion/securechannel/SecureChannel;

    iget-object v1, p0, Lcom/android/server/companion/transport/Transport;->mRemoteIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/android/server/companion/transport/Transport;->mRemoteOut:Ljava/io/OutputStream;

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/securechannel/SecureChannel;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/android/server/companion/transport/SecureTransport;[BLcom/android/server/companion/securechannel/AttestationVerifier;)V

    iput-object v0, v3, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    invoke-virtual {v0}, Lcom/android/server/companion/securechannel/SecureChannel;->close()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mShouldProcessRequests:Z

    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mOnTransportClosed:Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda2;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    iget-object v1, v0, Lcom/android/server/companion/transport/CompanionTransportManager;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v1, p0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/companion/transport/CompanionTransportManager;->detachSystemDataTransport(I)V

    :cond_0
    return-void
.end method

.method public final sendMessage(II[B)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mShouldProcessRequests:Z

    const-string v1, "CDM_CompanionTransport"

    if-nez v0, :cond_2

    const-string v0, "Establishing secure connection."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    invoke-virtual {v0}, Lcom/android/server/companion/securechannel/SecureChannel;->isSecured()Z

    move-result v2

    const-string v3, "CDM_SecureChannel"

    if-eqz v2, :cond_0

    const-string v0, "Channel is already secure."

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-boolean v2, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    if-eqz v2, :cond_1

    const-string v0, "Channel has already started establishing secure connection."

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    invoke-virtual {v0}, Lcom/android/server/companion/securechannel/SecureChannel;->initiateHandshake()V
    :try_end_1
    .catch Lcom/google/security/cryptauth/lib/securegcm/ukey2/BadHandleException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string v3, "Failed to initiate handshake protocol."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    const-string v2, "Failed to initiate secure channel handshake."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/companion/transport/SecureTransport;->close()V

    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Queueing message 0x"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sequence "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " length "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to association "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    invoke-static {v0, v2, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    array-length v2, p3

    add-int/lit8 v2, v2, 0xc

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    array-length v2, p3

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to queue message 0x"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " . Request buffer is full; detaching transport."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/companion/transport/SecureTransport;->close()V

    :goto_1
    return-void
.end method

.method public final start()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "CDM_SecureChannel"

    const-string/jumbo v1, "Starting secure channel."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/companion/securechannel/SecureChannel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/companion/securechannel/SecureChannel$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/securechannel/SecureChannel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final stop()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    sget-boolean v1, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "CDM_SecureChannel"

    const-string/jumbo v2, "Stopping secure channel."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    iput-boolean v1, p0, Lcom/android/server/companion/transport/SecureTransport;->mShouldProcessRequests:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SecureTransport{mAssociationId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSecureChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
