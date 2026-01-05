.class public final Lcom/android/server/backup/remote/FutureBackupCallback;
.super Landroid/app/backup/IBackupCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mFuture:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/backup/IBackupCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/remote/FutureBackupCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final operationComplete(J)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/backup/remote/FutureBackupCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    new-instance v0, Lcom/android/server/backup/remote/RemoteResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/backup/remote/RemoteResult;-><init>(IJ)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
