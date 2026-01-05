.class public final synthetic Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/association/AssociationStore;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/association/AssociationStore;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/companion/association/AssociationStore;

    iput p2, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/companion/association/AssociationStore;

    iget p0, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;->f$1:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/companion/association/Associations;

    invoke-direct {v1}, Lcom/android/server/companion/association/Associations;-><init>()V

    iget-object v2, v0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, v0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    iput v3, v1, Lcom/android/server/companion/association/Associations;->mMaxId:I

    iget-object v3, v0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda4;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda4;-><init>(II)V

    invoke-static {v3, v4}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/companion/association/Associations;->mAssociations:Ljava/util/List;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, v0, Lcom/android/server/companion/association/AssociationStore;->mDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "CDM_AssociationDiskStore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Writing associations for user "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to disk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p0}, Lcom/android/server/companion/association/AssociationDiskStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object p0

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/association/Associations;)V

    invoke-static {p0, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->writeToFileSafely(Landroid/util/AtomicFile;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
