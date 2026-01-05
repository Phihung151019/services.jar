.class public final synthetic Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda11;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 6

    iget v0, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda11;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/content/Intent;

    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-static {v3, p0}, Lcom/android/server/am/BroadcastProcessQueue;->isDispatchedInQueue(Ljava/util/ArrayDeque;Landroid/content/Intent;)Z

    move-result v3

    iget-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-static {v4, p0}, Lcom/android/server/am/BroadcastProcessQueue;->isDispatchedInQueue(Ljava/util/ArrayDeque;Landroid/content/Intent;)Z

    move-result v4

    iget-object v5, p1, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-static {v5, p0}, Lcom/android/server/am/BroadcastProcessQueue;->isDispatchedInQueue(Ljava/util/ArrayDeque;Landroid/content/Intent;)Z

    move-result p0

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    if-nez p0, :cond_4

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isDeferredUntilActive()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    return v1

    :pswitch_0
    check-cast p0, Ljava/lang/String;

    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    iget-object p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
