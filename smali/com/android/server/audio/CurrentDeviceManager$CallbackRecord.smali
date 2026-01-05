.class public final Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final callback:Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

.field public final executor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;->callback:Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;->callback:Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

    iput-object p2, p0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;

    iget-object p1, p1, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;->callback:Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;->callback:Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;->callback:Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
