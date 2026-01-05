.class public final synthetic Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/RemoteDisplayProviderProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Service disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "RemoteDisplayProvider"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->disconnect()V

    return-void
.end method
