.class public final Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;
.super Lcom/android/server/am/BaseAppStateTimeSlotEvents;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final formatEventSummary(IJ)Ljava/lang/String;
    .locals 4

    iget-object p1, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->getTotalEventsSince(JJ)I

    move-result p1

    const-string/jumbo v1, "total="

    const-string v2, ", latest="

    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide v2, v1, v0

    invoke-virtual {p0, v2, v3, p2, p3}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->getTotalEventsSince(JJ)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "(slot="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v0, v1, v0

    invoke-static {v0, v1, p2, p3}, Landroid/util/TimeUtils;->formatTime(JJ)Ljava/lang/String;

    move-result-object p0

    const-string p2, ")"

    invoke-static {p1, p0, p2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "(none)"

    return-object p0
.end method

.method public final formatEventTypeLabel(I)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method
