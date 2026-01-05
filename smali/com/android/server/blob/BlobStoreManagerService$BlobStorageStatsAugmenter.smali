.class public final Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;


# instance fields
.field public final synthetic this$0:Lcom/android/server/blob/BlobStoreManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    return-void
.end method


# virtual methods
.method public final augmentStatsForPackageForUser(Landroid/content/pm/PackageStats;Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v0, v2}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicLong;I)V

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/blob/BlobStoreManagerService;->forEachSessionInUser(ILjava/util/function/Consumer;)V

    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2, p3, p4, v0}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Landroid/os/UserHandle;ZLjava/util/concurrent/atomic/AtomicLong;)V

    invoke-virtual {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlob(Ljava/util/function/Consumer;)V

    iget-wide p2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p1, Landroid/content/pm/PackageStats;->dataSize:J

    return-void
.end method

.method public final augmentStatsForUid(Landroid/content/pm/PackageStats;IZ)V
    .locals 4

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v2, p2, v1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;-><init>(ILjava/util/concurrent/atomic/AtomicLong;)V

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/blob/BlobStoreManagerService;->forEachSessionInUser(ILjava/util/function/Consumer;)V

    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p3, v1}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda1;-><init>(IZLjava/util/concurrent/atomic/AtomicLong;)V

    invoke-virtual {p0, v0}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlob(Ljava/util/function/Consumer;)V

    iget-wide p2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p1, Landroid/content/pm/PackageStats;->dataSize:J

    return-void
.end method

.method public final augmentStatsForUser(Landroid/content/pm/PackageStats;Landroid/os/UserHandle;)V
    .locals 5

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$Stub$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/android/server/blob/BlobStoreManagerService$Stub$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/blob/BlobStoreManagerService;->forEachSessionInUser(ILjava/util/function/Consumer;)V

    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v0, v2}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicLong;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlob(Ljava/util/function/Consumer;)V

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, p1, Landroid/content/pm/PackageStats;->dataSize:J

    return-void
.end method
