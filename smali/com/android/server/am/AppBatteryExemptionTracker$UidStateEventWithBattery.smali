.class public final Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;
.super Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

.field public mIsStart:Z

.field public mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;


# direct methods
.method public constructor <init>(ZJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    iput-boolean p1, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    iput-object p4, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    iput-object p5, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    if-eqz p5, :cond_0

    iput-object p0, p5, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    :cond_0
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-wide v1, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    iput-wide v1, v0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    iget-boolean v1, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    iput-boolean v1, v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    iget-object p0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    iput-object p0, v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    iget-boolean v1, p1, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    iget-boolean v2, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    if-ne v1, v2, :cond_2

    iget-wide v1, p1, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    iget-wide v3, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    iget-object p1, p1, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public final getBatteryUsage(JJ)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    cmp-long v0, p3, p1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    iget-wide v0, v0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    iget-object v2, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    iget-wide v2, v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    sub-long/2addr v0, v2

    sub-long/2addr p3, p1

    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-eqz p1, :cond_2

    cmp-long p1, v0, p3

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    long-to-double p2, p3

    mul-double/2addr p2, v2

    long-to-double v0, v0

    div-double/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->scaleInternal(D)V

    new-instance p0, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-direct {p0, p1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UidStateEventWithBattery("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final trimTo(J)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    iget-wide v2, v0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->getBatteryUsage(JJ)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    iget-object v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v2, v0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    invoke-virtual {v2, v1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    iget-object v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    iget-object v0, v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {v2, v0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    new-instance v0, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-direct {v0, v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    iput-object v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    :cond_1
    iput-wide p1, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    :cond_2
    :goto_0
    return-void
.end method
