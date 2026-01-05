.class public final Lcom/android/server/companion/association/AssociationStore;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mIdToAssociationMap:Ljava/util/Map;

.field public final mLocalListeners:Ljava/util/Set;

.field public final mLock:Ljava/lang/Object;

.field public mMaxId:I

.field public mPersisted:Z

.field public final mRemoteListeners:Landroid/os/RemoteCallbackList;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;Lcom/android/server/companion/association/AssociationDiskStore;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/companion/association/AssociationStore;->mPersisted:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    iput v0, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLocalListeners:Ljava/util/Set;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mRemoteListeners:Landroid/os/RemoteCallbackList;

    iput-object p1, p0, Lcom/android/server/companion/association/AssociationStore;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/companion/association/AssociationStore;->mUserManager:Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/server/companion/association/AssociationStore;->mDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/companion/association/AssociationStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final addAssociation(Landroid/companion/AssociationInfo;)V
    .locals 6

    const-string v0, "Association id=["

    const-string v1, "CDM_AssociationStore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding new association=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "]..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p0, "CDM_AssociationStore"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "] already exists."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v2}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/companion/association/AssociationStore;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-string v0, "CDM_AssociationStore"

    const-string v1, "Done adding new association."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/companion/utils/MetricUtils;->METRIC_DEVICE_PROFILE:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1c3

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/association/AssociationStore;->broadcastChange(ILandroid/companion/AssociationInfo;)V

    :cond_1
    return-void

    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final broadcastChange(ILandroid/companion/AssociationInfo;)V
    .locals 3

    const-string v0, "CDM_AssociationStore"

    const-string v1, "Broadcasting association changes - changeType=["

    const-string/jumbo v2, "]..."

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLocalListeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mLocalListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/association/AssociationStore$OnChangeListener;

    invoke-interface {v2, p1, p2}, Lcom/android/server/companion/association/AssociationStore$OnChangeListener;->onAssociationChanged(ILandroid/companion/AssociationInfo;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mRemoteListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    :try_start_1
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mRemoteListeners:Landroid/os/RemoteCallbackList;

    new-instance p1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda11;

    invoke-direct {p1, p2, v0}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda11;-><init>(ILjava/util/List;)V

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final getActiveAssociations()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getAssociations()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getActiveAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociations()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {p1, p2, v1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, p1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getActiveAssociationsByUser(I)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociations()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda4;-><init>(II)V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getAssociationById(I)Landroid/companion/AssociationInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/companion/AssociationInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p1

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, p0, v1, v2}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanManageAssociationsForPackage(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "getAssociationWithCallerChecks() Association id=["

    const-string/jumbo v1, "] doesn\'t exist."

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAssociations()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/companion/association/AssociationStore;->mPersisted:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/association/AssociationStore;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationsByUser(I)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {p1, p2, v1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, p1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getAssociationsByUser(I)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getAssociations()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda4;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda4;-><init>(II)V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getFirstAssociationByAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda0;

    const/4 p2, 0x3

    invoke-direct {p1, p3, p2}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, p1}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/companion/AssociationInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final registerLocalListener(Lcom/android/server/companion/association/AssociationStore$OnChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLocalListeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mLocalListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateAssociation(Landroid/companion/AssociationInfo;)V
    .locals 5

    const-string v0, "Can\'t update association id=["

    const-string v1, "CDM_AssociationStore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Updating new association=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "]..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/AssociationInfo;

    if-nez v3, :cond_0

    const-string p0, "CDM_AssociationStore"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "]. It does not exist."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1}, Landroid/companion/AssociationInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "CDM_AssociationStore"

    const-string p1, "Association is the same."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0, v0}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/companion/association/AssociationStore;I)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "CDM_AssociationStore"

    const-string v1, "Done updating association."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/association/AssociationStore;->broadcastChange(ILandroid/companion/AssociationInfo;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/association/AssociationStore;->broadcastChange(ILandroid/companion/AssociationInfo;)V

    :cond_4
    return-void

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
