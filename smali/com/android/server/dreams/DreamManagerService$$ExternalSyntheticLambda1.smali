.class public final synthetic Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/dreams/DreamManagerService;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/dreams/DreamManagerService;

    iput-object p2, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/dreams/DreamManagerService;

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService;->mDreamManagerStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;

    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/dreams/DreamManagerService;

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/SystemService$TargetUser;

    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/content/PackageMonitor;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/dreams/DreamManagerService;

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/SystemService$TargetUser;

    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p0

    iget-object v1, v0, Lcom/android/server/dreams/DreamManagerService;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$PerUserPackageMonitor;

    invoke-direct {v1, v0}, Lcom/android/server/dreams/DreamManagerService$PerUserPackageMonitor;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    iget-object v2, v0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "Package monitor already registered for "

    const-string v1, "DreamManagerService"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
