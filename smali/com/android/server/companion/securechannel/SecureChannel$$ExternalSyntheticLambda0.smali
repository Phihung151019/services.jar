.class public final synthetic Lcom/android/server/companion/securechannel/SecureChannel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/securechannel/SecureChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/securechannel/SecureChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/securechannel/SecureChannel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/securechannel/SecureChannel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "CDM_SecureChannel"

    const-string/jumbo v2, "Ukey2 handshake is already completed."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object v0

    iput-boolean v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    iget-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel;->completeHandshake([B)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->exchangeAuthentication()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mCallback:Lcom/android/server/companion/transport/SecureTransport;

    iput-boolean v1, v0, Lcom/android/server/companion/transport/SecureTransport;->mShouldProcessRequests:Z

    const-string v1, "CDM_CompanionTransport"

    const-string/jumbo v2, "Secure connection established."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/companion/transport/SecureTransport$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/companion/transport/SecureTransport$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/transport/SecureTransport;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_1
    iget-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->receiveSecureMessage()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    iget-boolean v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    const-string v1, "CDM_SecureChannel"

    const-string/jumbo v2, "Secure channel encountered an error."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->close()V

    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mCallback:Lcom/android/server/companion/transport/SecureTransport;

    const-string v1, "CDM_CompanionTransport"

    const-string/jumbo v2, "Secure transport encountered an error."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    iget-boolean v0, v0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/companion/transport/SecureTransport;->close()V

    :cond_2
    :goto_3
    return-void
.end method
