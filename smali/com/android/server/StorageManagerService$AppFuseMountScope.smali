.class public final Lcom/android/server/StorageManagerService$AppFuseMountScope;
.super Lcom/android/server/storage/AppFuseBridge$MountScope;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mMounted:Z

.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0, p2, p3}, Lcom/android/server/storage/AppFuseBridge$MountScope;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->mMounted:Z

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    const-string v0, "#close might be slow"

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->mMounted:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/StorageManagerService$AppFuseMountScope$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/server/StorageManagerService$AppFuseMountScope$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->mMounted:Z

    :cond_0
    return-void
.end method
