.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/display/DisplayManagerService;

    iput p2, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda12;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda12;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/display/DisplayManagerService;

    iget v1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda12;->f$1:I

    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda12;->f$2:Z

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    iget-object v2, v0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyStore:Lcom/android/server/display/DisplayTopologyXmlStore;

    invoke-virtual {v3, v1}, Lcom/android/server/display/DisplayTopologyXmlStore;->reloadTopologies(I)V

    invoke-virtual {v0}, Lcom/android/server/display/DisplayTopologyCoordinator;->restoreTopologyLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayTopologyCoordinator;->sendTopologyUpdateLocked()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    if-nez v1, :cond_1

    iget-object p0, v0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyStore:Lcom/android/server/display/DisplayTopologyXmlStore;

    iget-object v1, v0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayTopologyXmlStore;->saveTopology(Landroid/hardware/display/DisplayTopology;)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    iget-object p0, v0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologySavedCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
