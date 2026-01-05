.class public final Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public mCount:I

.field public mTargetDurationNs:J

.field public mTimestamp:J


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;

    iget v0, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mCount:I

    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mCount:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mTimestamp:J

    iget-wide p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mTimestamp:J

    cmp-long p0, v0, p0

    if-gez p0, :cond_1

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
