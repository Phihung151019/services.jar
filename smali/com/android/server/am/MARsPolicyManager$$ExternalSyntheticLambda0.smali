.class public final synthetic Lcom/android/server/am/MARsPolicyManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/MARsPolicyManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/MARsPolicyManager;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueueImpl;

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
