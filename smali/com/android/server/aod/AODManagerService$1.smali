.class public final Lcom/android/server/aod/AODManagerService$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$1;->this$0:Lcom/android/server/aod/AODManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$1;->this$0:Lcom/android/server/aod/AODManagerService;

    iget-object v0, v0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    const-string v1, "AODManagerService"

    const-string/jumbo v2, "screenTurningOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$1;->this$0:Lcom/android/server/aod/AODManagerService;

    iget-object v1, v1, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/aod/AODManager$AODChangeListener;->readyToScreenTurningOn()V

    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$1;->this$0:Lcom/android/server/aod/AODManagerService;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p0, "AODManagerService"

    const-string/jumbo v1, "screenTurningOn : Do nothing, There is no Listener"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
