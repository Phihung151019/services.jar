.class public final synthetic Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/input/PointerIconCache;

.field public final synthetic f$1:I

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/PointerIconCache;IFI)V
    .locals 0

    iput p4, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/PointerIconCache;

    iput p2, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;->f$2:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/PointerIconCache;

    iget v1, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;->f$2:F

    iget-object v2, v0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/server/input/PointerIconCache;->mAccessibilityScaleFactorPerDisplay:Landroid/util/SparseDoubleArray;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3, v1, v4, v5}, Landroid/util/SparseDoubleArray;->get(ID)D

    move-result-wide v3

    float-to-double v5, p0

    cmpl-double p0, v3, v5

    if-nez p0, :cond_0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, v0, Lcom/android/server/input/PointerIconCache;->mAccessibilityScaleFactorPerDisplay:Landroid/util/SparseDoubleArray;

    invoke-virtual {p0, v1, v5, v6}, Landroid/util/SparseDoubleArray;->put(ID)V

    iget-object p0, v0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, v0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/PointerIconCache;

    iget v1, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;->f$2:F

    iget-object v2, v0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_2
    iget v3, v0, Lcom/android/server/input/PointerIconCache;->mPointerIconSizeScale:F

    cmpl-float v3, v3, p0

    if-nez v3, :cond_1

    iget v3, v0, Lcom/android/server/input/PointerIconCache;->mPointerIconColor:I

    if-ne v3, v1, :cond_1

    monitor-exit v2

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_1
    iput p0, v0, Lcom/android/server/input/PointerIconCache;->mPointerIconSizeScale:F

    iput v1, v0, Lcom/android/server/input/PointerIconCache;->mPointerIconColor:I

    iget-object p0, v0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, v0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    :goto_2
    return-void

    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
