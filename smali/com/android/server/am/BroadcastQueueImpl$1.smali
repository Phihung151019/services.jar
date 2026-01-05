.class public final Lcom/android/server/am/BroadcastQueueImpl$1;
.super Landroid/app/UidObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BroadcastQueueImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastQueueImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl$1;->this$0:Lcom/android/server/am/BroadcastQueueImpl;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUidStateChanged(IIJI)V
    .locals 0

    iget-object p3, p0, Lcom/android/server/am/BroadcastQueueImpl$1;->this$0:Lcom/android/server/am/BroadcastQueueImpl;

    iget-object p3, p3, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x7

    invoke-virtual {p3, p5, p4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl$1;->this$0:Lcom/android/server/am/BroadcastQueueImpl;

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p5, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
