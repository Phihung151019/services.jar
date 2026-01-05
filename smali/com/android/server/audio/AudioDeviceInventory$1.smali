.class Lcom/android/server/audio/AudioDeviceInventory$1;
.super Ljava/util/LinkedHashMap;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioDeviceInventory;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioDeviceInventory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$1;->this$0:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method public static record(Ljava/lang/String;ZLcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .locals 3

    new-instance v0, Landroid/media/MediaMetrics$Item;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "audio.device."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v2}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    iget-object v2, p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object v0, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    iget-object p2, p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p2, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    if-eqz p1, :cond_0

    const-string/jumbo p1, "connected"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "disconnected"

    :goto_0
    invoke-virtual {p0, p2, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method


# virtual methods
.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const-string/jumbo p1, "put"

    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, Lcom/android/server/audio/AudioDeviceInventory$1;->record(Ljava/lang/String;ZLcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    return-object p0
.end method

.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-nez p0, :cond_0

    const-string/jumbo p1, "putIfAbsent"

    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, Lcom/android/server/audio/AudioDeviceInventory$1;->record(Ljava/lang/String;ZLcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    :cond_0
    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-eqz p0, :cond_0

    const-string/jumbo p1, "remove"

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/android/server/audio/AudioDeviceInventory$1;->record(Ljava/lang/String;ZLcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    :cond_0
    return-object p0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const-string/jumbo p1, "remove"

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/server/audio/AudioDeviceInventory$1;->record(Ljava/lang/String;ZLcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    :cond_0
    return p0
.end method
