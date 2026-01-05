.class public final Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/VolumeMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    const-string/jumbo p1, "VolumeMonitor"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    new-instance v2, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;-><init>(Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;)V

    iput-object v2, v1, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;

    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
