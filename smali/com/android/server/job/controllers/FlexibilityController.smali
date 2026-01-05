.class public final Lcom/android/server/job/controllers/FlexibilityController;
.super Lcom/android/server/job/controllers/StateController;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z

.field static final FLEXIBLE_CONSTRAINTS:I = 0x10000007


# instance fields
.field public mAppliedConstraints:I

.field public mDeadlineProximityLimitMs:J

.field public mFallbackFlexibilityAdditionalScoreTimeFactors:Landroid/util/SparseLongArray;

.field public mFallbackFlexibilityDeadlineMs:J

.field public mFallbackFlexibilityDeadlineScores:Landroid/util/SparseIntArray;

.field public mFallbackFlexibilityDeadlines:Landroid/util/SparseLongArray;

.field final mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

.field final mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

.field public mFlexibilityEnabled:Z

.field final mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

.field public final mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

.field public final mJobScoreTrackers:Landroid/util/SparseArrayMap;

.field public final mJobsToCheck:Landroid/util/ArraySet;

.field public final mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

.field public mLocalOverride:Z

.field public mMaxRescheduledDeadline:J

.field public mMinTimeBetweenFlexibilityAlarmsMs:J

.field public final mPackagesToCheck:Landroid/util/ArraySet;

.field public mPercentsToDropConstraints:Landroid/util/SparseArray;

.field final mPrefetchChangedListener:Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

.field final mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

.field final mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mRescheduledJobDeadline:J

.field mSatisfiedFlexibleConstraints:I

.field public final mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

.field public final mSupportedFlexConstraints:I

.field public mUnseenConstraintGracePeriodMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "JobScheduler.Flex"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/job/controllers/FlexibilityController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/PrefetchController;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineMs:J

    sget-object p1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlines:Landroid/util/SparseLongArray;

    sget-object p1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineScores:Landroid/util/SparseIntArray;

    sget-object p1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityAdditionalScoreTimeFactors:Landroid/util/SparseLongArray;

    const-wide/32 v2, 0x36ee80

    iput-wide v2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mRescheduledJobDeadline:J

    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mMaxRescheduledDeadline:J

    const-wide/32 v0, 0xf731400

    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mUnseenConstraintGracePeriodMs:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mMinTimeBetweenFlexibilityAlarmsMs:J

    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mDeadlineProximityLimitMs:J

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

    new-instance v0, Lcom/android/server/job/controllers/FlexibilityController$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/FlexibilityController$1;-><init>(Lcom/android/server/job/controllers/FlexibilityController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchChangedListener:Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPackagesToCheck:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;-><init>(Lcom/android/server/job/controllers/FlexibilityController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.type.embedded"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x10000007

    iput v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSupportedFlexConstraints:I

    goto :goto_1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSupportedFlexConstraints:I

    :goto_1
    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    iget v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSupportedFlexConstraints:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    :cond_2
    iput-boolean p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    new-instance p1, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;-><init>(Lcom/android/server/job/controllers/FlexibilityController;I)V

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    new-instance p1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;-><init>(Lcom/android/server/job/controllers/FlexibilityController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    new-instance p1, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;-><init>(Lcom/android/server/job/controllers/FlexibilityController;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    sget-object p1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPercentsToDropConstraints:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    new-instance p1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;-><init>(Lcom/android/server/job/controllers/FlexibilityController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    iget-boolean p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    if-eqz p0, :cond_3

    invoke-static {p1}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->-$$Nest$mstartTracking(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    sget-object v0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "FlexibilityController"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->APPLIED_CONSTRAINTS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "fc_applied_constraints"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    const-string v0, "("

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->APPLIED_CONSTRAINTS:I

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(ILjava/io/PrintWriter;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "nothing"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    const-string v0, ")"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEADLINE_PROXIMITY_LIMIT_MS:J

    const-string/jumbo v2, "fc_flexibility_deadline_proximity_limit_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_MS:J

    const-string/jumbo v2, "fc_fallback_flexibility_deadline_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    const-string/jumbo v1, "fc_fallback_flexibility_deadlines"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    const-string/jumbo v1, "fc_fallback_flexibility_deadline_scores"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    const-string/jumbo v1, "fc_fallback_flexibility_deadline_additional_score_time_factors"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MIN_TIME_BETWEEN_FLEXIBILITY_ALARMS_MS:J

    const-string/jumbo v2, "fc_min_time_between_flexibility_alarms_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    const-string/jumbo v1, "fc_percents_to_drop_flexible_constraints"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->RESCHEDULED_JOB_DEADLINE_MS:J

    const-string/jumbo v2, "fc_rescheduled_job_deadline_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MAX_RESCHEDULED_DEADLINE_MS:J

    const-string/jumbo v2, "fc_max_rescheduled_deadline_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->UNSEEN_CONSTRAINT_GRACE_PERIOD_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string/jumbo v0, "fc_unseen_constraint_grace_period_ms"

    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 12

    iget-boolean v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLocalOverride:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Local override active"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const-string v0, "Applied Flexible Constraints:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(ILjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "Satisfied Flexible Constraints:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(ILjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-string/jumbo v0, "Time since constraint combos last seen:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    iget v5, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    if-ne v2, v5, :cond_1

    const-string v5, "0ms"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v5

    invoke-static {v5, v6, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :goto_1
    const-string v5, ":"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    invoke-static {v2, p1}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(ILjava/io/PrintWriter;)V

    goto :goto_2

    :cond_2
    const-string v2, " none"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "Special apps:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    monitor-enter v2

    move v5, v0

    :goto_3
    :try_start_0
    iget-object v6, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    invoke-virtual {v6}, Landroid/util/SparseSetArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    const-string/jumbo v6, "User "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v6, ": "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseSetArray;->valuesAt(I)Landroid/util/ArraySet;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_8

    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v5, "Carrier privileged packages:"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v5, v0

    :goto_4
    iget-object v6, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    invoke-virtual {v6}, Landroid/util/SparseSetArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    iget-object v6, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v6, ": "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseSetArray;->valuesAt(I)Landroid/util/ArraySet;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v5, "Power allowlisted packages: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mPowerAllowlistedApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v7, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    move v8, v0

    :goto_5
    iget-object v1, v7, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_8

    iget-object v1, v7, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/util/ArraySet;

    move v10, v0

    :goto_6
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v10, v1, :cond_7

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p2, v2}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_7

    :cond_6
    invoke-virtual {v2, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v1, " from "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, v2, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v1, "-> Num Required Constraints: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v1, ", lifecycle=["

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual {v1, v2}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleBeginningElapsedLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string v11, ", ("

    invoke-virtual {p1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/job/controllers/FlexibilityController;->getCurPercentOfLifecycleLocked(Lcom/android/server/job/controllers/JobStatus;J)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v1, "%), "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleEndElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string/jumbo v1, "]"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p2, "Job scores:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    new-instance v0, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, v3, v4}, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda0;-><init>(Landroid/util/IndentingPrintWriter;J)V

    invoke-virtual {p2, v0}, Landroid/util/SparseArrayMap;->forEach(Landroid/util/SparseArrayMap$TriConsumer;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void

    :goto_8
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getCurPercentOfLifecycleLocked(Lcom/android/server/job/controllers/JobStatus;J)I
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleBeginningElapsedLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleEndElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J

    move-result-wide p0

    const-wide p2, 0x7fffffffffffffffL

    cmp-long p2, p0, p2

    if-eqz p2, :cond_3

    cmp-long p2, v4, v2

    if-ltz p2, :cond_0

    goto :goto_1

    :cond_0
    cmp-long p2, v2, p0

    if-gtz p2, :cond_2

    cmp-long p2, p0, v4

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    sub-long p2, v2, v4

    const-wide/16 v0, 0x64

    mul-long/2addr p2, v0

    sub-long/2addr p0, v4

    div-long/2addr p2, p0

    long-to-int p0, p2

    return p0

    :cond_2
    :goto_0
    const/16 p0, 0x64

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public getFcConfig()Lcom/android/server/job/controllers/FlexibilityController$FcConfig;
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    return-object p0
.end method

.method public getLifeCycleBeginningElapsedLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 8

    iget-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    :cond_0
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v4

    iget-wide v6, p1, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    sub-long/2addr v6, v4

    add-long/2addr v6, v0

    const-wide/16 v0, 0x2

    div-long v0, v6, v0

    :cond_1
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    iget v7, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v4, v7, p1, v5, v6}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v7, p1, v2}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide v6, 0x7fffffffffffffffL

    cmp-long p1, v4, v6

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/PrefetchController;->getLaunchTimeThresholdMs()J

    move-result-wide p0

    sub-long/2addr v4, p0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_3
    return-wide v0
.end method

.method public getLifeCycleEndElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J
    .locals 10

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v0

    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    const-wide v2, 0x7fffffffffffffffL

    iget-wide v4, p1, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {p3}, Ljava/time/Clock;->millis()J

    move-result-wide p3

    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    invoke-virtual {p2, p1, v1, p3, p4}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J

    move-result-wide p1

    cmp-long p3, v4, v2

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    if-eqz p3, :cond_0

    iget-wide p3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    sub-long/2addr p1, p3

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    cmp-long p3, p1, v2

    if-eqz p3, :cond_1

    iget-wide p3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    sub-long/2addr p1, p3

    return-wide p1

    :cond_1
    return-wide v2

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result v0

    const/4 v6, 0x1

    if-le v0, v6, :cond_3

    iget-wide p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mRescheduledJobDeadline:J

    long-to-float p2, p2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-static {p2, p1}, Ljava/lang/Math;->scalb(FI)F

    move-result p1

    float-to-long p1, p1

    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mMaxRescheduledDeadline:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    add-long/2addr p0, p4

    return-wide p0

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/job/controllers/FlexibilityController;->getScoreLocked(ILjava/lang/String;J)I

    move-result p1

    iget-wide p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineMs:J

    const-wide/16 v6, 0x3

    mul-long/2addr v6, p2

    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlines:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0, p2, p3}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide p2

    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityAdditionalScoreTimeFactors:Landroid/util/SparseLongArray;

    const-wide/32 v8, 0xea60

    invoke-virtual {p0, v0, v8, v9}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v0

    int-to-long p0, p1

    mul-long/2addr v0, p0

    add-long/2addr v0, p2

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    add-long/2addr p0, p4

    cmp-long p2, v4, v2

    if-nez p2, :cond_4

    return-wide p0

    :cond_4
    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getNextConstraintDropTimeElapsedLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleBeginningElapsedLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v2

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide v4, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleEndElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J

    move-result-wide p0

    move-wide v2, v4

    move-wide v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/FlexibilityController;->getNextConstraintDropTimeElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getNextConstraintDropTimeElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/FlexibilityController;->getPercentsToDropConstraints(I)[I

    move-result-object p0

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p4, v0

    if-eqz v2, :cond_1

    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    array-length v2, p0

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    aget p0, p0, p1

    sub-long/2addr p4, p2

    int-to-long p0, p0

    mul-long/2addr p4, p0

    const-wide/16 p0, 0x64

    div-long/2addr p4, p0

    add-long/2addr p4, p2

    return-wide p4

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public final getPercentsToDropConstraints(I)[I
    .locals 2

    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPercentsToDropConstraints:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "No %-to-drop for priority "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler.Flex"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x46

    const/16 p1, 0x50

    const/16 v0, 0x32

    const/16 v1, 0x3c

    filled-new-array {v0, v1, p0, p1}, [I

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getRelevantAppliedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)I
    .locals 0

    iget-boolean p1, p1, Lcom/android/server/job/controllers/JobStatus;->mCanApplyTransportAffinities:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x10000000

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/lit8 p1, p1, 0x7

    iget p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    and-int/2addr p0, p1

    return p0
.end method

.method public getScoreLocked(ILjava/lang/String;J)I
    .locals 10

    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScoreExpirationTimeElapsed:J

    cmp-long p2, p3, v0

    if-gez p2, :cond_1

    iget p0, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScore:I

    return p0

    :cond_1
    const-wide/32 v0, 0x5265c00

    sub-long/2addr p3, v0

    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBuckets:[Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;

    array-length v2, p2

    const-wide v3, 0x7fffffffffffffffL

    move-wide v4, v3

    move v3, p1

    :goto_0
    if-ge p1, v2, :cond_3

    aget-object v6, p2, p1

    if-eqz v6, :cond_2

    iget-wide v7, v6, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->startTimeElapsed:J

    cmp-long v9, v7, p3

    if-ltz v9, :cond_2

    iget v6, v6, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->score:I

    add-int/2addr v3, v6

    cmp-long v6, v4, v7

    if-lez v6, :cond_2

    move-wide v4, v7

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    iput v3, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScore:I

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScoreExpirationTimeElapsed:J

    return v3
.end method

.method public hasEnoughSatisfiedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 11

    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    iget v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    and-int/2addr v0, v1

    iget-boolean v1, p1, Lcom/android/server/job/controllers/JobStatus;->mTransportAffinitiesSatisfied:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/high16 v1, 0x10000000

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/lit8 v1, v1, 0x7

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result v1

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    goto :goto_5

    :cond_1
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/job/controllers/FlexibilityController;->mUnseenConstraintGracePeriodMs:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->getRelevantAppliedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result p1

    not-int p1, p1

    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_1
    if-ltz v1, :cond_6

    iget-object v6, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v6

    and-int v7, v6, p1

    if-eqz v7, :cond_3

    goto :goto_4

    :cond_3
    iget-object v7, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v7

    sub-long v7, v4, v7

    iget-wide v9, p0, Lcom/android/server/job/controllers/FlexibilityController;->mUnseenConstraintGracePeriodMs:J

    cmp-long v7, v7, v9

    if-gtz v7, :cond_4

    move v7, v3

    goto :goto_2

    :cond_4
    move v7, v2

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->bitCount(I)I

    move-result v6

    if-le v6, v0, :cond_5

    if-eqz v7, :cond_5

    :goto_3
    return v2

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    :goto_5
    return v3
.end method

.method public isConstraintSatisfied(I)Z
    .locals 0

    iget p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v0

    const/16 v1, 0x1e

    const/16 v2, 0x12c

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    if-ge v0, v2, :cond_5

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v3

    goto :goto_2

    :cond_2
    monitor-exit v3

    goto :goto_1

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->hasEnoughSatisfiedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public final maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSupportedFlexConstraints:I

    const/high16 v2, 0x200000

    if-nez p2, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p1, v2, v0, v1, p0}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->getRelevantAppliedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result p2

    iput p2, p1, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    invoke-virtual {p1, v2, v0, v1, p2}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->add(Lcom/android/server/job/controllers/JobStatus;)V

    const/16 p2, 0x80

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->scheduleDropNumConstraintsAlarm(Lcom/android/server/job/controllers/JobStatus;J)V

    :cond_1
    return-void
.end method

.method public final maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    const/16 p2, 0x80

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    invoke-virtual {p2, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    iget-object p2, p2, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAppRemovedLocked(ILjava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    iget-object v2, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    iget v2, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    if-ne v2, p1, :cond_0

    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget v2, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    if-ne v2, p1, :cond_2

    iget-object v1, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onConstantsUpdatedLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    iget-boolean v0, v0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onSystemServicesReady()V
    .locals 4

    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mDeviceIdleInternal:Lcom/android/server/DeviceIdleInternal;

    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-boolean v2, v1, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    new-instance v2, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    new-instance v2, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onUidBiasChangedLocked(III)V
    .locals 9

    const/16 v0, 0x1e

    if-ge p2, v0, :cond_0

    if-ge p3, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object p3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p3, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, p3, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v2, v2, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v2, p1, v3}, Lcom/android/server/job/JobStore$JobSet;->getJobsBySourceUid(ILjava/util/Set;)V

    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    :goto_0
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/server/job/controllers/FlexibilityController;->isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v7

    const/high16 v8, 0x200000

    invoke-virtual {v6, v8, v0, v1, v7}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    iget-object v6, v6, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v6

    or-int/2addr v5, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_4

    const/16 v3, 0x28

    if-ne p2, v3, :cond_4

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p3, p1}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p3

    if-ge v2, p3, :cond_4

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, p2, p3, v4}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, p2, p3, v4}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public final onUserRemovedLocked(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    iget v2, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eq v2, p1, :cond_2

    iget v1, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 4

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineScores:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    div-int/lit8 v3, v0, 0x64

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;

    invoke-direct {v1}, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;-><init>()V

    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, v2, p1, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    invoke-virtual {v1, v0, p0, p1}, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->addScore(IJ)V

    return-void
.end method

.method public final prepareForUpdatedConstantsLocked()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    return-void
.end method

.method public final processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    move-object/from16 v5, p0

    iget-object v5, v5, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x64

    const/16 v7, 0xc8

    const/16 v8, 0x12c

    const/16 v9, 0x190

    const/16 v10, 0x1f4

    const/16 v11, 0x2c

    const-wide/32 v12, 0x5265c00

    const/4 v14, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :goto_0
    move v15, v3

    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v15, "fc_fallback_flexibility_deadline_ms"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    goto :goto_0

    :cond_0
    const/16 v15, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v15, "fc_applied_constraints"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    goto :goto_0

    :cond_1
    const/16 v15, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v15, "fc_fallback_flexibility_deadline_additional_score_time_factors"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    goto :goto_0

    :cond_2
    const/16 v15, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v15, "fc_unseen_constraint_grace_period_ms"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    goto :goto_0

    :cond_3
    const/4 v15, 0x7

    goto :goto_1

    :sswitch_4
    const-string/jumbo v15, "fc_percents_to_drop_flexible_constraints"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    goto :goto_0

    :cond_4
    const/4 v15, 0x6

    goto :goto_1

    :sswitch_5
    const-string/jumbo v15, "fc_flexibility_deadline_proximity_limit_ms"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    goto :goto_0

    :cond_5
    const/4 v15, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v15, "fc_fallback_flexibility_deadlines"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    goto :goto_0

    :cond_6
    const/4 v15, 0x4

    goto :goto_1

    :sswitch_7
    const-string/jumbo v15, "fc_rescheduled_job_deadline_ms"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    goto :goto_0

    :cond_7
    const/4 v15, 0x3

    goto :goto_1

    :sswitch_8
    const-string/jumbo v15, "fc_fallback_flexibility_deadline_scores"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    goto :goto_0

    :cond_8
    const/4 v15, 0x2

    goto :goto_1

    :sswitch_9
    const-string/jumbo v15, "fc_max_rescheduled_deadline_ms"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    goto :goto_0

    :cond_9
    move v15, v4

    goto :goto_1

    :sswitch_a
    const-string/jumbo v15, "fc_min_time_between_flexibility_alarms_ms"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    goto/16 :goto_0

    :cond_a
    move v15, v2

    :goto_1
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {v0, v1, v12, v13}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_MS:J

    iget-object v2, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-wide v3, v2, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineMs:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_14

    iput-wide v0, v2, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineMs:J

    return-void

    :pswitch_1
    invoke-virtual {v0, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget v6, v1, Lcom/android/server/job/controllers/FlexibilityController;->mSupportedFlexConstraints:I

    and-int/2addr v0, v6

    iput v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->APPLIED_CONSTRAINTS:I

    iget v6, v1, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    if-eq v6, v0, :cond_14

    iput v0, v1, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    iput-boolean v4, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    if-eqz v0, :cond_b

    iput-boolean v4, v1, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    iget-object v0, v1, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchChangedListener:Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

    iget-object v6, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v0, v0, Lcom/android/server/job/controllers/PrefetchController;->mPrefetchChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    invoke-static {v0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->-$$Nest$mstartTracking(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_b
    iput-boolean v2, v1, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    iget-object v0, v1, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchChangedListener:Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

    iget-object v2, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object v0, v0, Lcom/android/server/job/controllers/PrefetchController;->mPrefetchChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mBroadcastReceiver:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSatLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v2, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedApps:Landroid/util/SparseSetArray;

    invoke-virtual {v2}, Landroid/util/SparseSetArray;->clear()V

    iget-object v2, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mPowerAllowlistedApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    iget-object v2, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mSpecialApps:Landroid/util/SparseSetArray;

    invoke-virtual {v2}, Landroid/util/SparseSetArray;->clear()V

    iget-object v2, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v4

    :goto_2
    if-ltz v2, :cond_c

    iget-object v4, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->unregisterCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    add-int/2addr v2, v3

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_c
    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->mCarrierPrivilegedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :pswitch_2
    invoke-virtual {v0, v1, v14}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    sget-object v2, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePriorityToLongKeyValueString(Ljava/lang/String;Landroid/util/SparseLongArray;Landroid/util/SparseLongArray;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    iput-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityAdditionalScoreTimeFactors:Landroid/util/SparseLongArray;

    iput-boolean v4, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_3
    const-wide/32 v2, 0xf731400

    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->UNSEEN_CONSTRAINT_GRACE_PERIOD_MS:J

    iget-object v2, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-wide v6, v2, Lcom/android/server/job/controllers/FlexibilityController;->mUnseenConstraintGracePeriodMs:J

    cmp-long v3, v6, v0

    if-eqz v3, :cond_14

    iput-wide v0, v2, Lcom/android/server/job/controllers/FlexibilityController;->mUnseenConstraintGracePeriodMs:J

    iput-boolean v4, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_4
    invoke-virtual {v0, v1, v14}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    new-instance v3, Landroid/util/KeyValueListParser;

    invoke-direct {v3, v11}, Landroid/util/KeyValueListParser;-><init>(C)V

    :try_start_5
    invoke-virtual {v3, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v11, "JobScheduler.Flex"

    const-string v12, "Bad percent to drop key value string given"

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v3, v14}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v14}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePercentToDropString(Ljava/lang/String;)[I

    move-result-object v4

    move/from16 p0, v6

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v14}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePercentToDropString(Ljava/lang/String;)[I

    move-result-object v6

    move/from16 v16, v7

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v14}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePercentToDropString(Ljava/lang/String;)[I

    move-result-object v7

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8, v14}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePercentToDropString(Ljava/lang/String;)[I

    move-result-object v8

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9, v14}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePercentToDropString(Ljava/lang/String;)[I

    move-result-object v3

    if-nez v4, :cond_d

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    :cond_d
    invoke-virtual {v1, v10, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v4, 0x190

    if-nez v6, :cond_e

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    :cond_e
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v4, 0x12c

    if-nez v7, :cond_f

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, [I

    :cond_f
    invoke-virtual {v1, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move/from16 v4, v16

    if-nez v8, :cond_10

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, [I

    :cond_10
    invoke-virtual {v1, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move/from16 v4, p0

    if-nez v3, :cond_11

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [I

    :cond_11
    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v4, 0x190

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v11, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v4, 0x12c

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v12, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v4, 0xc8

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v13, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v4, 0x64

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_12
    iget-object v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    iput-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController;->mPercentsToDropConstraints:Landroid/util/SparseArray;

    const/4 v1, 0x1

    iput-boolean v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    goto/16 :goto_6

    :pswitch_5
    const-wide/32 v2, 0xdbba0

    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEADLINE_PROXIMITY_LIMIT_MS:J

    iget-object v2, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-wide v3, v2, Lcom/android/server/job/controllers/FlexibilityController;->mDeadlineProximityLimitMs:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_14

    iput-wide v0, v2, Lcom/android/server/job/controllers/FlexibilityController;->mDeadlineProximityLimitMs:J

    const/4 v1, 0x1

    iput-boolean v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_6
    invoke-virtual {v0, v1, v14}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    sget-object v2, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->parsePriorityToLongKeyValueString(Ljava/lang/String;Landroid/util/SparseLongArray;Landroid/util/SparseLongArray;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    iput-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlines:Landroid/util/SparseLongArray;

    const/4 v1, 0x1

    iput-boolean v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_7
    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->RESCHEDULED_JOB_DEADLINE_MS:J

    iget-object v2, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-wide v3, v2, Lcom/android/server/job/controllers/FlexibilityController;->mRescheduledJobDeadline:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_14

    iput-wide v0, v2, Lcom/android/server/job/controllers/FlexibilityController;->mRescheduledJobDeadline:J

    const/4 v1, 0x1

    iput-boolean v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_8
    invoke-virtual {v0, v1, v14}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    new-instance v3, Landroid/util/KeyValueListParser;

    invoke-direct {v3, v11}, Landroid/util/KeyValueListParser;-><init>(C)V

    :try_start_6
    invoke-virtual {v3, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    const-string v4, "JobScheduler.Flex"

    const-string v6, "Bad string given"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v3, v14}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v1, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/16 v4, 0x190

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    const/16 v7, 0x12c

    invoke-virtual {v1, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    const/16 v9, 0xc8

    invoke-virtual {v1, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    const/16 v12, 0x64

    invoke-virtual {v1, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v14

    invoke-virtual {v3, v12, v14}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    invoke-virtual {v3, v14, v15}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    invoke-virtual {v3, v14, v15}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-virtual {v3, v15, v7}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/16 v15, 0x64

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v15}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v3, v9, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x190

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x12c

    invoke-virtual {v1, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v9, 0xc8

    invoke-virtual {v1, v9, v7}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v15, v2}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v0, v12, :cond_13

    if-ne v6, v4, :cond_13

    if-ne v8, v14, :cond_13

    if-ne v11, v7, :cond_13

    if-eq v13, v2, :cond_14

    :cond_13
    iget-object v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    iput-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineScores:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    iput-boolean v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    goto :goto_6

    :pswitch_9
    invoke-virtual {v0, v1, v12, v13}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MAX_RESCHEDULED_DEADLINE_MS:J

    iget-object v2, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-wide v3, v2, Lcom/android/server/job/controllers/FlexibilityController;->mMaxRescheduledDeadline:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_14

    iput-wide v0, v2, Lcom/android/server/job/controllers/FlexibilityController;->mMaxRescheduledDeadline:J

    const/4 v1, 0x1

    iput-boolean v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_a
    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MIN_TIME_BETWEEN_FLEXIBILITY_ALARMS_MS:J

    iget-object v2, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-wide v3, v2, Lcom/android/server/job/controllers/FlexibilityController;->mMinTimeBetweenFlexibilityAlarmsMs:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_14

    iput-wide v0, v2, Lcom/android/server/job/controllers/FlexibilityController;->mMinTimeBetweenFlexibilityAlarmsMs:J

    iget-object v2, v2, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/utils/AlarmQueue;->setMinTimeBetweenAlarmsMs(J)V

    const/4 v1, 0x1

    iput-boolean v1, v5, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    :cond_14
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x777ea8fd -> :sswitch_a
        -0x5dcd0a55 -> :sswitch_9
        -0x2f1814d9 -> :sswitch_8
        -0x2035877c -> :sswitch_7
        0x5fa939a -> :sswitch_6
        0x22a4f609 -> :sswitch_5
        0x274d921d -> :sswitch_4
        0x2c861644 -> :sswitch_3
        0x6c3c0f71 -> :sswitch_2
        0x6c903af2 -> :sswitch_1
        0x71a3d7ac -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setConstraintSatisfied(IJZ)V
    .locals 5

    const-string/jumbo v0, "setConstraintSatisfied:  constraint: "

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    and-int/2addr v2, p1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-ne v2, p4, :cond_1

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    sget-boolean v2, Lcom/android/server/job/controllers/FlexibilityController;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "JobScheduler.Flex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " state: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    iget v2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    invoke-virtual {v0, v2, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    if-nez p4, :cond_3

    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_3
    iget p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    not-int p3, p1

    and-int/2addr p2, p3

    if-eqz p4, :cond_4

    move p3, p1

    goto :goto_1

    :cond_4
    move p3, v3

    :goto_1
    or-int/2addr p2, p3

    iput p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    const/high16 p2, 0x10000000

    and-int/2addr p1, p2

    if-eqz p1, :cond_5

    monitor-exit v1

    return-void

    :cond_5
    iget-boolean p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_6
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setLocalPolicyForTesting(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLocalOverride:Z

    const/4 v2, 0x0

    if-ne v1, p2, :cond_1

    iget v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    if-eq v1, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLocalOverride:Z

    if-eqz p2, :cond_2

    iput p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    iget p1, p1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->APPLIED_CONSTRAINTS:I

    iput p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    :goto_2
    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final startTrackingLocked()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchChangedListener:Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

    iget-object v1, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/job/controllers/PrefetchController;->mPrefetchChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public final unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;

    if-nez v0, :cond_1

    const-string p0, "JobScheduler.Flex"

    const-string/jumbo p1, "Unprepared a job that didn\'t result in a score change"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getPriority()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineScores:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    div-int/lit8 v2, p1, 0x64

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    neg-int p0, p0

    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->addScore(IJ)V

    return-void
.end method
