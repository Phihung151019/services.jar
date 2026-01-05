.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(IIILjava/lang/Object;)V
    .locals 0

    iput p3, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda9;->$r8$classId:I

    iput-object p4, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    iput p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda9;->f$1:I

    iput p2, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda9;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda9;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda9;->f$1:I

    iget p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda9;->f$2:I

    new-instance v2, Lcom/android/server/audio/AudioService$VolumeStreamState$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioService$VolumeStreamState;II)V

    iget-object v1, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v0, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v1, p0, v0, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$mapplyDeviceAlias(Lcom/android/server/audio/AudioService;IILcom/samsung/android/server/audio/DeviceAliasManager$DeviceAliasRunner;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda9;->f$1:I

    iget p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda9;->f$2:I

    sget-object v2, Lcom/android/server/audio/AudioService;->sAppCastingLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string/jumbo v4, "uid:"

    const-string v5, ", device:"

    const-string v6, ", package:"

    invoke-static {v1, p0, v4, v5, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v5, "AS.AudioService"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    invoke-virtual {v2, v1, p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppToRemoteSubmix(II)V

    iget-object p0, v0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->onRoutingUpdated()V

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->observeDevicesForMediaStream()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda9;->f$1:I

    iget p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda9;->f$2:I

    sget-object v2, Lcom/android/server/audio/AudioService;->sAppCastingLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string/jumbo v4, "uid:"

    const-string v5, ", device:"

    const-string v6, ", package:"

    invoke-static {v1, p0, v4, v5, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v4, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    const-string v4, "AS.AudioService"

    invoke-virtual {v3, p0, v4}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    iget-object p0, v0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    const/16 v2, -0x3ea

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppToRemoteSubmix(II)V

    iget-object p0, v0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->onRoutingUpdated()V

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->observeDevicesForMediaStream()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
