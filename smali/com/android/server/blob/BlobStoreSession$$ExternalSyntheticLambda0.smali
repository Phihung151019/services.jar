.class public final synthetic Lcom/android/server/blob/BlobStoreSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/ParcelFileDescriptor$OnCloseListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/blob/BlobStoreSession;

.field public final synthetic f$1:Landroid/os/RevocableFileDescriptor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreSession;Landroid/os/RevocableFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/BlobStoreSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/blob/BlobStoreSession;

    iput-object p2, p0, Lcom/android/server/blob/BlobStoreSession$$ExternalSyntheticLambda0;->f$1:Landroid/os/RevocableFileDescriptor;

    return-void
.end method


# virtual methods
.method public final onClose(Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/blob/BlobStoreSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/blob/BlobStoreSession;

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession$$ExternalSyntheticLambda0;->f$1:Landroid/os/RevocableFileDescriptor;

    iget-object v0, p1, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p1, p1, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
