.class public final synthetic Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;
.implements Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 8

    iget v1, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;->$r8$classId:I

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/BroadcastQueueImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v1, :pswitch_data_0

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    const-string/jumbo v7, "mBroadcastConsumerDeferClear"

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x6

    const-string/jumbo v7, "mBroadcastConsumerDeferApply"

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    const-string/jumbo v7, "mBroadcastConsumerSkipAndCanceled"

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    return-void

    :pswitch_2
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    const-string/jumbo v7, "mBroadcastConsumerSkip"

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public test(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getReceiverPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;->f$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
