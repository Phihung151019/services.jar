.class public final Lcom/android/server/StorageManagerService$5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/StorageManagerService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/StorageManagerService$5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget v0, p0, Lcom/android/server/StorageManagerService$5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v1, "vold died; reconnecting"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object p0, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->connectVold$1()V

    return-void

    :pswitch_0
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v1, "storaged died; reconnecting"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    iget-object p0, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->connectStoraged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
