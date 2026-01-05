.class public final Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    return-void
.end method


# virtual methods
.method public final updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V
    .locals 8

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v3, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance v2, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda8;

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/ProcessList;Ljava/lang/String;ZJ)V

    invoke-virtual {v0, v2}, Lcom/android/server/am/UidRecord;->forEachProcess(Ljava/util/function/Consumer;)V

    iget-object p2, v3, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 p3, 0x15

    invoke-virtual {p2, p3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    goto :goto_0

    :cond_1
    move-object v4, p2

    :goto_0
    iget-object p2, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-virtual {p2, p1, v4}, Lcom/android/server/am/ActiveServices;->isForegroundServiceAllowedInBackgroundRestricted(ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-virtual {p2, p1}, Lcom/android/server/am/ActiveServices;->isTempAllowedByAlarmClock(I)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/ActiveServices;->stopAllForegroundServicesLocked(ILjava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
