.class public final Lcom/android/server/StorageManagerService$11;
.super Landroid/os/IVoldTaskListener$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/StorageManagerService;

.field public final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/StorageManagerService$11;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/StorageManagerService$11;->this$0:Lcom/android/server/StorageManagerService;

    iput-object p2, p0, Lcom/android/server/StorageManagerService$11;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method

.method private final onStatus$com$android$server$StorageManagerService$11(ILandroid/os/PersistableBundle;)V
    .locals 0

    return-void
.end method

.method private final onStatus$com$android$server$StorageManagerService$12(ILandroid/os/PersistableBundle;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onFinished(ILandroid/os/PersistableBundle;)V
    .locals 0

    iget p1, p0, Lcom/android/server/StorageManagerService$11;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/server/StorageManagerService$11;->this$0:Lcom/android/server/StorageManagerService;

    iget-object p1, p1, Lcom/android/server/StorageManagerService;->mHeimdAllFs:Lcom/android/server/HeimdAllFsService;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/HeimdAllFsService;->waitForFinished()V

    :cond_0
    iget-object p1, p0, Lcom/android/server/StorageManagerService$11;->this$0:Lcom/android/server/StorageManagerService;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/server/StorageManagerService;->mHeimdAllFs:Lcom/android/server/HeimdAllFsService;

    iget-object p1, p0, Lcom/android/server/StorageManagerService$11;->val$callback:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/StorageManagerService$11;->val$callback:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/StorageManagerService$11;->this$0:Lcom/android/server/StorageManagerService;

    iget-object p1, p1, Lcom/android/server/StorageManagerService;->mHeimdAllFs:Lcom/android/server/HeimdAllFsService;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/HeimdAllFsService;->waitForFinished()V

    :cond_2
    iget-object p1, p0, Lcom/android/server/StorageManagerService$11;->this$0:Lcom/android/server/StorageManagerService;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/server/StorageManagerService;->mHeimdAllFs:Lcom/android/server/HeimdAllFsService;

    iget-object p1, p0, Lcom/android/server/StorageManagerService$11;->val$callback:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/StorageManagerService$11;->val$callback:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStatus(ILandroid/os/PersistableBundle;)V
    .locals 0

    iget p0, p0, Lcom/android/server/StorageManagerService$11;->$r8$classId:I

    return-void
.end method
