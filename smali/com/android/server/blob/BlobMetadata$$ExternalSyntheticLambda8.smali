.class public final synthetic Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/ParcelFileDescriptor$OnCloseListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/blob/BlobMetadata;

.field public final synthetic f$1:Lcom/android/server/blob/BlobMetadata$Accessor;

.field public final synthetic f$2:Landroid/os/RevocableFileDescriptor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/blob/BlobMetadata;Lcom/android/server/blob/BlobMetadata$Accessor;Landroid/os/RevocableFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/blob/BlobMetadata;

    iput-object p2, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/blob/BlobMetadata$Accessor;

    iput-object p3, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda8;->f$2:Landroid/os/RevocableFileDescriptor;

    return-void
.end method


# virtual methods
.method public final onClose(Ljava/io/IOException;)V
    .locals 3

    iget-object p1, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/blob/BlobMetadata;

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/blob/BlobMetadata$Accessor;

    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda8;->f$2:Landroid/os/RevocableFileDescriptor;

    iget-object v1, p1, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p1, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
