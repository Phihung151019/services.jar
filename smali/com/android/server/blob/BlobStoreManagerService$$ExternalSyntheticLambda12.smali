.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    iput p1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;->f$1:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/concurrent/atomic/AtomicLong;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;->f$1:I

    iput-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget v1, v0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;->f$1:I

    iget-object v0, v0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/server/blob/BlobStoreSession;

    iget v3, v2, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    if-ne v3, v1, :cond_0

    invoke-virtual {v2}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    :cond_0
    return-void

    :pswitch_0
    iget-object v1, v0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget v2, v0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;->f$1:I

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/server/blob/BlobMetadata;

    iget-object v11, v0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v3}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    iget-object v4, v0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const-wide v7, 0x10300000002L

    const-wide v9, 0x10500000001L

    const-wide v12, 0x20b00000001L

    if-ge v6, v4, :cond_1

    iget-object v14, v0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v14, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/blob/BlobMetadata$Committer;

    invoke-virtual {v3, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    iget v15, v14, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-virtual {v3, v9, v10, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v9, v14, Lcom/android/server/blob/BlobMetadata$Committer;->commitTimeMs:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v7, v14, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    iget v7, v7, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    const-wide v8, 0x10500000003L

    invoke-virtual {v3, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v7, v14, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    iget-object v7, v7, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    const-wide v8, 0x10500000004L

    invoke-virtual {v3, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v3, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    new-instance v4, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v4}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    iget-object v6, v0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    :goto_1
    if-ge v5, v6, :cond_2

    iget-object v14, v0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v14, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/blob/BlobMetadata$Leasee;

    invoke-virtual {v4, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    iget v15, v14, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-virtual {v4, v9, v10, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v14, v14, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    const-wide v9, 0x10300000002L

    invoke-virtual {v4, v9, v10, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v5, v5, 0x1

    move-wide v7, v9

    const-wide v9, 0x10500000001L

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v10

    move-object v9, v3

    iget-wide v3, v0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    invoke-virtual {v0}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v5

    iget-object v0, v0, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    invoke-virtual {v0}, Landroid/app/blob/BlobHandle;->getExpiryTimeMillis()J

    move-result-wide v7

    invoke-static/range {v2 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJ[B[B)Landroid/util/StatsEvent;

    move-result-object v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :goto_2
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
