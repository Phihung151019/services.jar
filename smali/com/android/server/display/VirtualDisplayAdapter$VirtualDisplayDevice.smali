.class public final Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mAppToken:Landroid/os/IBinder;

.field public final mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

.field public final mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

.field public mCurrentBrightness:F

.field public final mDefaultBrightness:F

.field public mDensityDpi:I

.field public final mDimBrightness:F

.field public final mDisplayCutout:Landroid/view/DisplayCutout;

.field public mDisplayIdToMirror:I

.field public mDisplayState:I

.field public final mFlags:I

.field public mHeight:I

.field public mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public mIsWindowManagerMirroring:Z

.field public final mMediaProjectionCallback:Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;

.field public mMode:Landroid/view/Display$Mode;

.field public final mName:Ljava/lang/String;

.field public final mNeverBlank:Z

.field public final mOwnerPackageName:Ljava/lang/String;

.field public final mOwnerUid:I

.field public mPendingChanges:I

.field public final mProjection:Landroid/media/projection/IMediaProjection;

.field public final mRequestedRefreshRate:F

.field public mStopped:Z

.field public mSurface:Landroid/view/Surface;

.field public mWidth:I

.field public final synthetic this$0:Lcom/android/server/display/VirtualDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;Landroid/view/Surface;ILcom/android/server/display/VirtualDisplayAdapter$Callback;Landroid/media/projection/IMediaProjection;Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;Ljava/lang/String;Landroid/hardware/display/VirtualDisplayConfig;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v6, p7

    iput-object v1, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    iget-object v4, v1, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Context;Z)V

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mAppToken:Landroid/os/IBinder;

    move/from16 v1, p4

    iput v1, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerUid:I

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->getDensityDpi()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->getRequestedRefreshRate()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mRequestedRefreshRate:F

    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->getDefaultBrightness()F

    move-result v2

    iput v2, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDefaultBrightness:F

    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->getDimBrightness()F

    move-result v2

    iput v2, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDimBrightness:F

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCurrentBrightness:F

    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->getBrightnessListener()Landroid/hardware/display/IBrightnessListener;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    iget v9, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    iget v10, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    :goto_0
    move v11, v1

    goto :goto_1

    :cond_0
    const/high16 v1, 0x42700000    # 60.0f

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    new-array v14, v1, [F

    new-array v15, v1, [I

    new-instance v7, Landroid/view/Display$Mode;

    sget-object v2, Lcom/android/server/display/DisplayAdapter;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v8

    const/4 v13, 0x0

    move v12, v11

    invoke-direct/range {v7 .. v15}, Landroid/view/Display$Mode;-><init>(IIIFFZ[F[I)V

    iput-object v7, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    iput v6, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    move-object/from16 v2, p8

    iput-object v2, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mProjection:Landroid/media/projection/IMediaProjection;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMediaProjectionCallback:Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;

    sget-object v2, Lcom/android/server/display/VirtualDisplayAdapter;->sNextUniqueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    and-int/lit8 v2, v6, 0x10

    const/4 v3, 0x1

    if-nez v2, :cond_1

    and-int/lit8 v2, v6, 0x1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_2

    :cond_1
    move v2, v1

    :goto_2
    iput-boolean v2, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mNeverBlank:Z

    if-nez v2, :cond_2

    iput v1, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    goto :goto_3

    :cond_2
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    :goto_3
    iget v1, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    or-int/2addr v1, v3

    iput v1, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->getDisplayIdToMirror()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayIdToMirror:I

    invoke-virtual/range {p12 .. p12}, Landroid/hardware/display/VirtualDisplayConfig;->isWindowManagerMirroringEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsWindowManagerMirroring:Z

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 5

    const-string/jumbo v0, "Virtual display device released because application token died: "

    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    iget-object v1, v1, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    iget-object v3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mAppToken:Landroid/os/IBinder;

    sget-object v4, Lcom/android/server/display/VirtualDisplayAdapter;->sNextUniqueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Lcom/android/server/display/VirtualDisplayAdapter;->removeVirtualDisplayDeviceLocked(Landroid/os/IBinder;)Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    const-string/jumbo v2, "VirtualDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked(Z)V

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mProjection:Landroid/media/projection/IMediaProjection;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMediaProjectionCallback:Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v0, v2}, Landroid/media/projection/IMediaProjection;->unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "VirtualDisplayAdapter"

    const-string v3, "Failed to unregister callback in binderDied"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v2}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final configureDisplaySizeLocked(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    iget v2, p0, Lcom/android/server/display/DisplayDevice;->mLastDisplayWidth:I

    if-eq v0, v2, :cond_0

    iget v2, p0, Lcom/android/server/display/DisplayDevice;->mLastDisplayHeight:I

    if-eq v1, v2, :cond_0

    iput v0, p0, Lcom/android/server/display/DisplayDevice;->mLastDisplayWidth:I

    iput v1, p0, Lcom/android/server/display/DisplayDevice;->mLastDisplayHeight:I

    iget-object v2, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setDisplaySize(Landroid/os/IBinder;II)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    iget p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    :cond_1
    return-void
.end method

.method public final configureSurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    if-eq v1, v0, :cond_0

    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    iget p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    :cond_1
    return-void
.end method

.method public final destroyLocked(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    iget-object v0, v0, Lcom/android/server/display/VirtualDisplayAdapter;->mSurfaceControlDisplayFactory:Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;->destroyDisplay(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mProjection:Landroid/media/projection/IMediaProjection;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMediaProjectionCallback:Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v0, v1}, Landroid/media/projection/IMediaProjection;->unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "VirtualDisplayAdapter"

    const-string v2, "Failed to unregister callback in destroy"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mFlags="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    const-string/jumbo v2, "mDisplayState="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mStopped="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mStopped:Z

    const-string/jumbo v2, "mDisplayIdToMirror="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayIdToMirror:I

    const-string/jumbo v2, "mWindowManagerMirroring="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsWindowManagerMirroring:Z

    const-string/jumbo v2, "mRequestedRefreshRate="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mRequestedRefreshRate:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 11

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/Display$Mode;

    iget-object v3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iput-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    int-to-float v2, v2

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mRequestedRefreshRate:F

    const/4 v3, 0x0

    cmpl-float v5, v2, v3

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x42700000    # 60.0f

    :goto_0
    float-to-int v2, v2

    int-to-long v5, v2

    const-wide/32 v7, 0x3b9aca00

    div-long/2addr v7, v5

    iput-wide v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    iput v4, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_1

    const/16 v6, 0x10

    iput v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_1
    and-int/lit8 v6, v2, 0x10

    if-nez v6, :cond_2

    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_2
    iget-boolean v6, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mNeverBlank:Z

    if-eqz v6, :cond_3

    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_3
    and-int/lit16 v6, v2, 0x800

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v6, v6, 0x4000

    iput v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_4
    const v6, 0x8000

    and-int v7, v2, v6

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v8, 0x40000

    or-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_5
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_6

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_6
    const/4 v7, 0x2

    and-int/2addr v2, v7

    const/4 v8, 0x3

    if-eqz v2, :cond_7

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    if-eqz v5, :cond_7

    const-string/jumbo v0, "persist.demo.remoterotation"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "portrait"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    :cond_7
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_8
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v5, v7

    iput v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_9
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_a
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_b
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_c
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v5, v6

    iput v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_d
    and-int/lit16 v2, v0, 0x2000

    const/high16 v5, 0x10000

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v6, v5

    iput v6, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_e
    and-int/lit16 v2, v0, 0x4000

    const/high16 v6, 0x20000

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v9, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v9, v6

    iput v9, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_f
    and-int v2, v0, v5

    const/high16 v5, 0x80000

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v9, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v9, v5

    iput v9, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_10
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v9, 0x5

    iput v9, v2, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    and-int/lit8 v9, v0, 0x40

    if-nez v9, :cond_11

    move v8, v4

    :cond_11
    iput v8, v2, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    iget-object v8, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    if-nez v8, :cond_12

    iput v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    goto :goto_1

    :cond_12
    iget v9, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    iput v9, v2, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    :goto_1
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMinimum:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMaximum:F

    iget v3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDefaultBrightness:F

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDefault:F

    iget v3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDimBrightness:F

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDim:F

    iget v3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerUid:I

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    iget-object v3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerPackageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v3, :cond_13

    const v3, 0x10001c8

    if-ne v3, v0, :cond_13

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v3, v9

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_13
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v3, :cond_15

    const/high16 v3, 0x100000

    and-int/2addr v3, v0

    if-eqz v3, :cond_15

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const v10, -0x5ffffffc

    or-int/2addr v3, v10

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    iget v3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    if-nez v3, :cond_14

    move v3, v7

    :cond_14
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    :cond_15
    iget-object v3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    iget-object v3, v3, Lcom/android/server/display/VirtualDisplayAdapter;->mDefaultDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v3, :cond_16

    goto :goto_3

    :cond_16
    and-int v10, v0, v5

    if-eqz v10, :cond_17

    goto :goto_2

    :cond_17
    and-int v10, v0, v6

    if-eqz v10, :cond_18

    :goto_2
    iget-object v10, v3, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v10, v2, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iget-object v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    :cond_18
    :goto_3
    and-int v3, v0, v9

    if-eqz v3, :cond_19

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v9, 0x20800000

    or-int/2addr v3, v9

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_19
    and-int v3, v0, v5

    if-eqz v3, :cond_1b

    if-nez v8, :cond_1a

    iput v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    goto :goto_4

    :cond_1a
    iput v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    :goto_4
    iget v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const v3, 0x400082

    or-int/2addr v1, v3

    iput v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_1b
    and-int/2addr v0, v6

    if-eqz v0, :cond_1d

    iput v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    iget v0, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    iget-object v0, v2, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    const-string v1, "HiddenSpaceApp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v1, v1, 0x8a

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_1c
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    iget-object v0, v0, Lcom/android/server/display/VirtualDisplayAdapter;->mDefaultDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    iput-object v0, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    :cond_1d
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_1e
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    invoke-static {v1, v2, v4}, Landroid/view/DisplayShape;->createDefaultDisplayShape(IIZ)Landroid/view/DisplayShape;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayCutout:Landroid/view/DisplayCutout;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    :cond_1f
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object p0
.end method

.method public final getDisplayIdToMirrorLocked()I
    .locals 0

    iget p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayIdToMirror:I

    return p0
.end method

.method public final getDisplaySurfaceDefaultSizeLocked()Landroid/graphics/Point;
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Surface;->getDefaultSize()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->isRotatedLocked()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getSurfaceLocked()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public final hasStableUniqueId()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isWindowManagerMirroringLocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsWindowManagerMirroring:Z

    return p0
.end method

.method public final requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;)Ljava/lang/Runnable;
    .locals 4

    iget p3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    const/4 p4, 0x0

    if-eq p1, p3, :cond_5

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Changing state of virtual display "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    invoke-static {v0}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "VirtualDisplayAdapter"

    invoke-static {v0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-eq p1, p3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unexpected display state for Virtual Display: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    iput-object p4, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    if-ne p1, p3, :cond_1

    iget-object p3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    iget-object p3, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    new-instance v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;ILandroid/os/IBinder;)V

    iget p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    const/high16 p3, 0x80000

    and-int/2addr p3, p1

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const/high16 p3, 0x40000000    # 2.0f

    and-int/2addr p3, p1

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz p3, :cond_4

    const/high16 p3, 0x100000

    and-int/2addr p1, p3

    if-eqz p1, :cond_4

    :goto_1
    iput-object p4, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {p1, p0, v1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    :cond_4
    move-object p4, v0

    :cond_5
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    if-eqz p1, :cond_6

    invoke-static {p2}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCurrentBrightness:F

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_6

    iput p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCurrentBrightness:F

    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    return-object p4
.end method

.method public final setSurfaceLocked(Landroid/view/Surface;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mStopped:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eq v0, p1, :cond_3

    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez p1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0, p0, v2}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    iget p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    or-int/2addr p1, v4

    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    iget-object p1, p1, Lcom/android/server/display/VirtualDisplayAdapter;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p1, p0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    iget-object v0, v0, Lcom/android/server/display/VirtualDisplayAdapter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method

.method public final setWindowManagerMirroringLocked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsWindowManagerMirroring:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsWindowManagerMirroring:Z

    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    :cond_0
    return-void
.end method

.method public final shouldOnlyMirror()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mProjection:Landroid/media/projection/IMediaProjection;

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
