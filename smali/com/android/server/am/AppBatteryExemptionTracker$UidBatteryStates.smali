.class public final Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;
.super Lcom/android/server/am/BaseAppStateDurations;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public add(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;",
            ">;",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;",
            ">;)",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_1e

    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_15

    :cond_0
    if-eqz p1, :cond_1d

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_14

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    new-instance v5, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v5}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>()V

    iget-wide v6, v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    iget-wide v8, v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    :goto_0
    const-wide v20, 0x7fffffffffffffffL

    cmp-long v22, v6, v20

    if-nez v22, :cond_3

    cmp-long v22, v8, v20

    if-eqz v22, :cond_2

    goto :goto_1

    :cond_2
    return-object v4

    :cond_3
    :goto_1
    const/16 v22, 0x1

    if-nez v13, :cond_5

    if-eqz v14, :cond_4

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    :goto_2
    const-wide/16 p0, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    move/from16 v11, v22

    goto :goto_2

    :goto_4
    cmp-long v12, v6, v8

    if-nez v12, :cond_c

    if-eqz v13, :cond_6

    iget-object v8, v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {v5, v8}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    :cond_6
    if-eqz v14, :cond_7

    iget-object v8, v3, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {v5, v8}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    :cond_7
    if-eqz v15, :cond_9

    if-nez v13, :cond_8

    if-eqz v14, :cond_9

    :cond_8
    sub-long v6, v6, v18

    goto :goto_5

    :cond_9
    move-wide/from16 v6, p0

    :goto_5
    add-long v16, v16, v6

    xor-int/lit8 v13, v13, 0x1

    xor-int/lit8 v14, v14, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    iget-wide v7, v6, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    goto :goto_6

    :cond_a
    move-object v6, v2

    move-wide/from16 v7, v20

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    move/from16 p2, v11

    iget-wide v10, v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    move-wide/from16 v20, v10

    goto :goto_7

    :cond_b
    move/from16 p2, v11

    :goto_7
    move-wide/from16 v23, v20

    move-wide/from16 v20, v7

    move-wide/from16 v8, v23

    goto/16 :goto_b

    :cond_c
    move/from16 p2, v11

    if-gez v12, :cond_10

    if-eqz v13, :cond_d

    iget-object v10, v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {v5, v10}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    :cond_d
    if-eqz v15, :cond_e

    if-eqz v13, :cond_e

    sub-long v6, v6, v18

    goto :goto_8

    :cond_e
    move-wide/from16 v6, p0

    :goto_8
    add-long v16, v16, v6

    xor-int/lit8 v13, v13, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    iget-wide v10, v6, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    move-wide/from16 v20, v10

    goto :goto_b

    :cond_f
    move-object v6, v2

    goto :goto_b

    :cond_10
    if-eqz v14, :cond_11

    iget-object v10, v3, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {v5, v10}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    :cond_11
    if-eqz v15, :cond_12

    if-eqz v14, :cond_12

    sub-long v8, v8, v18

    goto :goto_9

    :cond_12
    move-wide/from16 v8, p0

    :goto_9
    add-long v16, v16, v8

    xor-int/lit8 v14, v14, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    iget-wide v9, v8, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    move-wide/from16 v20, v9

    goto :goto_a

    :cond_13
    move-object v8, v3

    :goto_a
    move-wide/from16 v23, v6

    move-object v6, v2

    move-object v2, v3

    move-object v3, v8

    move-wide/from16 v8, v20

    move-wide/from16 v20, v23

    :goto_b
    if-eqz v13, :cond_14

    if-eqz v14, :cond_14

    move/from16 v15, v22

    goto :goto_c

    :cond_14
    const/4 v15, 0x0

    :goto_c
    if-nez v13, :cond_15

    if-eqz v14, :cond_16

    :cond_15
    iget-wide v10, v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    move-wide/from16 v18, v10

    :cond_16
    if-nez v13, :cond_18

    if-eqz v14, :cond_17

    goto :goto_e

    :cond_17
    const/4 v7, 0x0

    :goto_d
    move/from16 v10, p2

    goto :goto_f

    :cond_18
    :goto_e
    move/from16 v7, v22

    goto :goto_d

    :goto_f
    if-eq v10, v7, :cond_1c

    invoke-virtual {v2}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    if-eqz v10, :cond_1b

    invoke-virtual {v4}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    iget-wide v10, v7, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    move-object v12, v0

    move-object/from16 v22, v1

    iget-wide v0, v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    sub-long/2addr v0, v10

    add-long v10, v0, v16

    cmp-long v16, v10, p0

    if-eqz v16, :cond_19

    long-to-double v0, v0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v0, v0, v16

    long-to-double v10, v10

    div-double/2addr v0, v10

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->scaleInternal(D)V

    new-instance v0, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-direct {v0, v5}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    iput-object v7, v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    iput-object v2, v7, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    iput-object v0, v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    goto :goto_10

    :cond_19
    sget-object v0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    iput-object v7, v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    iput-object v2, v7, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    iput-object v0, v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    :goto_10
    sget-object v0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    iget-object v7, v5, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    array-length v10, v1

    const/4 v11, 0x0

    invoke-static {v1, v11, v7, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    if-eqz v1, :cond_1a

    array-length v1, v1

    new-array v1, v1, [D

    iput-object v1, v5, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    iget-object v0, v0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    array-length v7, v0

    invoke-static {v0, v11, v1, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_11

    :cond_1a
    const/4 v0, 0x0

    iput-object v0, v5, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    :goto_11
    move-wide/from16 v16, p0

    goto :goto_12

    :cond_1b
    move-object v12, v0

    move-object/from16 v22, v1

    const/4 v11, 0x0

    :goto_12
    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_1c
    move-object v12, v0

    move-object/from16 v22, v1

    const/4 v11, 0x0

    :goto_13
    move-object v2, v6

    move-object v0, v12

    move-wide/from16 v6, v20

    move-object/from16 v1, v22

    goto/16 :goto_0

    :cond_1d
    :goto_14
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    return-object v0

    :cond_1e
    :goto_15
    return-object p1
.end method

.method public final addEvent(ZJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;I)V
    .locals 6

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    const/4 v5, 0x0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;-><init>(ZJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;)V

    invoke-virtual {p0, p1, v0, p5}, Lcom/android/server/am/BaseAppStateDurations;->addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v0, v0, p5

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-eqz v5, :cond_3

    iget-boolean v0, v5, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v2, p4}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    iget-object v3, v5, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {v2, v3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    new-instance v4, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-direct {v4, v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;-><init>(ZJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;)V

    invoke-virtual {p0, p1, v0, p5}, Lcom/android/server/am/BaseAppStateDurations;->addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final getBatteryUsageSince(IJJ)Landroid/util/Pair;
    .locals 4

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;->add(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    new-instance p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>()V

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    iget-wide v1, v0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    cmp-long v3, v1, p2

    if-ltz v3, :cond_3

    iget-boolean v3, v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p4, p5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->getBatteryUsage(JJ)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    iget-wide v1, v0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    cmp-long v1, p4, v1

    if-gtz v1, :cond_3

    :cond_5
    new-instance p1, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    iget-boolean p0, v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    if-eqz p0, :cond_6

    iget-object p0, v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    goto :goto_2

    :cond_6
    sget-object p0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    :goto_2
    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_3
    sget-object p0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-static {p0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
