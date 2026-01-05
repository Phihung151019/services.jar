.class public final synthetic Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/input/PointerIconCache;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/PointerIconCache;II)V
    .locals 0

    iput p3, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/PointerIconCache;

    iput p2, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda1;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/PointerIconCache;

    iget p0, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda1;->f$1:I

    iget-object v1, v0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget v2, v0, Lcom/android/server/input/PointerIconCache;->mPointerIconStrokeStyle:I

    if-ne v2, p0, :cond_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iput p0, v0, Lcom/android/server/input/PointerIconCache;->mPointerIconStrokeStyle:I

    iget-object p0, v0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, v0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/PointerIconCache;

    iget p0, p0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda1;->f$1:I

    iget-object v1, v0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_2
    iget v2, v0, Lcom/android/server/input/PointerIconCache;->mPointerIconFillStyle:I

    if-ne v2, p0, :cond_1

    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_1
    iput p0, v0, Lcom/android/server/input/PointerIconCache;->mPointerIconFillStyle:I

    iget-object p0, v0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, v0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    :goto_2
    return-void

    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
