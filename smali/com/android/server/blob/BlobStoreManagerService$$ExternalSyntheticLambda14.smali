.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda13;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda13;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda14;->f$0:I

    iput-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda14;->f$1:Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda13;

    iput-object p3, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda14;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda14;->f$0:I

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda14;->f$1:Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda13;

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda14;->f$2:Ljava/util/ArrayList;

    check-cast p1, Landroid/app/blob/BlobHandle;

    check-cast p2, Lcom/android/server/blob/BlobMetadata;

    invoke-virtual {p2, v0}, Lcom/android/server/blob/BlobMetadata;->hasACommitterInUser(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p2, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p2, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    iget-object v5, p2, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/blob/BlobMetadata$Leasee;

    iget v5, v5, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne v0, v5, :cond_0

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v2, v0, v1, p1, v11}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;-><init>(ILcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda13;Landroid/app/blob/BlobHandle;Ljava/util/ArrayList;)V

    iget-object v1, p2, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p2, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-instance v3, Landroid/app/blob/BlobInfo;

    iget-wide v4, p2, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->getExpiryTimeMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {p2}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v9

    invoke-direct/range {v3 .. v11}, Landroid/app/blob/BlobInfo;-><init>(JJLjava/lang/CharSequence;JLjava/util/List;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
