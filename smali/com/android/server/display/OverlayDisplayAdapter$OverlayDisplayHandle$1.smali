.class public final Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;
.super Lcom/android/server/display/DisplayDevice;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mActiveMode:I

.field public final mDisplayPresentationDeadlineNanos:J

.field public final mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

.field public mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public final mModes:[Landroid/view/Display$Mode;

.field public final mName:Ljava/lang/String;

.field public final mRawModes:Ljava/util/List;

.field public final mRefreshRate:F

.field public mState:I

.field public mSurface:Landroid/view/Surface;

.field public mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field public final synthetic this$0:Lcom/android/server/display/OverlayDisplayAdapter;

.field public final synthetic this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;Landroid/os/IBinder;Ljava/lang/String;Ljava/util/List;IFJLcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;ILandroid/graphics/SurfaceTexture;I)V
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v3, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    iput-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    const-string/jumbo v0, "overlay:"

    move/from16 v2, p12

    invoke-static {v2, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    move-object v2, p0

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Context;Z)V

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mName:Ljava/lang/String;

    move/from16 v7, p6

    iput v7, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mRefreshRate:F

    move-wide/from16 v3, p7

    iput-wide v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mDisplayPresentationDeadlineNanos:J

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    move/from16 v0, p10

    iput v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mState:I

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mRawModes:Ljava/util/List;

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/Display$Mode;

    iput-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mModes:[Landroid/view/Display$Mode;

    const/4 v1, 0x0

    move v12, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v12, v3, :cond_0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    iget-object v13, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mModes:[Landroid/view/Display$Mode;

    iget v5, v3, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mWidth:I

    new-array v10, v1, [F

    new-array v11, v1, [I

    new-instance v4, Landroid/view/Display$Mode;

    sget-object v6, Lcom/android/server/display/DisplayAdapter;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v6

    const/4 v9, 0x0

    iget v3, v3, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mHeight:I

    move/from16 v8, p6

    move v14, v6

    move v6, v3

    move-object v3, v4

    move v4, v14

    invoke-direct/range {v3 .. v11}, Landroid/view/Display$Mode;-><init>(IIIFFZ[F[I)V

    aput-object v3, v13, v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v7, p6

    goto :goto_0

    :cond_0
    move/from16 v3, p5

    iput v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mActiveMode:I

    return-void
.end method


# virtual methods
.method public final configureSurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mSurface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    if-eq v1, v0, :cond_1

    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    return-void
.end method

.method public final getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mModes:[Landroid/view/Display$Mode;

    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mActiveMode:I

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mRawModes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    new-instance v2, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v2}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    iput v0, v2, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mModes:[Landroid/view/Display$Mode;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v2

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mModes:[Landroid/view/Display$Mode;

    iput-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget v1, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    int-to-float v2, v1

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    int-to-float v1, v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mRefreshRate:F

    float-to-int v1, v1

    int-to-long v1, v1

    const-wide/32 v4, 0x3b9aca00

    div-long/2addr v4, v1

    iget-wide v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mDisplayPresentationDeadlineNanos:J

    add-long/2addr v4, v1

    iput-wide v4, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    const/16 v1, 0x40

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    iget-boolean v2, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mSecure:Z

    const/4 v4, 0x4

    if-eqz v2, :cond_0

    const/16 v2, 0x40

    or-int/2addr v2, v4

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_0
    iget-boolean v2, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mOwnContentOnly:Z

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_1
    iget-boolean v2, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mShouldShowSystemDecorations:Z

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mFeatureFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnableDisplayContentModeManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mFixedContentMode:Z

    if-nez v0, :cond_3

    iget-boolean v0, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mOwnContentOnly:Z

    if-nez v0, :cond_3

    iget-boolean v0, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mShouldShowSystemDecorations:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_3
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v4, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mState:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/DisplayShape;->createDefaultDisplayShape(IIZ)Landroid/view/DisplayShape;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    :cond_4
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object p0
.end method

.method public final hasStableUniqueId()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .locals 5

    iget p1, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mModes:[Landroid/view/Display$Mode;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_1
    if-ne v2, v1, :cond_3

    const-string/jumbo v1, "Unable to locate mode "

    const-string v2, ", reverting to default."

    const-string/jumbo v3, "OverlayDisplayAdapter"

    invoke-static {p1, v1, v2, v3}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    iget p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mActiveMode:I

    if-ne p1, v0, :cond_4

    goto :goto_3

    :cond_4
    iput v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mActiveMode:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {p1, p0, v1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v1, p1, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mResizeRunnable:Lcom/android/server/display/OverlayDisplayAdapter$1;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    if-eqz p0, :cond_5

    iget-object p0, p1, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_3
    return-void
.end method
