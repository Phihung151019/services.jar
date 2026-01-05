.class public final synthetic Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget p4, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogHead:I

    iget p5, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogSize:I

    add-int v2, p4, p5

    const/16 v3, 0xc8

    rem-int/2addr v2, v3

    const/4 v4, 0x1

    if-ne p5, v3, :cond_0

    add-int/2addr p4, v4

    rem-int/2addr p4, v3

    iput p4, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogHead:I

    goto :goto_0

    :cond_0
    add-int/2addr p5, v4

    iput p5, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogSize:I

    :goto_0
    iget-object p4, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLog:[[I

    aget-object p4, p4, v2

    const/4 p5, 0x0

    aput p0, p4, p5

    aput p2, p4, v4

    const/4 p0, 0x2

    aput p3, p4, p0

    iget-object p0, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogTimestamps:[J

    aput-wide v0, p0, v2

    return-void
.end method
