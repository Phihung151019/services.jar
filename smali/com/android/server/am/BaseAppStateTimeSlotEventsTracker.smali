.class public abstract Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;
.super Lcom/android/server/am/BaseAppStateEventsTracker;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHandler:Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;

.field public final mTmpPkgs:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mTmpPkgs:Landroid/util/ArrayMap;

    new-instance p1, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;

    invoke-direct {p1, p0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;-><init>(Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;)V

    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mHandler:Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$H;

    return-void
.end method


# virtual methods
.method public final onUserInteractionStarted(Ljava/lang/String;I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mExcessiveEventPkgs:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    const/4 p1, 0x1

    const/16 v0, 0x300

    const/4 v1, 0x3

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUid(IIIZ)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
