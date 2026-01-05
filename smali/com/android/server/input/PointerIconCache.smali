.class public final Lcom/android/server/input/PointerIconCache;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAccessibilityScaleFactorPerDisplay:Landroid/util/SparseDoubleArray;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayContexts:Landroid/util/SparseArray;

.field public final mDisplayDensities:Landroid/util/SparseIntArray;

.field public final mDisplayListener:Lcom/android/server/input/PointerIconCache$1;

.field public final mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService;

.field public mPointerIconColor:I

.field public mPointerIconFillStyle:I

.field public mPointerIconScale:F

.field public mPointerIconSizeScale:F

.field public mPointerIconStrokeStyle:I

.field public final mUiThreadHandler:Landroid/os/Handler;

.field public mUseLargePointerIcons:Z


# direct methods
.method public static -$$Nest$mhandleDisplayChanged(Lcom/android/server/input/PointerIconCache;I)V
    .locals 4

    const-string/jumbo v0, "Reloading pointer icons due to density change on display: "

    iget-object v1, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/input/PointerIconCache;->updateDisplayDensityLocked(I)Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "PointerIconCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Landroid/os/Handler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/PointerIconCache;->mUseLargePointerIcons:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconSizeScale:F

    const v2, 0xffffff

    iput v2, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconColor:I

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/PointerIconCache;->mDisplayContexts:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/PointerIconCache;->mDisplayDensities:Landroid/util/SparseIntArray;

    iput v0, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconFillStyle:I

    iput v0, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconStrokeStyle:I

    iput v1, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconScale:F

    new-instance v0, Landroid/util/SparseDoubleArray;

    invoke-direct {v0}, Landroid/util/SparseDoubleArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/PointerIconCache;->mAccessibilityScaleFactorPerDisplay:Landroid/util/SparseDoubleArray;

    new-instance v0, Lcom/android/server/input/PointerIconCache$1;

    invoke-direct {v0, p0}, Lcom/android/server/input/PointerIconCache$1;-><init>(Lcom/android/server/input/PointerIconCache;)V

    iput-object v0, p0, Lcom/android/server/input/PointerIconCache;->mDisplayListener:Lcom/android/server/input/PointerIconCache$1;

    iput-object p1, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iput-object p3, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final getContextForDisplayLocked(I)Landroid/content/Context;
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    return-object p0

    :cond_2
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    return-object v0
.end method

.method public final monitor()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final updateDisplayDensityLocked(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mDisplayDensities:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    iget v2, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mDisplayDensities:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 p0, 0x1

    return p0
.end method
