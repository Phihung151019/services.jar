.class public final Lcom/android/server/am/ProcessStateRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAdjSeq:I

.field public mAdjSource:Ljava/lang/Object;

.field public mAdjSourceProcState:I

.field public mAdjTarget:Ljava/lang/Object;

.field public mAdjType:Ljava/lang/String;

.field public mAdjTypeCode:I

.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mBackgroundRestricted:Z

.field public mCacheOomRankerRss:J

.field public mCacheOomRankerRssTimeMs:J

.field public mCacheOomRankerUseCount:I

.field public mCachedAdj:I

.field public mCachedAdjType:Ljava/lang/String;

.field public final mCachedCompatChanges:[I

.field public mCachedForegroundActivities:Z

.field public mCachedHasActivities:I

.field public mCachedHasRecentTasks:I

.field public mCachedHasVisibleActivities:I

.field public mCachedIsHeavyWeight:I

.field public mCachedIsHomeProcess:I

.field public mCachedIsPreviousProcess:I

.field public mCachedIsReceivingBroadcast:I

.field public mCachedProcState:I

.field public mCachedSchedGroup:I

.field public mCompletedAdjSeq:I

.field public mContainsCycle:Z

.field public mCurAdj:I

.field public mCurBoundByNonBgRestrictedApp:Z

.field public mCurCapability:I

.field public mCurProcState:I

.field public mCurRawAdj:I

.field public mCurRawProcState:I

.field public mCurSchedGroup:I

.field public mFgInteractionTime:J

.field public mFollowupUpdateUptimeMs:J

.field public mForcingToImportant:Lcom/android/server/am/ActivityManagerService$12;

.field public mHasForegroundActivities:Z

.field public mHasOverlayUi:Z

.field public mHasShownUi:Z

.field public mHasStartedServices:Z

.field public mHasTopUi:Z

.field public mInteractionEventTime:J

.field public mLastCanKillOnBgRestrictedAndIdleTime:J

.field public mLastInvisibleTime:J

.field public mLastStateTime:J

.field public mLastTopTime:J

.field public mMaxAdj:I

.field public mNotCachedSinceIdle:Z

.field public final mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

.field public mProcStateChanged:Z

.field public mReachable:Z

.field public mRepForegroundActivities:Z

.field public mRepProcState:I

.field public mReportedInteraction:Z

.field public mRunningRemoteAnimation:Z

.field public mSavedPriority:I

.field public mScheduleLikeTopApp:Z

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mServiceB:Z

.field public mServiceHighRam:Z

.field public mSetAdj:I

.field public mSetBoundByNonBgRestrictedApp:Z

.field public mSetCached:Z

.field public mSetCapability:I

.field public mSetNoKillOnBgRestrictedAndIdle:Z

.field public mSetProcState:I

.field public mSetRawAdj:I

.field public mSetSchedGroup:I

.field public mSlowAbnormal:Z

.field public mSystemNoUi:Z

.field public mVerifiedAdj:I

.field public mWhenUnimportant:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    const/16 v2, 0x14

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    filled-new-array {v2, v2, v2}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdjType:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    const/16 v0, 0x13

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mScheduleLikeTopApp:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mFollowupUpdateUptimeMs:J

    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    return-void
.end method


# virtual methods
.method public final computeOomAdjFromActivitiesIfNecessary(Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;IZZIIIII)V
    .locals 4

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iput-object v0, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    iput p2, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    iput-boolean p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    iput-boolean p4, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    iput p5, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iput p6, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    iput p7, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    iput p8, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iput p9, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->processStateCurTop:I

    iget-object p2, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object p3, p2, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    iput-object p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object p2, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget p2, p2, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const/high16 p3, 0x10000

    and-int/2addr p3, p2

    const/16 p4, 0x2bc

    const-wide/16 p5, 0x40

    const/4 p7, 0x2

    const/16 p8, 0x64

    const/4 p9, 0x1

    if-eqz p3, :cond_9

    iget p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    iget-object v0, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    const-string/jumbo v1, "vis-activity"

    if-le p3, p8, :cond_1

    iput p8, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    iput-object v1, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    iget p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v2, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne p3, v2, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Raise adj to vis-activity: "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    :cond_1
    iget p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iget v2, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->processStateCurTop:I

    if-le p3, v2, :cond_2

    iput v2, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iput-object v1, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    iget p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v1, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne p3, v1, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Raise procstate to vis-activity (top): "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    :cond_2
    iget p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    if-ge p3, p7, :cond_3

    iput p7, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    :cond_3
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED_LOW:Z

    if-eqz p3, :cond_5

    iget-object p3, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->inTransientLaunchTransition()Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-boolean p3, p3, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-nez p3, :cond_5

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "ComputeOomdj onVisibleActivity() : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p5, p6, p3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    if-ge p3, p4, :cond_4

    iput p4, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    :cond_4
    iput p7, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    const-string/jumbo p3, "transient-launch-visible-activity"

    iput-object p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    invoke-static {p5, p6}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :cond_5
    const/high16 p3, 0x800000

    and-int/2addr p3, p2

    const/4 p4, 0x3

    if-eqz p3, :cond_6

    iput p4, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    const-string/jumbo p3, "resumed-split-screen-activity"

    iput-object p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const/high16 p3, 0x1000000

    and-int/2addr p3, p2

    if-eqz p3, :cond_7

    iput p4, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    const-string/jumbo p3, "perceptible-freeform-activity"

    iput-object p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const/high16 p3, 0x2000000

    and-int/2addr p3, p2

    if-eqz p3, :cond_8

    const/4 p3, 0x5

    iput p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    const-string/jumbo p3, "vis-multi-window-activity"

    iput-object p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    :cond_8
    :goto_0
    iput-boolean p9, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    iput-boolean p9, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    goto/16 :goto_2

    :cond_9
    const/high16 p3, 0x20000

    and-int/2addr p3, p2

    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-eqz p3, :cond_f

    iget p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    iget-object v2, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    const-string/jumbo v3, "pause-activity"

    if-le p3, v0, :cond_a

    iput v0, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    iput-object v3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    iget p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v0, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne p3, v0, :cond_a

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Raise adj to pause-activity: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    :cond_a
    iget p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iget v0, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->processStateCurTop:I

    if-le p3, v0, :cond_b

    iput v0, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iput-object v3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    iget p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v0, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne p3, v0, :cond_b

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Raise procstate to pause-activity (top): "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    :cond_b
    iget p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    if-ge p3, p7, :cond_c

    iput p7, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    :cond_c
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED_LOW:Z

    if-eqz p3, :cond_e

    iget-object p3, v2, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->inTransientLaunchTransition()Z

    move-result p3

    if-eqz p3, :cond_e

    iget-object p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-boolean p3, p3, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-nez p3, :cond_e

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "ComputeOomdj onPausedActivity() : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p5, p6, p3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    if-ge p3, p4, :cond_d

    iput p4, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    :cond_d
    iput p7, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    const-string/jumbo p3, "transient-launch-paused-activity"

    iput-object p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    invoke-static {p5, p6}, Landroid/os/Trace;->traceEnd(J)V

    :cond_e
    iput-boolean p9, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    iput-boolean v1, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    goto/16 :goto_2

    :cond_f
    const/high16 p3, 0x40000

    and-int/2addr p3, p2

    if-eqz p3, :cond_13

    const/high16 p3, 0x80000

    and-int/2addr p3, p2

    if-eqz p3, :cond_10

    move p3, p9

    goto :goto_1

    :cond_10
    move p3, v1

    :goto_1
    iget p4, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    iget-object p5, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    const-string/jumbo p6, "stop-activity"

    if-le p4, v0, :cond_11

    iput v0, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    iput-object p6, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    iget p4, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget p7, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne p4, p7, :cond_11

    new-instance p4, Ljava/lang/StringBuilder;

    const-string/jumbo p7, "Raise adj to stop-activity: "

    invoke-direct {p4, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p7, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    :cond_11
    if-nez p3, :cond_12

    iget p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    const/16 p4, 0xf

    if-le p3, p4, :cond_12

    iput p4, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iput-object p6, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    iget p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget p4, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne p3, p4, :cond_12

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "Raise procstate to stop-activity: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    :cond_12
    iput-boolean p9, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    iput-boolean v1, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    goto :goto_2

    :cond_13
    iget-object p3, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p3, p3, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-wide p3, p3, Lcom/android/server/wm/WindowProcessController;->mPerceptibleTaskStoppedTimeMillis:J

    iget p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    const/16 p4, 0x10

    if-le p3, p4, :cond_14

    iput p4, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    const-string/jumbo p3, "cch-act"

    iput-object p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    iget p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget p4, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne p3, p4, :cond_14

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "Raise procstate to cached activity: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p4, p3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    :cond_14
    iput-boolean v1, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    :goto_2
    iget p3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    iput p3, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    iget-boolean p4, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    iput-boolean p4, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    iget-boolean p4, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    iput p4, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    iget p4, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iput p4, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    iget p4, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    iput p4, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    iget-object p1, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdjType:Ljava/lang/String;

    if-ne p3, p8, :cond_15

    const p1, 0xffff

    and-int/2addr p1, p2

    const/16 p2, 0x63

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget p2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    :cond_15
    :goto_3
    return-void
.end method

.method public final forceProcessStateUpTo(I)V
    .locals 2

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->setReportedProcState(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    iget-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v1, p0}, Lcom/android/server/am/OomAdjuster;->onProcessStateChanged(ILcom/android/server/am/ProcessRecord;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_0
    return-void
.end method

.method public final getCachedCompatChange(I)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    aget v1, v0, p1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v2, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    move-result-object v1

    sget-object v4, Lcom/android/server/am/PlatformCompatCache;->CACHED_COMPAT_CHANGE_IDS_MAPPING:[J

    aget-wide v4, v4, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-boolean v6, v1, Lcom/android/server/am/PlatformCompatCache;->mCacheEnabled:Z

    if-eqz v6, :cond_0

    iget-object v1, v1, Lcom/android/server/am/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PlatformCompatCache$CacheItem;

    invoke-virtual {v1, v2}, Lcom/android/server/am/PlatformCompatCache$CacheItem;->isChangeEnabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/server/am/PlatformCompatCache;->mIPlatformCompatProxy:Lcom/android/internal/compat/IPlatformCompat;

    invoke-interface {v1, v4, v5, v2}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Error reading platform compat change "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ActivityManager"

    invoke-static {v4, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    :goto_1
    aput v1, v0, p1

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    aget p0, p0, p1

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    move v3, p1

    :cond_2
    return v3
.end method

.method public final getCachedHasActivities()Z
    .locals 3

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    const/16 v1, 0x10

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    if-ne p0, v2, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final getCachedIsHomeProcess()Z
    .locals 4

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v0, v1, :cond_0

    iput v3, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    if-ne p0, v3, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public final getCurProcState()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    return p0
.end method

.method public final getSetAdjWithServices()I
    .locals 2

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    const/16 v1, 0x384

    if-lt v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x320

    return p0

    :cond_0
    return v0
.end method

.method public final getSetProcState()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    return p0
.end method

.method public final getVerifiedAdj()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    return p0
.end method

.method public final isCached()Z
    .locals 1

    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    const/16 v0, 0x384

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final resetCachedInfo()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    const/16 v1, 0x13

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdjType:Ljava/lang/String;

    return-void
.end method

.method public final setAdjType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    return-void
.end method

.method public final setCurAdj(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mCurAdj:I

    return-void
.end method

.method public final setCurProcState(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    return-void
.end method

.method public final setCurRawAdj(IZ)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    if-le p0, p1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    const/16 p2, 0xc8

    if-gt p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mPerceptible:Z

    return v1
.end method

.method public final setCurrentSchedulingGroup(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mCurSchedGroup:I

    return-void
.end method

.method public final setReportedProcState(I)V
    .locals 4

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    if-ge p1, v2, :cond_1

    if-eqz v1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasCachedConfiguration:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChangePreScheduled(Landroid/content/res/Configuration;)V

    new-instance v0, Landroid/app/servertransaction/ConfigurationChangeItem;

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    iget v3, p0, Lcom/android/server/wm/WindowProcessController;->mLastTopActivityDeviceId:I

    invoke-direct {v0, v2, v3}, Landroid/app/servertransaction/ConfigurationChangeItem;-><init>(Landroid/content/res/Configuration;I)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/app/servertransaction/ClientTransaction;

    invoke-direct {v2, v1}, Landroid/app/servertransaction/ClientTransaction;-><init>(Landroid/app/IApplicationThread;)V

    invoke-virtual {v2, v0}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/DeadObjectException;

    invoke-direct {p1}, Landroid/os/DeadObjectException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to schedule ConfigurationChangeItem="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " owner="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mOwner:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final setVerifiedAdj(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    return-void
.end method
