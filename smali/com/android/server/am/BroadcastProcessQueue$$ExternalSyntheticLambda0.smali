.class public final synthetic Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;
.implements Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 0

    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->mWasDeferredByMARs:Ljava/util/ArrayList;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public test(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    iget-boolean p0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-nez p0, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->isMARsTargetReceiver(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->isMARsTargetReceiver(I)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget p0, p0, p2

    const/4 p1, 0x6

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_2
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget p0, p0, p2

    const/4 p1, 0x6

    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_3
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget p0, p0, p2

    if-nez p0, :cond_3

    const/4 p0, 0x1

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
