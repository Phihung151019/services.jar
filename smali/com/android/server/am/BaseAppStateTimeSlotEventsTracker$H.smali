.class public final Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mTracker:Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;)V
    .locals 1

    iget-object v0, p1, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;->mTracker:Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;->mTracker:Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v1, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;

    iget-object v2, v1, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v2, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    iget-object v3, v2, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, v2, Lcom/android/server/am/BaseAppStateEventsTracker;->mTopUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    const/16 v1, 0xc

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v2, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    iget-object v2, v2, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/am/AppRestrictionController;->hasForegroundServices(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0xe

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    if-eq v1, v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v4, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    if-nez v3, :cond_5

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BaseAppStateEventsTracker;->createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateEvents;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$SimpleAppStateTimeslotEvents;

    iget-object v5, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v5, v0, p1, v3}, Lcom/android/server/am/UidProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_5
    :goto_1
    invoke-virtual {v3, v1, v2}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->addEvent(J)V

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6, v1, v2}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->getTotalEventsSince(JJ)I

    move-result v3

    iget-object v5, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v5, v5, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v5, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;

    iget v5, v5, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mNumOfEventsThreshold:I

    if-lt v3, v5, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_7

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->onExcessiveEvents(ILjava/lang/String;J)V

    :cond_7
    :goto_3
    return-void

    :goto_4
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
