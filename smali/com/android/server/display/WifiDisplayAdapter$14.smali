.class public final Lcom/android/server/display/WifiDisplayAdapter$14;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    return-void
.end method


# virtual methods
.method public final onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v1, v0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$maddDisplayDeviceLocked(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object p1, p1, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p1, v3}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object p1, p1, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p1}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    iget-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {v3, p1}, Landroid/hardware/display/WifiDisplay;->setEmptySurface(Z)V

    :goto_0
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget p2, p1, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    iget-object p1, p1, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object p1, p1, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->isEmptySurface()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getMode()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput p2, p1, Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I

    :cond_3
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput p3, p1, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    iput-object v3, p1, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {p1}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    :cond_4
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/display/WifiDisplayAdapter$11;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/display/WifiDisplayAdapter$11;-><init>(Lcom/android/server/display/WifiDisplayAdapter;ZI)V

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
