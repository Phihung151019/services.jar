.class public final Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mListener:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;II)V

    iput-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;

    return-void
.end method


# virtual methods
.method public final onFrameRateOverridesChanged(JJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;

    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    iget-object p1, p1, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-nez p0, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    invoke-static {p5, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iput-object p5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onHdcpLevelsChanged(JII)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-le p3, p4, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "HDCP connected level: "

    const-string p1, " is larger than max level: "

    const-string p2, ", ignoring request."

    invoke-static {p3, p4, p0, p1, p2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "LocalDisplayAdapter"

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mConnectedHdcpLevel:I

    if-ne p1, p3, :cond_2

    goto :goto_0

    :cond_2
    iput p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mConnectedHdcpLevel:I

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onHotplug(JJZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;

    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    iget-object p1, p1, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter p1

    if-eqz p5, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    sget p2, Lcom/android/server/display/LocalDisplayAdapter;->$r8$clinit:I

    invoke-virtual {p0, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {p2, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-eqz p2, :cond_1

    iget-object p5, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {p5, p3, p4}, Landroid/util/LongSparseArray;->remove(J)V

    const/4 p3, 0x3

    invoke-virtual {p0, p2, p3}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onHotplugConnectionError(JI)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    invoke-virtual {p0}, Lcom/android/server/display/notifications/DisplayNotificationManager;->onHotplugConnectionError()V

    return-void
.end method

.method public final onModeChanged(JJIJ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;

    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    iget-object p1, p1, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-nez p0, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const p2, 0x4e6e6b28    # 1.0E9f

    long-to-float p3, p6

    div-float/2addr p2, p3

    invoke-virtual {p0, p2, p5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->onActiveDisplayModeChangedLocked(FI)V

    monitor-exit p1

    return-void

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
