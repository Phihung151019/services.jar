.class public abstract Lcom/android/server/display/DisplayDevice;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final EMPTY_DISPLAY_MODE:Landroid/view/Display$Mode;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentDisplayRect:Landroid/graphics/Rect;

.field public mCurrentFlags:I

.field public mCurrentLayerStack:I

.field public mCurrentLayerStackRect:Landroid/graphics/Rect;

.field public mCurrentOrientation:I

.field public mCurrentSurface:Landroid/view/Surface;

.field public mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public final mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

.field public mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public final mDisplayToken:Landroid/os/IBinder;

.field public final mIsAnisotropyCorrectionEnabled:Z

.field public mLastDisplayHeight:I

.field public mLastDisplayWidth:I

.field public final mUniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/Display$Mode$Builder;

    invoke-direct {v0}, Landroid/view/Display$Mode$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/view/Display$Mode$Builder;->build()Landroid/view/Display$Mode;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/DisplayDevice;->EMPTY_DISPLAY_MODE:Landroid/view/Display$Mode;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentFlags:I

    iput v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    iput-object p1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

    iput-object p2, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iput-object p4, p0, Lcom/android/server/display/DisplayDevice;->mContext:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/android/server/display/DisplayDevice;->mIsAnisotropyCorrectionEnabled:Z

    return-void
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .locals 0

    return-void
.end method

.method public configureDisplaySizeLocked(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_1

    :cond_2
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    :goto_1
    if-eqz v2, :cond_3

    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_2

    :cond_3
    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    :goto_2
    iget v2, p0, Lcom/android/server/display/DisplayDevice;->mLastDisplayWidth:I

    if-eq v1, v2, :cond_4

    iget v2, p0, Lcom/android/server/display/DisplayDevice;->mLastDisplayHeight:I

    if-eq v0, v2, :cond_4

    iput v1, p0, Lcom/android/server/display/DisplayDevice;->mLastDisplayWidth:I

    iput v0, p0, Lcom/android/server/display/DisplayDevice;->mLastDisplayHeight:I

    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setDisplaySize(Landroid/os/IBinder;II)Landroid/view/SurfaceControl$Transaction;

    :cond_4
    return-void
.end method

.method public configureSurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mName:Ljava/lang/String;

    const-string/jumbo v1, "mAdapter="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mUniqueId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    const-string/jumbo v2, "mDisplayToken="

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mCurrentLayerStack="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    const-string/jumbo v2, "mCurrentFlags="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentFlags:I

    const-string/jumbo v2, "mCurrentOrientation="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    const-string/jumbo v2, "mCurrentLayerStackRect="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mCurrentDisplayRect="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mCurrentSurface="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getActiveDisplayModeAtStartLocked()Landroid/view/Display$Mode;
    .locals 0

    sget-object p0, Lcom/android/server/display/DisplayDevice;->EMPTY_DISPLAY_MODE:Landroid/view/Display$Mode;

    return-object p0
.end method

.method public getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

    iget-object v1, v1, Lcom/android/server/display/DisplayAdapter;->mFeatureFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromPmValues(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    return-object p0
.end method

.method public abstract getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
.end method

.method public getDisplayIdToMirrorLocked()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDisplaySurfaceDefaultSizeLocked()Landroid/graphics/Point;
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget-boolean v3, p0, Lcom/android/server/display/DisplayDevice;->mIsAnisotropyCorrectionEnabled:Z

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-lez v5, :cond_1

    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    const v4, 0x3f833333    # 1.025f

    mul-float v5, v3, v4

    cmpl-float v5, v0, v5

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    if-lez v5, :cond_0

    int-to-float v2, v2

    mul-float/2addr v2, v0

    div-float/2addr v2, v3

    float-to-double v2, v2

    add-double/2addr v2, v6

    double-to-int v2, v2

    goto :goto_0

    :cond_0
    mul-float/2addr v4, v0

    cmpg-float v4, v4, v3

    if-gez v4, :cond_1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    div-float/2addr v1, v0

    float-to-double v0, v1

    add-double/2addr v0, v6

    double-to-int v1, v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->isRotatedLocked()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_2
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public final getSupportedResolutionsLocked()[Landroid/graphics/Point;
    .locals 6

    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    invoke-direct {v4, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p0

    new-array p0, p0, [Landroid/graphics/Point;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v0, Lcom/android/server/display/DisplayDevice$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public getSystemPreferredDisplayModeLocked()Landroid/view/Display$Mode;
    .locals 0

    sget-object p0, Lcom/android/server/display/DisplayDevice;->EMPTY_DISPLAY_MODE:Landroid/view/Display$Mode;

    return-object p0
.end method

.method public getUserPreferredDisplayModeLocked()Landroid/view/Display$Mode;
    .locals 0

    sget-object p0, Lcom/android/server/display/DisplayDevice;->EMPTY_DISPLAY_MODE:Landroid/view/Display$Mode;

    return-object p0
.end method

.method public abstract hasStableUniqueId()Z
.end method

.method public isFirstDisplay()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRotatedLocked()Z
    .locals 2

    iget p0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public isWindowManagerMirroringLocked()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCanHostTasksChanged()V
    .locals 0

    return-void
.end method

.method public onOverlayChangedLocked()V
    .locals 0

    return-void
.end method

.method public requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;)Ljava/lang/Runnable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;ILjava/util/ArrayList;)Ljava/lang/Runnable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayDevice;->requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public setAutoLowLatencyModeLocked(Z)V
    .locals 0

    return-void
.end method

.method public setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .locals 0

    return-void
.end method

.method public setGameContentTypeLocked(Z)V
    .locals 0

    return-void
.end method

.method public setRequestedColorModeLocked(I)V
    .locals 0

    return-void
.end method

.method public setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V
    .locals 0

    return-void
.end method

.method public setWindowManagerMirroringLocked(Z)V
    .locals 0

    return-void
.end method

.method public shouldOnlyMirror()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateDisplayInfoForFrameRateOverride(ILandroid/view/DisplayInfo;)V
    .locals 0

    return-void
.end method
