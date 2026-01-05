.class public final Lcom/android/server/display/LocalDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

.field public final mDevices:Landroid/util/LongSparseArray;

.field public final mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

.field public mEvenDimmerEnabled:Z

.field public mEvenDimmerStrength:I

.field public final mInjector:Lcom/android/server/display/LocalDisplayAdapter$Injector;

.field public final mIsBootDisplayModeSupported:Z

.field public mNitsToEvenDimmerStrength:Landroid/util/Spline;

.field public mOverlayContext:Landroid/content/Context;

.field public final mStateChangeCallbacks:Ljava/util/ArrayList;

.field public final mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/notifications/DisplayNotificationManager;Lcom/android/server/display/LocalDisplayAdapter$Injector;)V
    .locals 7

    const-string/jumbo v5, "LocalDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v0, Lcom/android/server/display/LocalDisplayAdapter;->mStateChangeCallbacks:Ljava/util/ArrayList;

    new-instance p0, Landroid/util/LongSparseArray;

    invoke-direct {p0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p0, v0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    const/4 p0, -0x1

    iput p0, v0, Lcom/android/server/display/LocalDisplayAdapter;->mEvenDimmerStrength:I

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/server/display/LocalDisplayAdapter;->mEvenDimmerEnabled:Z

    iput-object p6, v0, Lcom/android/server/display/LocalDisplayAdapter;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    iput-object p7, v0, Lcom/android/server/display/LocalDisplayAdapter;->mInjector:Lcom/android/server/display/LocalDisplayAdapter$Injector;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;-><init>()V

    iput-object p0, v0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    const-wide/16 p0, 0x20

    const-string/jumbo p2, "getBootDisplayModeSupport"

    invoke-static {p0, p1, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->getBootDisplayModeSupport()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, p1}, Landroid/os/Trace;->traceEnd(J)V

    iput-boolean p2, v0, Lcom/android/server/display/LocalDisplayAdapter;->mIsBootDisplayModeSupported:Z

    return-void

    :catchall_0
    move-exception v0

    move-object p2, v0

    invoke-static {p0, p1}, Landroid/os/Trace;->traceEnd(J)V

    throw p2
.end method


# virtual methods
.method public final getOverlayContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mOverlayContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mOverlayContext:Landroid/content/Context;

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mOverlayContext:Landroid/content/Context;

    return-object p0
.end method

.method public final registerLocked()V
    .locals 8

    const-string/jumbo v0, "LocalDisplayAdapter"

    const-string/jumbo v1, "LocalDisplayAdapter register"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;

    invoke-direct {v2, p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;-><init>(Lcom/android/server/display/LocalDisplayAdapter;)V

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter;->mInjector:Lcom/android/server/display/LocalDisplayAdapter$Injector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;

    invoke-direct {v4, v1, v2}, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;-><init>(Landroid/os/Looper;Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;)V

    iput-object v4, v3, Lcom/android/server/display/LocalDisplayAdapter$Injector;->mReceiver:Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/display/DisplayControl;->getPhysicalDisplayIds()[J

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v1, v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "LocalDisplay register "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4, v5}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final tryConnectDisplayLocked(J)V
    .locals 21

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    const-string v0, "Cannot connect in safe mode. physicalDisplayId:"

    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v5, 0x0

    const-string/jumbo v6, "LocalDisplayAdapter"

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    const v7, 0x1040496

    invoke-static {v2, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_0
    iget-object v0, v1, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Lcom/android/server/display/DisplayControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_f

    move v0, v5

    invoke-static {v3, v4}, Landroid/view/SurfaceControl;->getStaticDisplayInfo(J)Landroid/view/SurfaceControl$StaticDisplayInfo;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "No valid static info found for display device "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {v3, v4}, Landroid/view/SurfaceControl;->getDynamicDisplayInfo(J)Landroid/view/SurfaceControl$DynamicDisplayInfo;

    move-result-object v7

    if-nez v7, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "No valid dynamic info found for display device "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v8, v7, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    if-nez v8, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "No valid modes found for display device "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget v8, v7, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    if-gez v8, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "No valid active mode found for display device "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget v8, v7, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    if-gez v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "No valid active color mode for display device "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x1

    iput v8, v7, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    :cond_5
    invoke-static {v2}, Landroid/view/SurfaceControl;->getDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    move-result-object v8

    if-nez v8, :cond_6

    const-string v0, "Desired display mode specs from SurfaceFlinger are null"

    invoke-static {v6, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object v6, v1, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-nez v6, :cond_e

    iget-object v6, v1, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    if-nez v6, :cond_7

    move-object v6, v8

    const/4 v8, 0x1

    goto :goto_0

    :cond_7
    move-object v6, v8

    move v8, v0

    :goto_0
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_VRR_RESOLUTION_POLICY:Z

    if-eqz v10, :cond_d

    iget-boolean v10, v5, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    if-eqz v10, :cond_d

    iget-object v10, v7, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    array-length v11, v10

    const/4 v12, 0x0

    move v13, v0

    move v14, v13

    move v15, v12

    move v12, v14

    :goto_1
    if-ge v0, v11, :cond_c

    aget-object v9, v10, v0

    move/from16 v16, v0

    iget v0, v9, Landroid/view/SurfaceControl$DisplayMode;->width:I

    move/from16 v17, v0

    iget v0, v9, Landroid/view/SurfaceControl$DisplayMode;->height:I

    move/from16 v18, v0

    mul-int v0, v17, v18

    mul-int v1, v13, v14

    if-ge v0, v1, :cond_8

    move-object/from16 v19, v2

    goto :goto_2

    :cond_8
    move-object/from16 v19, v2

    iget v2, v9, Landroid/view/SurfaceControl$DisplayMode;->peakRefreshRate:F

    const v20, 0x426ff5c3    # 59.99f

    cmpg-float v20, v2, v20

    if-gez v20, :cond_9

    goto :goto_2

    :cond_9
    if-gt v0, v1, :cond_a

    cmpg-float v0, v2, v15

    if-gez v0, :cond_b

    :cond_a
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    move v12, v0

    move v15, v2

    move/from16 v13, v17

    move/from16 v14, v18

    :cond_b
    :goto_2
    add-int/lit8 v0, v16, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    goto :goto_1

    :cond_c
    move-object/from16 v19, v2

    iput v12, v7, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    goto :goto_3

    :cond_d
    move-object/from16 v19, v2

    :goto_3
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    move-object v1, v7

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;JLandroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;Z)V

    iget-object v2, v1, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v3, v4, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    goto :goto_4

    :cond_e
    move-object v0, v7

    move-object v7, v8

    invoke-virtual {v6, v5, v0, v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDisplayPropertiesLocked(Landroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    invoke-virtual {v1, v6, v0}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    goto :goto_4

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot find display device "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_4
    return-void
.end method
