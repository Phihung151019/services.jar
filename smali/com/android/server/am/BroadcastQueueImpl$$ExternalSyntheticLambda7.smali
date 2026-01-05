.class public final synthetic Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget p0, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda7;->$r8$classId:I

    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    packed-switch p0, :pswitch_data_0

    iget p0, p1, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    iput p0, p1, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    if-nez p0, :cond_0

    iput-boolean v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    goto :goto_0

    :cond_0
    if-gez p0, :cond_1

    const/4 p0, 0x0

    iput p0, p1, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->addPrioritizeEarliestRequest()Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
