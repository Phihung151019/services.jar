.class public final synthetic Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda14;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    iget p0, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda14;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/android/server/am/BroadcastQueueImpl;->QUEUE_PREDICATE_ANY:Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda13;

    const/4 p0, 0x1

    return p0

    :pswitch_0
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/server/am/BroadcastFilter;

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
