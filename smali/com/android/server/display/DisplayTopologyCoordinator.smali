.class public Lcom/android/server/display/DisplayTopologyCoordinator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDensities:Landroid/util/SparseIntArray;

.field public final mDisplayIdToUniqueIdMapping:Landroid/util/SparseArray;

.field public final mIsExtendedDisplayAllowed:Ljava/util/function/BooleanSupplier;

.field public final mOnTopologyChangedCallback:Ljava/util/function/Consumer;

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field public mTopology:Landroid/hardware/display/DisplayTopology;

.field public final mTopologyChangeExecutor:Ljava/util/concurrent/Executor;

.field public final mTopologySavedCallback:Ljava/lang/Runnable;

.field public final mTopologyStore:Lcom/android/server/display/DisplayTopologyXmlStore;

.field public final mUniqueIdToDisplayIdMapping:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayTopologyCoordinator$Injector;Ljava/util/function/BooleanSupplier;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Lcom/android/server/display/DisplayManagerService$SyncRoot;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/DisplayTopologyCoordinator$Injector;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/Pair<",
            "Landroid/hardware/display/DisplayTopology;",
            "Landroid/hardware/display/DisplayTopologyGraph;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/server/display/DisplayManagerService$SyncRoot;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDensities:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mUniqueIdToDisplayIdMapping:Ljava/util/Map;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDisplayIdToUniqueIdMapping:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/hardware/display/DisplayTopology;

    invoke-direct {p1}, Landroid/hardware/display/DisplayTopology;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    iput-object p2, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mIsExtendedDisplayAllowed:Ljava/util/function/BooleanSupplier;

    iput-object p3, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mOnTopologyChangedCallback:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyChangeExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    new-instance p1, Lcom/android/server/display/DisplayTopologyXmlStore;

    new-instance p2, Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;

    invoke-direct {p2, v1, v0}, Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;-><init>(Landroid/util/SparseArray;Ljava/util/Map;)V

    invoke-direct {p1, p2}, Lcom/android/server/display/DisplayTopologyXmlStore;-><init>(Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyStore:Lcom/android/server/display/DisplayTopologyXmlStore;

    iput-object p6, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologySavedCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final isDisplayAllowedInTopology(Landroid/view/DisplayInfo;Z)Z
    .locals 9

    iget v0, p1, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "Display "

    const-string v5, "DisplayTopologyCoordinator"

    const/4 v6, 0x1

    if-eq v0, v6, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    iget v7, p1, Landroid/view/DisplayInfo;->flags:I

    const/high16 v8, 0x4000000

    and-int/2addr v7, v8

    if-nez v7, :cond_0

    if-eqz p2, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    const-string p2, " not allowed in topology because type is not INTERNAL, EXTERNAL or OVERLAY"

    invoke-static {p1, p2, v5, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return v3

    :cond_0
    if-ne v0, v6, :cond_1

    iget v7, p1, Landroid/view/DisplayInfo;->displayId:I

    if-eqz v7, :cond_1

    if-eqz p2, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    const-string p2, " not allowed in topology because it is a non-default internal display"

    invoke-static {p1, p2, v5, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return v3

    :cond_1
    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_4

    :cond_2
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mIsExtendedDisplayAllowed:Ljava/util/function/BooleanSupplier;

    invoke-interface {p0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p0

    if-nez p0, :cond_4

    if-eqz p2, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    const-string p2, " not allowed in topology because type is EXTERNAL or OVERLAY and !mIsExtendedDisplayAllowed"

    invoke-static {p1, p2, v5, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_3
    return v3

    :cond_4
    return v6
.end method

.method public final onDisplayAdded(Landroid/view/DisplayInfo;)V
    .locals 7

    const-string v0, "Display "

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/DisplayTopologyCoordinator;->isDisplayAllowedInTopology(Landroid/view/DisplayInfo;Z)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    :try_start_0
    iget v3, p1, Landroid/view/DisplayInfo;->displayId:I

    if-nez v3, :cond_1

    iget v4, p1, Landroid/view/DisplayInfo;->type:I

    if-ne v4, v1, :cond_1

    const-string/jumbo v1, "internal"

    goto :goto_0

    :cond_1
    iget-object v1, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    :goto_0
    iget-object v4, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mUniqueIdToDisplayIdMapping:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDisplayIdToUniqueIdMapping:Landroid/util/SparseArray;

    iget v4, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDensities:Landroid/util/SparseIntArray;

    iget v3, p1, Landroid/view/DisplayInfo;->displayId:I

    iget v4, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    iget v3, p1, Landroid/view/DisplayInfo;->displayId:I

    iget v4, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v4, v4

    iget v5, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-static {v4, v5}, Landroid/hardware/display/DisplayTopology;->pxToDp(FI)F

    move-result v4

    iget v5, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v5, v5

    iget v6, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-static {v5, v6}, Landroid/hardware/display/DisplayTopology;->pxToDp(FI)F

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/hardware/display/DisplayTopology;->addDisplay(IFF)V

    const-string v1, "DisplayTopologyCoordinator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " added, new topology: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->restoreTopologyLocked()Z

    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->sendTopologyUpdateLocked()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onDisplayRemoved(I)V
    .locals 4

    const-string v0, "Display "

    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDensities:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayTopology;->removeDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "DisplayTopologyCoordinator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " removed, new topology: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDisplayIdToUniqueIdMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Can\'t find uniqueId for displayId="

    const-string v2, "DisplayTopologyCoordinator"

    invoke-static {p1, v0, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDisplayIdToUniqueIdMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object p1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mUniqueIdToDisplayIdMapping:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->restoreTopologyLocked()Z

    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->sendTopologyUpdateLocked()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final restoreTopologyLocked()Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyStore:Lcom/android/server/display/DisplayTopologyXmlStore;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayTopologyXmlStore;->getTopologyId(Landroid/hardware/display/DisplayTopology;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    const-string v4, ", topologyId="

    const-string/jumbo v5, "restoreTopology userId="

    const-string v6, "DisplayManager.DisplayTopologyXmlStore"

    if-eqz v3, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v1, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "restoreTopology cancelled: topology id is null for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v9, v1, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/display/topology/Topology;

    if-nez v9, :cond_2

    if-eqz v3, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v9}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_3

    invoke-virtual {v1, v9}, Lcom/android/server/display/DisplayTopologyXmlStore;->moveTopologyToHead(Lcom/android/server/display/topology/Topology;)V

    invoke-virtual {v1}, Lcom/android/server/display/DisplayTopologyXmlStore;->saveTopologiesToFile()V

    :cond_3
    iget-object v2, v9, Lcom/android/server/display/topology/Topology;->display:Lcom/android/server/display/topology/Display;

    iget-object v1, v1, Lcom/android/server/display/DisplayTopologyXmlStore;->mInjector:Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;

    iget-object v1, v1, Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;->val$uniqueIdToDisplayIdMapping:Ljava/util/Map;

    invoke-static {v2, v0, v1}, Lcom/android/server/display/DisplayTopologyXmlStore;->convertPersistentDisplayToTreeNode(Lcom/android/server/display/topology/Display;Landroid/hardware/display/DisplayTopology;Ljava/util/Map;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v0

    invoke-static {v2, v1}, Lcom/android/server/display/DisplayTopologyXmlStore;->findPrimaryDisplayId(Lcom/android/server/display/topology/Display;Ljava/util/Map;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    const-string/jumbo v1, "Primary display id is not found in persistent topology"

    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    :cond_4
    new-instance v8, Landroid/hardware/display/DisplayTopology;

    invoke-direct {v8, v0, v1}, Landroid/hardware/display/DisplayTopology;-><init>(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    :cond_5
    :goto_0
    if-nez v8, :cond_6

    return v7

    :cond_6
    iput-object v8, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {v8}, Landroid/hardware/display/DisplayTopology;->normalize()V

    const/4 p0, 0x1

    return p0
.end method

.method public final sendTopologyUpdateLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayTopology;->copy()Landroid/hardware/display/DisplayTopology;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDensities:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyChangeExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/display/DisplayTopologyCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/display/DisplayTopologyCoordinator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayTopologyCoordinator;Landroid/hardware/display/DisplayTopology;Landroid/util/SparseIntArray;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
