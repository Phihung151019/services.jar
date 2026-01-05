.class public final synthetic Lcom/android/server/companion/transport/SecureTransport$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/transport/SecureTransport;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/transport/SecureTransport;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/transport/SecureTransport$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/transport/SecureTransport;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/server/companion/transport/SecureTransport$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/transport/SecureTransport;

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mShouldProcessRequests:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    invoke-virtual {v1, v0}, Lcom/android/server/companion/securechannel/SecureChannel;->sendSecureMessage([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CDM_CompanionTransport"

    const-string v2, "Failed to send secure message."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/companion/transport/SecureTransport;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method
