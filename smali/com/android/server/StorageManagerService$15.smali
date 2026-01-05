.class public final Lcom/android/server/StorageManagerService$15;
.super Landroid/os/IVoldTaskListener$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$result:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/StorageManagerService$15;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/StorageManagerService$15;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method

.method private final onFinished$com$android$server$StorageManagerService$13(ILandroid/os/PersistableBundle;)V
    .locals 0

    return-void
.end method

.method private final onStatus$com$android$server$StorageManagerService$15(ILandroid/os/PersistableBundle;)V
    .locals 0

    return-void
.end method

.method private final onStatus$com$android$server$StorageManagerService$16(ILandroid/os/PersistableBundle;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onFinished(ILandroid/os/PersistableBundle;)V
    .locals 0

    iget p1, p0, Lcom/android/server/StorageManagerService$15;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService$15;->val$result:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/StorageManagerService$15;->val$result:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStatus(ILandroid/os/PersistableBundle;)V
    .locals 0

    iget p2, p0, Lcom/android/server/StorageManagerService$15;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    iget-object p2, p0, Lcom/android/server/StorageManagerService$15;->val$result:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/StorageManagerService;

    iget-object p2, p2, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService$15;->val$result:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/StorageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
