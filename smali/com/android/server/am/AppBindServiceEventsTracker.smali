.class public final Lcom/android/server/am/AppBindServiceEventsTracker;
.super Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/ActivityManagerInternal$BindServiceEventListener;


# virtual methods
.method public final createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateEvents;
    .locals 6

    new-instance v0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    move-object v1, p0

    check-cast v1, Lcom/android/server/am/AppBindServiceEventsTracker$AppBindServiceEventsPolicy;

    iget-wide v3, v1, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mTimeSlotSize:J

    move-object v5, p0

    check-cast v5, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;-><init>(ILjava/lang/String;JLcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;)V

    return-object v0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "APP BIND SERVICE EVENT TRACKER:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final getTrackerInfoForStatsd(I)[B
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/android/server/am/BaseAppStateEventsTracker;->getUidEventsLocked(I)Lcom/android/server/am/BaseAppStateEvents;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->getTotalEventsSince(JJ)I

    move-result p0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v0, 0x10500000001L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public final getType()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public final onBindingService(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v0, Lcom/android/server/am/AppBindServiceEventsTracker$AppBindServiceEventsPolicy;

    iget-boolean v0, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mHandler:Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public final onSystemReady()V
    .locals 1

    invoke-super {p0}, Lcom/android/server/am/BaseAppStateTracker;->onSystemReady()V

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->addBindServiceEventListener(Landroid/app/ActivityManagerInternal$BindServiceEventListener;)V

    return-void
.end method
