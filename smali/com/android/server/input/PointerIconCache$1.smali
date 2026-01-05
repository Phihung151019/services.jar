.class public final Lcom/android/server/input/PointerIconCache$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/PointerIconCache;


# direct methods
.method public constructor <init>(Lcom/android/server/input/PointerIconCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/PointerIconCache$1;->this$0:Lcom/android/server/input/PointerIconCache;

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/PointerIconCache$1;->this$0:Lcom/android/server/input/PointerIconCache;

    invoke-static {p0, p1}, Lcom/android/server/input/PointerIconCache;->-$$Nest$mhandleDisplayChanged(Lcom/android/server/input/PointerIconCache;I)V

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/PointerIconCache$1;->this$0:Lcom/android/server/input/PointerIconCache;

    invoke-static {p0, p1}, Lcom/android/server/input/PointerIconCache;->-$$Nest$mhandleDisplayChanged(Lcom/android/server/input/PointerIconCache;I)V

    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/PointerIconCache$1;->this$0:Lcom/android/server/input/PointerIconCache;

    iget-object v0, v0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache$1;->this$0:Lcom/android/server/input/PointerIconCache;

    iget-object v1, v1, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/android/server/input/PointerIconCache$1;->this$0:Lcom/android/server/input/PointerIconCache;

    iget-object v1, v1, Lcom/android/server/input/PointerIconCache;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/android/server/input/PointerIconCache$1;->this$0:Lcom/android/server/input/PointerIconCache;

    iget-object v1, v1, Lcom/android/server/input/PointerIconCache;->mDisplayDensities:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object p0, p0, Lcom/android/server/input/PointerIconCache$1;->this$0:Lcom/android/server/input/PointerIconCache;

    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mAccessibilityScaleFactorPerDisplay:Landroid/util/SparseDoubleArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseDoubleArray;->delete(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
