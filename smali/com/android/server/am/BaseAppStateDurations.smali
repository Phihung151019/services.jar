.class public abstract Lcom/android/server/am/BaseAppStateDurations;
.super Lcom/android/server/am/BaseAppStateEvents;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static subtract(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 19

    if-eqz p1, :cond_c

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p0, :cond_c

    invoke-virtual/range {p0 .. p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iget-wide v5, v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    iget-wide v7, v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    :goto_0
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v14, v5, v12

    if-nez v14, :cond_2

    cmp-long v14, v7, v12

    if-eqz v14, :cond_1

    goto :goto_1

    :cond_1
    return-object v4

    :cond_2
    :goto_1
    const/4 v14, 0x1

    if-eqz v10, :cond_3

    if-nez v11, :cond_3

    move v15, v14

    goto :goto_2

    :cond_3
    move v15, v9

    :goto_2
    cmp-long v16, v5, v7

    if-nez v16, :cond_5

    xor-int/lit8 v10, v10, 0x1

    xor-int/lit8 v11, v11, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    iget-wide v6, v5, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    goto :goto_3

    :cond_4
    move-object v5, v2

    move-wide v6, v12

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    iget-wide v12, v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    goto :goto_7

    :cond_5
    if-gez v16, :cond_7

    xor-int/lit8 v10, v10, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    iget-wide v12, v5, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    goto :goto_4

    :cond_6
    move-object v5, v2

    :goto_4
    move-wide/from16 v17, v12

    move-wide v12, v7

    :goto_5
    move-wide/from16 v6, v17

    goto :goto_7

    :cond_7
    xor-int/lit8 v11, v11, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    iget-wide v12, v7, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    goto :goto_6

    :cond_8
    move-object v7, v3

    :goto_6
    move-wide/from16 v17, v5

    move-object v5, v2

    move-object v2, v3

    move-object v3, v7

    goto :goto_5

    :cond_9
    :goto_7
    if-eqz v10, :cond_a

    if-nez v11, :cond_a

    goto :goto_8

    :cond_a
    move v14, v9

    :goto_8
    if-eq v15, v14, :cond_b

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object v2, v5

    move-wide v5, v6

    move-wide v7, v12

    goto/16 :goto_0

    :cond_c
    :goto_9
    return-object p0
.end method


# virtual methods
.method public add(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 19

    if-eqz p2, :cond_10

    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_b

    :cond_0
    if-eqz p1, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_a

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iget-wide v5, v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    iget-wide v7, v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    :goto_0
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v14, v5, v12

    if-nez v14, :cond_3

    cmp-long v14, v7, v12

    if-eqz v14, :cond_2

    goto :goto_1

    :cond_2
    return-object v4

    :cond_3
    :goto_1
    const/4 v14, 0x1

    if-nez v10, :cond_5

    if-eqz v11, :cond_4

    goto :goto_2

    :cond_4
    move v15, v9

    goto :goto_3

    :cond_5
    :goto_2
    move v15, v14

    :goto_3
    cmp-long v16, v5, v7

    if-nez v16, :cond_7

    xor-int/lit8 v10, v10, 0x1

    xor-int/lit8 v11, v11, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    iget-wide v6, v5, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    goto :goto_4

    :cond_6
    move-object v5, v2

    move-wide v6, v12

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    iget-wide v12, v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    goto :goto_8

    :cond_7
    if-gez v16, :cond_9

    xor-int/lit8 v10, v10, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    iget-wide v12, v5, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    goto :goto_5

    :cond_8
    move-object v5, v2

    :goto_5
    move-wide/from16 v17, v12

    move-wide v12, v7

    :goto_6
    move-wide/from16 v6, v17

    goto :goto_8

    :cond_9
    xor-int/lit8 v11, v11, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    iget-wide v12, v7, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    goto :goto_7

    :cond_a
    move-object v7, v3

    :goto_7
    move-wide/from16 v17, v5

    move-object v5, v2

    move-object v2, v3

    move-object v3, v7

    goto :goto_6

    :cond_b
    :goto_8
    if-nez v10, :cond_d

    if-eqz v11, :cond_c

    goto :goto_9

    :cond_c
    move v14, v9

    :cond_d
    :goto_9
    if-eq v15, v14, :cond_e

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_e
    move-object v2, v5

    move-wide v5, v6

    move-wide v7, v12

    goto/16 :goto_0

    :cond_f
    :goto_a
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    return-object v0

    :cond_10
    :goto_b
    return-object p1
.end method

.method public final addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v1, v0, p3

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    aput-object v1, v0, p3

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    invoke-virtual {p0, p3}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result v1

    if-eq p1, v1, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-wide p1, p2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    move-result-wide p1

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/am/BaseAppStateDurations;->trimEvents(IJ)V

    return-void
.end method

.method public final formatEventSummary(IJ)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurationsSince(IJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTotalDurationsSince(IJJ)J
    .locals 16

    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v2, v2, p1

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x1

    move-wide v7, v3

    move-wide v9, v7

    move v11, v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    iget-wide v12, v12, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    cmp-long v14, v12, v0

    if-ltz v14, :cond_2

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    add-long/2addr v7, v12

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v9, v12

    :goto_2
    xor-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_4

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sub-long v0, p4, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long/2addr v0, v7

    return-wide v0

    :cond_4
    return-wide v7

    :cond_5
    :goto_3
    return-wide v3
.end method

.method public final isActive(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final subtract(Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v0, p0

    if-le v0, p2, :cond_1

    aget-object v0, p0, p2

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v1, p1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lcom/android/server/am/BaseAppStateDurations;->subtract(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object p1

    aput-object p1, p0, p2

    :cond_1
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isActive[0]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " totalDurations[0]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    move-result-wide v4

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurationsSince(IJJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final trimEvents(IJ)V
    .locals 4

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object p0, p0, p1

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, v1, :cond_3

    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    iget-wide v2, p1, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    cmp-long p1, v2, p2

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    iget-wide v1, p1, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    cmp-long p1, v1, p2

    if-lez p1, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->trimTo(J)V

    return-void

    :cond_2
    invoke-virtual {p0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-ne p1, v1, :cond_4

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->trimTo(J)V

    :cond_4
    :goto_1
    return-void
.end method
