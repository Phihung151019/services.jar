.class public final Lcom/android/server/am/CacheOomRanker$RssComparator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/CacheOomRanker$RssComparator;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget p0, p0, Lcom/android/server/am/CacheOomRanker$RssComparator;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    check-cast p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    iget p0, p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->score:F

    iget p1, p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->score:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    check-cast p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    iget-object p0, p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    iget-object p0, p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-wide p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    check-cast p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    iget-object p0, p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-wide p0, p0, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    iget-object p2, p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-wide v0, p2, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    check-cast p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    iget-object p0, p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    int-to-long p0, p0

    iget-object p2, p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p2, p2, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    check-cast p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    iget-object p0, p2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRss:J

    iget-object p0, p1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-wide p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRss:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
