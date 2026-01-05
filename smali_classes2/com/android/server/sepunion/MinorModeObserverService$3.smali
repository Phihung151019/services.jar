.class public final Lcom/android/server/sepunion/MinorModeObserverService$3;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/MinorModeObserverService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/MinorModeObserverService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService$3;->this$0:Lcom/android/server/sepunion/MinorModeObserverService;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPlaybackConfigChanged(Ljava/util/List;)V
    .locals 6

    iget-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService$3;->this$0:Lcom/android/server/sepunion/MinorModeObserverService;

    iget-boolean p1, p1, Lcom/android/server/sepunion/MinorModeObserverService;->mMinorModeEnabled:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService$3;->this$0:Lcom/android/server/sepunion/MinorModeObserverService;

    iget-object p1, p1, Lcom/android/server/sepunion/MinorModeObserverService;->mLastMediaChangedTimeStamp:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x12c

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService$3;->this$0:Lcom/android/server/sepunion/MinorModeObserverService;

    iget-object p1, p1, Lcom/android/server/sepunion/MinorModeObserverService;->mHandler:Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService$3;->this$0:Lcom/android/server/sepunion/MinorModeObserverService;

    iget-object p1, p1, Lcom/android/server/sepunion/MinorModeObserverService;->mHandler:Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p0, p0, Lcom/android/server/sepunion/MinorModeObserverService$3;->this$0:Lcom/android/server/sepunion/MinorModeObserverService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mLastMediaChangedTimeStamp:Ljava/lang/Long;

    :cond_1
    :goto_0
    return-void
.end method
