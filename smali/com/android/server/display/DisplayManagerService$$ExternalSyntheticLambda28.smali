.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda28;->$r8$classId:I

    iput-object p3, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda28;->f$0:Ljava/lang/Object;

    iput p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda28;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda28;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda28;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/DisplayManagerService$2;

    iget p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda28;->f$1:I

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-nez v2, :cond_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v2, v2, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    if-nez v2, :cond_1

    monitor-exit v1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v3, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v2

    if-nez v2, :cond_2

    monitor-exit v1

    goto :goto_0

    :cond_2
    iget v2, v2, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    if-eqz v0, :cond_3

    iput p0, v0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mCurrentDisplayRotation:I

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->setFixedToUserRotation(II)V

    const-string/jumbo v1, "SmartView"

    invoke-virtual {v0, v2, p0, v1}, Lcom/android/server/wm/WindowManagerService;->freezeDisplayRotation(IILjava/lang/String;)V

    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda28;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/DisplayManagerService;

    iget p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda28;->f$1:I

    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    :try_start_2
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->onCanHostTasksChanged()V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_5
    :goto_3
    monitor-exit v1

    return-void

    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
