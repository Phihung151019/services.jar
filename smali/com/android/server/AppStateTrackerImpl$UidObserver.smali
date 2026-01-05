.class public final Lcom/android/server/AppStateTrackerImpl$UidObserver;
.super Landroid/app/UidObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$UidObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUidActive(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$UidObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onUidCachedChanged(IZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$UidObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onUidGone(IZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$UidObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onUidIdle(IZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$UidObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
