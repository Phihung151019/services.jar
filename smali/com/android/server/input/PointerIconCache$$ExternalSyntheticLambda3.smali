.class public final synthetic Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/PointerIconCache;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/PointerIconCache;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/input/PointerIconCache;

    iput p2, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda3;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/input/PointerIconCache;

    iget p0, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda3;->f$1:F

    iget-object v1, v0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget v2, v0, Lcom/android/server/input/PointerIconCache;->mPointerIconScale:F

    cmpl-float v2, v2, p0

    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iput p0, v0, Lcom/android/server/input/PointerIconCache;->mPointerIconScale:F

    iget-object p0, v0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, v0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
