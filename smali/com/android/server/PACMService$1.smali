.class public final Lcom/android/server/PACMService$1;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/PACMService;


# direct methods
.method public constructor <init>(Lcom/android/server/PACMService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/PACMService$1;->this$0:Lcom/android/server/PACMService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "PACMService"

    const-string/jumbo v1, "MESSAGE_CHECK_BOARDCAST_RECEIVER"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/PACMService;->mReceiverList:Ljava/util/List;

    if-nez v1, :cond_1

    const-string/jumbo p0, "List is null"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/PACMService$1;->this$0:Lcom/android/server/PACMService;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/PACMService;->mReceiver:Lcom/android/server/PACMService$2;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/PACMService;->mHandler:Lcom/android/server/PACMService$1;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/PACMService;->registerForBroadcasts()V

    const-wide/16 p0, 0x7d0

    invoke-virtual {v3, v0, p0, p1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Already registered BroadcastReceiver! ["

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    :goto_0
    return-void
.end method
