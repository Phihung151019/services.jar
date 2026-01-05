.class public final synthetic Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/backup/transport/TransportConnection;

.field public final synthetic f$1:Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;

.field public final synthetic f$2:Lcom/android/server/backup/transport/BackupTransportClient;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;Lcom/android/server/backup/transport/BackupTransportClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/backup/transport/TransportConnection;

    iput-object p2, p0, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;

    iput-object p3, p0, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/backup/transport/BackupTransportClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/backup/transport/TransportConnection;

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;

    iget-object p0, p0, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/backup/transport/BackupTransportClient;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
