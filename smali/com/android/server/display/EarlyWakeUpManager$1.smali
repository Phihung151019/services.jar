.class public final Lcom/android/server/display/EarlyWakeUpManager$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/EarlyWakeUpManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/EarlyWakeUpManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/EarlyWakeUpManager$1;->this$0:Lcom/android/server/display/EarlyWakeUpManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/EarlyWakeUpManager$1;->this$0:Lcom/android/server/display/EarlyWakeUpManager;

    iget-object v0, v0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyWakeUpLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/EarlyWakeUpManager$1;->this$0:Lcom/android/server/display/EarlyWakeUpManager;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    invoke-virtual {p0}, Lcom/android/server/display/EarlyWakeUpManager;->updateSuspendBlockerLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
