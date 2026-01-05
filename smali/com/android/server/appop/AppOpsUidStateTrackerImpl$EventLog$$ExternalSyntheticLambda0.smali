.class public final synthetic Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/function/HeptConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    iget p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p3, Ljava/lang/Integer;

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p6, Ljava/lang/Boolean;

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    check-cast p7, Ljava/lang/Boolean;

    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    iget p6, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogHead:I

    iget p7, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogSize:I

    add-int v2, p6, p7

    const/16 v3, 0xc8

    rem-int/2addr v2, v3

    const/4 v4, 0x1

    if-ne p7, v3, :cond_0

    add-int/2addr p6, v4

    rem-int/2addr p6, v3

    iput p6, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogHead:I

    goto :goto_0

    :cond_0
    add-int/2addr p7, v4

    iput p7, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogSize:I

    :goto_0
    iget-object p6, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLog:[[I

    aget-object p6, p6, v2

    const/4 p7, 0x0

    aput p0, p6, p7

    aput p2, p6, v4

    const/4 p0, 0x2

    aput p3, p6, p0

    const/4 p2, 0x3

    aput p7, p6, p2

    if-eqz p4, :cond_1

    aput v4, p6, p2

    :cond_1
    if-eqz p5, :cond_2

    aget p3, p6, p2

    add-int/2addr p3, p0

    aput p3, p6, p2

    :cond_2
    iget-object p0, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogTimestamps:[J

    aput-wide v0, p0, v2

    return-void

    :pswitch_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p4

    check-cast p7, Ljava/lang/Integer;

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p5

    iget p6, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogHead:I

    iget p7, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogSize:I

    add-int v2, p6, p7

    const/16 v3, 0xc8

    rem-int/2addr v2, v3

    const/4 v4, 0x1

    if-ne p7, v3, :cond_3

    add-int/2addr p6, v4

    rem-int/2addr p6, v3

    iput p6, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogHead:I

    goto :goto_1

    :cond_3
    add-int/2addr p7, v4

    iput p7, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogSize:I

    :goto_1
    iget-object p6, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLog:[[I

    aget-object p6, p6, v2

    const/4 p7, 0x0

    aput p0, p6, p7

    aput p2, p6, v4

    const/4 p0, 0x2

    aput p3, p6, p0

    const/4 p0, 0x3

    aput p4, p6, p0

    const/4 p0, 0x4

    aput p5, p6, p0

    iget-object p0, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogTimestamps:[J

    aput-wide v0, p0, v2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
