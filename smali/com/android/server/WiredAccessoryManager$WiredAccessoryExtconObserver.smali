.class public final Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;
.super Lcom/android/server/ExtconUEventObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Lcom/android/server/ExtconUEventObserver;-><init>()V

    const-string p0, "HDMI"

    const-string p1, "LINE-OUT"

    const-string v0, "HEADPHONE"

    const-string/jumbo v1, "MICROPHONE"

    filled-new-array {v0, v1, p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getExtconInfoForTypes([Ljava/lang/String;)Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onUEvent(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Landroid/os/UEventObserver$UEvent;)V
    .locals 6

    const-string/jumbo v0, "NAME"

    invoke-virtual {p2, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "STATE"

    invoke-virtual {p2, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    filled-new-array {v1, v1}, [I

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mDeviceTypes:Ljava/util/HashSet;

    const-string v4, "HEADPHONE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    invoke-static {p2, v4, v3, v2}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$smupdateBit(Ljava/lang/String;Ljava/lang/String;I[I)V

    :cond_0
    iget-object v3, p1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mDeviceTypes:Ljava/util/HashSet;

    const-string/jumbo v4, "MICROPHONE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-static {p2, v4, v5, v2}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$smupdateBit(Ljava/lang/String;Ljava/lang/String;I[I)V

    :cond_1
    iget-object v3, p1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mDeviceTypes:Ljava/util/HashSet;

    const-string v4, "HDMI"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x10

    invoke-static {p2, v4, v3, v2}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$smupdateBit(Ljava/lang/String;Ljava/lang/String;I[I)V

    :cond_2
    iget-object p1, p1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mDeviceTypes:Ljava/util/HashSet;

    const-string v3, "LINE-OUT"

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x20

    invoke-static {p2, v3, p1, v2}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$smupdateBit(Ljava/lang/String;Ljava/lang/String;I[I)V

    :cond_3
    aget p1, v2, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aget p2, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    iget-object p2, p2, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    iget v3, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    not-int v4, p1

    and-int/2addr v4, v2

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p1, v2

    or-int/2addr p1, v3

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/WiredAccessoryManager;->updateLocked(ILjava/lang/String;Z)V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    return-void
.end method
