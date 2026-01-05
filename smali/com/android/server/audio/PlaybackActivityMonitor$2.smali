.class public final Lcom/android/server/audio/PlaybackActivityMonitor$2;
.super Lcom/samsung/android/server/audio/FrequentWorker;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/PlaybackActivityMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/PlaybackActivityMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$2;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-direct {p0}, Lcom/samsung/android/server/audio/FrequentWorker;-><init>()V

    const/16 p1, 0x1388

    iput p1, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mPeriodMs:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mCachedValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final func()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$2;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAudioHandler:Landroid/os/Handler;

    if-nez p0, :cond_0

    const-string p0, "AS.PlaybackActivityMon"

    const-string/jumbo v0, "There is no audio handler"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0xaca

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
