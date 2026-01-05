.class public final Lcom/android/server/audio/AudioService$9;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;

.field public val$controller:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/media/IVolumeController;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService$9;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    iput-object p2, p0, Lcom/android/server/audio/AudioService$9;->val$controller:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/audio/AudioService$9;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ForceControlStreamClient() could not link to "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " binder death"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AS.AudioService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/android/server/audio/AudioService$9;->val$controller:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    iget v0, p0, Lcom/android/server/audio/AudioService$9;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "AS.AudioService"

    const-string/jumbo v2, "SCO client died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$9;

    if-eq v2, p0, :cond_0

    const-string p0, "AS.AudioService"

    const-string/jumbo v1, "unregistered control stream client died"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    iput-object p0, v1, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$9;

    const/4 p0, -0x1

    iput p0, v1, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$9;->val$controller:Ljava/lang/Object;

    check-cast v1, Landroid/media/IVolumeController;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$9;->val$controller:Ljava/lang/Object;

    check-cast p0, Landroid/media/IVolumeController;

    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioService$VolumeController;->removeController(Landroid/media/IVolumeController;)V

    sget-object p0, Lcom/android/server/audio/AudioService;->sVolumeControllerLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string/jumbo v1, "volume controller set to null because binder died (dex case)"

    invoke-direct {v0, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "AS.AudioService"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {p0, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
