.class public final Lcom/android/server/display/WifiDisplayController$19;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field public final synthetic val$display:Landroid/hardware/display/WifiDisplay;

.field public final synthetic val$flags:I

.field public final synthetic val$height:I

.field public final synthetic val$oldDisplay:Landroid/hardware/display/WifiDisplay;

.field public final synthetic val$oldSurface:Landroid/view/Surface;

.field public final synthetic val$surface:Landroid/view/Surface;

.field public final synthetic val$width:I


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldSurface:Landroid/view/Surface;

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController$19;->val$surface:Landroid/view/Surface;

    iput-object p4, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iput-object p5, p0, Lcom/android/server/display/WifiDisplayController$19;->val$display:Landroid/hardware/display/WifiDisplay;

    iput p6, p0, Lcom/android/server/display/WifiDisplayController$19;->val$width:I

    iput p7, p0, Lcom/android/server/display/WifiDisplayController$19;->val$height:I

    iput p8, p0, Lcom/android/server/display/WifiDisplayController$19;->val$flags:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldSurface:Landroid/view/Surface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$19;->val$surface:Landroid/view/Surface;

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v4, :cond_5

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v4, v0}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayAdapter$14;

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v4, v4, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v4

    :try_start_0
    iget-object v5, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v5}, Lcom/android/server/display/WifiDisplayAdapter;->removeDisplayDeviceLocked()V

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget v6, v5, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    if-nez v6, :cond_2

    iget-object v6, v5, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v6, :cond_4

    :cond_2
    iget-object v5, v5, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    iget-object v6, v5, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v6}, Landroid/hardware/display/SemDlnaDevice;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Lcom/android/server/display/DlnaController$1;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v5}, Lcom/android/server/display/DlnaController$1;-><init>(ILjava/lang/Object;)V

    iget-object v5, v5, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v5, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput v3, v5, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    iput-object v2, v5, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    sget-object v6, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    iput-object v6, v5, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    iput-object v6, v5, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v5}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    :cond_4
    iget-object v5, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/server/display/WifiDisplayAdapter$11;

    const/4 v7, 0x1

    invoke-direct {v6, v5, v1, v7}, Lcom/android/server/display/WifiDisplayAdapter$11;-><init>(Lcom/android/server/display/WifiDisplayAdapter;ZI)V

    iget-object v5, v5, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "wifi_display_on"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mfinish(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$19;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v4}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayAdapter$14;

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v4, v4, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v4

    :try_start_2
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget v5, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    if-nez v5, :cond_6

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v5, :cond_7

    :cond_6
    iput v3, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    :cond_7
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mfinish(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->val$display:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_11

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v4}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayAdapter$14;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$19;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v4, v4, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v4

    :try_start_4
    iget-object v5, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v5, v5, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v5, v2}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget v6, v5, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    if-ne v6, v1, :cond_9

    iget-object v5, v5, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v5, :cond_9

    invoke-virtual {v5, v2}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_9
    :goto_1
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput v1, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    new-array v1, v1, [Landroid/hardware/display/WifiDisplay;

    aput-object v2, v1, v3

    iput-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    :cond_a
    monitor-exit v4

    goto/16 :goto_4

    :goto_2
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :cond_b
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldSurface:Landroid/view/Surface;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$19;->val$surface:Landroid/view/Surface;

    if-eq v0, v1, :cond_10

    :cond_c
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayAdapter$14;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$19;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$19;->val$surface:Landroid/view/Surface;

    iget v4, p0, Lcom/android/server/display/WifiDisplayController$19;->val$width:I

    iget v5, p0, Lcom/android/server/display/WifiDisplayController$19;->val$height:I

    iget-object v6, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v6, v6, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v6

    :try_start_5
    const-string/jumbo v7, "WifiDisplayAdapter"

    const-string/jumbo v8, "onDisplayChanged"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v7, v7, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v7, v1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    iget-object v7, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v7, v7, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v7, :cond_f

    invoke-virtual {v7, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v7, v7, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v7, v1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput-object v1, v3, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v3, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, v3, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    iput-object v1, v4, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mName:Ljava/lang/String;

    iput-object v2, v4, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x2

    invoke-virtual {v3, v4, v1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_d
    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, v3, v4, v5}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$mupdateDisplaySurfaceLocked(Lcom/android/server/display/WifiDisplayAdapter;Landroid/view/Surface;II)V

    :cond_e
    :goto_3
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    :cond_f
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_10
    :goto_4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldSurface:Landroid/view/Surface;

    if-nez v0, :cond_11

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$19;->val$surface:Landroid/view/Surface;

    if-eqz v3, :cond_11

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayAdapter$14;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$19;->val$display:Landroid/hardware/display/WifiDisplay;

    iget v4, p0, Lcom/android/server/display/WifiDisplayController$19;->val$width:I

    iget v5, p0, Lcom/android/server/display/WifiDisplayController$19;->val$height:I

    iget v6, p0, Lcom/android/server/display/WifiDisplayController$19;->val$flags:I

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/display/WifiDisplayAdapter$14;->onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    return-void

    :goto_5
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :cond_11
    return-void
.end method
