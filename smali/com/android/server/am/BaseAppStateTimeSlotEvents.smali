.class public abstract Lcom/android/server/am/BaseAppStateTimeSlotEvents;
.super Lcom/android/server/am/BaseAppStateEvents;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCurSlotStartTime:[J

.field public final mTimeSlotSize:J


# direct methods
.method public constructor <init>(ILjava/lang/String;JLcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p5}, Lcom/android/server/am/BaseAppStateEvents;-><init>(ILjava/lang/String;ILcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;)V

    iput-wide p3, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    new-array p1, v0, [J

    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    return-void
.end method


# virtual methods
.method public final add(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final add(Lcom/android/server/am/BaseAppStateEvents;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/android/server/am/BaseAppStateTimeSlotEvents;

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    check-cast v1, Lcom/android/server/am/BaseAppStateTimeSlotEvents;

    iget-object v2, v0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v2, v2

    iget-object v3, v1, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v3, v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_6

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v4, v4

    if-ge v3, v4, :cond_a

    iget-object v4, v1, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    move-object v5, v1

    move v15, v3

    goto/16 :goto_5

    :cond_3
    iget-object v5, v0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v5, v5, v3

    iget-object v6, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    iget-object v7, v1, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    move-object v5, v1

    move v15, v3

    goto/16 :goto_4

    :cond_5
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    aget-wide v11, v6, v3

    aget-wide v13, v7, v3

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move v15, v3

    int-to-long v2, v5

    move-object v5, v1

    move-wide/from16 v16, v2

    iget-wide v1, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    mul-long v16, v16, v1

    move-wide/from16 v18, v1

    sub-long v1, v11, v16

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-long v3, v3

    mul-long v3, v3, v18

    sub-long v3, v13, v3

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    :goto_1
    cmp-long v22, v20, v16

    if-gtz v22, :cond_8

    cmp-long v22, v20, v1

    if-ltz v22, :cond_6

    cmp-long v22, v20, v11

    if-gtz v22, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    goto :goto_2

    :cond_6
    const/16 v22, 0x0

    :goto_2
    cmp-long v23, v20, v3

    if-ltz v23, :cond_7

    cmp-long v23, v20, v13

    if-gtz v23, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    goto :goto_3

    :cond_7
    const/16 v23, 0x0

    :goto_3
    add-int v22, v22, v23

    move-wide/from16 v23, v1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-long v20, v20, v18

    move-wide/from16 v1, v23

    goto :goto_1

    :cond_8
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aput-object v8, v1, v15

    cmp-long v1, v11, v13

    if-gez v1, :cond_9

    aget-wide v1, v7, v15

    aput-wide v1, v6, v15

    :cond_9
    aget-wide v1, v6, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    move-result-wide v1

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->trimEvents(IJ)V

    goto :goto_5

    :goto_4
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    aput-object v2, v1, v15

    aget-wide v1, v7, v15

    aput-wide v1, v6, v15

    :goto_5
    add-int/lit8 v3, v15, 0x1

    move-object v1, v5

    goto/16 :goto_0

    :cond_a
    :goto_6
    return-void
.end method

.method public final addEvent(J)V
    .locals 11

    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    rem-long v2, p1, v0

    sub-long v2, p1, v2

    iget-object v4, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iget-object v6, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aput-object v4, v6, v5

    :cond_0
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    const/4 v8, 0x1

    if-nez v6, :cond_1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    aget-wide v9, v7, v5

    :goto_0
    cmp-long v6, v9, v2

    if-gez v6, :cond_2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-long/2addr v9, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->offerLast(Ljava/lang/Object;)Z

    :goto_1
    aput-wide v2, v7, v5

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    move-result-wide p1

    invoke-virtual {p0, v5, p1, p2}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->trimEvents(IJ)V

    return-void
.end method

.method public getCurrentSlotStartTime(I)J
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public final getTotalEventsSince(JJ)I
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v2, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    rem-long v4, p1, v2

    sub-long/2addr p1, v4

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide v4, p0, v1

    cmp-long v6, p1, v4

    if-lez v6, :cond_1

    goto :goto_1

    :cond_1
    rem-long v6, p3, v2

    sub-long/2addr p3, v6

    invoke-static {p3, p4, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    invoke-virtual {v0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    aget-wide v4, p0, v1

    :goto_0
    cmp-long p0, v4, p1

    if-ltz p0, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    cmp-long v6, v4, p3

    if-gtz v6, :cond_2

    add-int/2addr v1, p0

    :cond_2
    sub-long/2addr v4, v2

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public final trimEvents(IJ)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    rem-long v3, p2, v1

    sub-long/2addr p2, v3

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide p0, p0, p1

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-long v3, v3

    mul-long/2addr v3, v1

    sub-long/2addr p0, v3

    :goto_0
    cmp-long v3, p0, p2

    if-gez v3, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    add-long/2addr p0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
