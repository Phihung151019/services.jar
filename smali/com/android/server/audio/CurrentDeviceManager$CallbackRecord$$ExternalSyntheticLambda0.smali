.class public final synthetic Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;

    iput-object p2, p0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;

    iget-object p0, p0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    iget-object v0, v0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;->callback:Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

    iget v1, v0, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/audio/SensorHandleThread;

    iput-object p0, v0, Lcom/samsung/android/server/audio/SensorHandleThread;->mMusicDevices:Ljava/util/Set;

    goto :goto_1

    :pswitch_0
    iget-object v0, v0, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/audio/SensorHandleThread;

    iput-object p0, v0, Lcom/samsung/android/server/audio/SensorHandleThread;->mVoiceDevices:Ljava/util/Set;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/server/audio/SensorHandleThread;->sBluetoothCommunicationDevices:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/SensorHandleThread;->stopProximate()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/SensorHandleThread;->startProximate()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
