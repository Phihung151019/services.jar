.class public Lcom/android/server/job/JobConcurrencyManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

.field public static final CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

.field public static final DEBUG:Z

.field public static final DEFAULT_CONCURRENCY_LIMIT:I

.field static final DEFAULT_MAX_WAIT_EJ_MS:J = 0x493e0L

.field static final DEFAULT_MAX_WAIT_REGULAR_MS:J = 0x1b7740L

.field static final DEFAULT_MAX_WAIT_UI_MS:J = 0x493e0L

.field public static final DEFAULT_PKG_CONCURRENCY_LIMIT_REGULAR:I

.field static final KEY_ENABLE_MAX_WAIT_TIME_BYPASS:Ljava/lang/String; = "concurrency_enable_max_wait_time_bypass"

.field static final KEY_MAX_WAIT_UI_MS:Ljava/lang/String; = "concurrency_max_wait_ui_ms"

.field static final KEY_PKG_CONCURRENCY_LIMIT_EJ:Ljava/lang/String; = "concurrency_pkg_concurrency_limit_ej"

.field static final KEY_PKG_CONCURRENCY_LIMIT_REGULAR:Ljava/lang/String; = "concurrency_pkg_concurrency_limit_regular"

.field static final MAX_CONCURRENCY_LIMIT:I = 0x40

.field static final NUM_WORK_TYPES:I = 0x7

.field public static final sConcurrencyHistogramLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sDeterminationComparator:Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda2;


# instance fields
.field public final mActivePkgStats:Landroid/util/SparseArrayMap;

.field public final mActiveServices:Ljava/util/List;

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public final mContextAssignmentPool:Landroid/util/Pools$Pool;

.field public mCurrentInteractiveState:Z

.field public mEffectiveInteractiveState:Z

.field mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

.field public final mHandler:Landroid/os/Handler;

.field public final mIdleContexts:Landroid/util/ArraySet;

.field public final mInjector:Lcom/android/server/job/JobConcurrencyManager$Injector;

.field public mLastMemoryTrimLevel:I

.field public mLastScreenOffRealtime:J

.field public mLastScreenOnRealtime:J

.field public final mLock:Ljava/lang/Object;

.field public mMaxWaitEjMs:J

.field public mMaxWaitRegularMs:J

.field public mMaxWaitTimeBypassEnabled:Z

.field public mMaxWaitUIMs:J

.field public mNextSystemStateRefreshTime:J

.field public final mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

.field public mNumDroppedContexts:I

.field public final mPackageStatsStagingCountClearer:Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda0;

.field public mPkgConcurrencyLimitEj:I

.field public mPkgConcurrencyLimitRegular:I

.field public final mPkgStatsPool:Landroid/util/Pools$Pool;

.field public mPowerManager:Landroid/os/PowerManager;

.field public final mRampUpForScreenOff:Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda1;

.field public final mReceiver:Lcom/android/server/job/JobConcurrencyManager$1;

.field public final mRecycledAssignmentInfo:Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;

.field public final mRecycledChanged:Landroid/util/ArraySet;

.field public final mRecycledIdle:Landroid/util/ArraySet;

.field public final mRecycledPreferredUidOnly:Ljava/util/ArrayList;

.field public final mRecycledPrivilegedState:Landroid/util/SparseIntArray;

.field public final mRecycledStoppable:Ljava/util/ArrayList;

.field public final mRunningJobs:Landroid/util/ArraySet;

.field public mScreenOffAdjustmentDelayMs:J

.field public final mService:Lcom/android/server/job/JobSchedulerService;

.field mShouldRestrictBgUser:Z

.field public final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

.field public mSteadyStateConcurrencyLimit:I

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

.field public mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;


# direct methods
.method public static -$$Nest$mstopOvertimeJobsLocked(Lcom/android/server/job/JobConcurrencyManager;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    iget-object v2, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->isWithinExecutionGuaranteeTime()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x4

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 32

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v0, :cond_0

    sput v1, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    sget-object v7, Landroid/util/DataUnit;->GIGABYTES:Landroid/util/DataUnit;

    const-wide/16 v8, 0x6

    invoke-virtual {v7, v8, v9}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v8

    cmp-long v8, v0, v8

    if-gtz v8, :cond_1

    sput v5, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    goto :goto_0

    :cond_1
    const-wide/16 v8, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v8

    cmp-long v5, v0, v8

    if-gtz v5, :cond_2

    const/16 v0, 0x14

    sput v0, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    goto :goto_0

    :cond_2
    const-wide/16 v8, 0xc

    invoke-virtual {v7, v8, v9}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v7

    cmp-long v0, v0, v7

    if-gtz v0, :cond_3

    sput v3, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    goto :goto_0

    :cond_3
    const/16 v0, 0x28

    sput v0, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    :goto_0
    sget v9, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    div-int/lit8 v0, v9, 0x2

    sput v0, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_PKG_CONCURRENCY_LIMIT_REGULAR:I

    new-instance v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    new-instance v7, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    mul-int/lit8 v3, v9, 0x3

    const/4 v5, 0x4

    div-int/lit8 v10, v3, 0x4

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v13, 0x3ecccccd    # 0.4f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v21, 0x3e4ccccd    # 0.2f

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v22, 0x3dcccccd    # 0.1f

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v16

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v17

    const v23, 0x3d4ccccd    # 0.05f

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v18

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v19

    invoke-static/range {v14 .. v19}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    const/high16 v15, 0x3e800000    # 0.25f

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    const/16 v16, 0x40

    move/from16 v17, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move/from16 v18, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-static {v8, v12, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string/jumbo v8, "screen_on_normal"

    invoke-direct/range {v7 .. v12}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    move-object v3, v7

    new-instance v7, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v24

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v25

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v26

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v27

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v28

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v29

    invoke-static/range {v24 .. v29}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    invoke-static {v5, v8, v10}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string/jumbo v8, "screen_on_moderate"

    move v10, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    move-object v0, v7

    new-instance v7, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    mul-int/lit8 v5, v9, 0x4

    div-int/lit8 v10, v5, 0xa

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v13, 0x3f19999a    # 0.6f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    invoke-static {v5, v8, v11, v12}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const v5, 0x3eaaaaab

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    const v19, 0x3e2aaaab

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move/from16 v24, v13

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    invoke-static {v5, v8, v12}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string/jumbo v8, "screen_on_low"

    invoke-direct/range {v7 .. v12}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    move-object v5, v7

    new-instance v7, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v11, 0x3f333333    # 0.7f

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    invoke-static {v8, v11, v12, v13}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move/from16 v25, v14

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    invoke-static {v8, v12, v13}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string/jumbo v8, "screen_on_critical"

    invoke-direct/range {v7 .. v12}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    move v13, v10

    invoke-direct {v1, v3, v0, v5, v7}, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;-><init>(Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;)V

    sput-object v1, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    new-instance v7, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v26

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v27

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v28

    const v1, 0x3e19999a    # 0.15f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v29

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v30

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v31

    invoke-static/range {v26 .. v31}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    invoke-static {v5, v8, v10}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string/jumbo v8, "screen_off_normal"

    move v10, v9

    invoke-direct/range {v7 .. v12}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    move-object v5, v7

    new-instance v7, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    mul-int/lit8 v8, v9, 0x9

    div-int/lit8 v10, v8, 0xa

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v26

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v27

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v28

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v29

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v30

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v31

    invoke-static/range {v26 .. v31}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move/from16 v19, v1

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-static {v8, v12, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string/jumbo v8, "screen_off_moderate"

    invoke-direct/range {v7 .. v12}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    move-object v1, v7

    new-instance v7, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    mul-int/lit8 v8, v9, 0x6

    div-int/lit8 v10, v8, 0xa

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v24

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v25

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v26

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v27

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v28

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v29

    invoke-static/range {v24 .. v29}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    invoke-static {v8, v12, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string/jumbo v8, "screen_off_low"

    invoke-direct/range {v7 .. v12}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    move-object v14, v7

    new-instance v7, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-static {v3, v8, v10, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string/jumbo v8, "screen_off_critical"

    move v10, v13

    invoke-direct/range {v7 .. v12}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    invoke-direct {v0, v5, v1, v14, v7}, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;-><init>(Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;)V

    sput-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/job/JobConcurrencyManager;->sDeterminationComparator:Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda2;

    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$UniformOptions;

    const/high16 v2, 0x42c60000    # 99.0f

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/android/modules/expresslog/Histogram$UniformOptions;-><init>(IFF)V

    const-string/jumbo v2, "job_scheduler.value_hist_job_concurrency"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobConcurrencyManager;->sConcurrencyHistogramLogger:Lcom/android/modules/expresslog/Histogram;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager$Injector;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledChanged:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledIdle:Landroid/util/ArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidOnly:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledStoppable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;

    invoke-direct {v0}, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledAssignmentInfo:Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPrivilegedState:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-direct {v0}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    new-instance v0, Landroid/util/Pools$SimplePool;

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgStatsPool:Landroid/util/Pools$Pool;

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    sget v0, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    sget v0, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_PKG_CONCURRENCY_LIMIT_REGULAR:I

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitTimeBypassEnabled:Z

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitUIMs:J

    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitEjMs:J

    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitRegularMs:J

    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPackageStatsStagingCountClearer:Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/internal/util/jobs/StatLogger;

    const-string/jumbo v1, "assignJobsToContexts"

    const-string/jumbo v2, "refreshSystemState"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobConcurrencyManager$1;-><init>(Lcom/android/server/job/JobConcurrencyManager;)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mReceiver:Lcom/android/server/job/JobConcurrencyManager$1;

    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/JobConcurrencyManager;)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRampUpForScreenOff:Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda1;

    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mInjector:Lcom/android/server/job/JobConcurrencyManager$Injector;

    new-instance p2, Lcom/android/server/job/JobNotificationCoordinator;

    invoke-direct {p2}, Lcom/android/server/job/JobNotificationCoordinator;-><init>()V

    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    const-class p2, Landroid/app/ActivityManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManagerInternal;

    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-class p2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/UserManagerInternal;

    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    invoke-direct {p2, p1}, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11101dc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mShouldRestrictBgUser:Z

    return-void
.end method

.method public static varargs printAssignments(Ljava/lang/String;[Ljava/util/Collection;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    move v1, p0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_6

    aget-object v2, p1, v1

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, p0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    iget-object v5, v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    iget-object v5, v5, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    :cond_0
    if-gtz v1, :cond_1

    if-lez v3, :cond_2

    :cond_1
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v6, "("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_3

    const-string/jumbo v4, "nothing"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    iget-object v4, v5, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v4, v5, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v5, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static workTypeToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_7

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/16 v0, 0x8

    if-eq p0, v0, :cond_3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    const-string/jumbo v0, "WORK("

    const-string v1, ")"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "BGUSER"

    return-object p0

    :cond_1
    const-string p0, "BGUSER_IMPORTANT"

    return-object p0

    :cond_2
    const-string p0, "BG"

    return-object p0

    :cond_3
    const-string p0, "EJ"

    return-object p0

    :cond_4
    const-string/jumbo p0, "UI"

    return-object p0

    :cond_5
    const-string p0, "FGS"

    return-object p0

    :cond_6
    const-string/jumbo p0, "TOP"

    return-object p0

    :cond_7
    const-string/jumbo p0, "NONE"

    return-object p0
.end method


# virtual methods
.method public addRunningJobForTesting(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobConcurrencyManager;->getPackageStatsForTesting(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustRunningCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobServiceContext;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->createNewJobServiceContext()Lcom/android/server/job/JobServiceContext;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobServiceContext;->executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;I)Z

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final assignJobsToContextsLocked()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v6}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v7

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    const-string v9, "JobScheduler.Concurrency"

    const/4 v10, 0x1

    sget-boolean v11, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v11, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Pending queue: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    iput-boolean v10, v3, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    :goto_0
    invoke-virtual {v3}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "({"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "} "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getId()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    iget v1, v1, Lcom/android/server/job/PendingJobQueue;->mSize:I

    const/4 v12, 0x0

    if-nez v1, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledIdle:Landroid/util/ArraySet;

    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidOnly:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledStoppable:Ljava/util/ArrayList;

    iget-object v13, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledAssignmentInfo:Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;

    invoke-virtual {v0, v1, v2, v3, v13}, Lcom/android/server/job/JobConcurrencyManager;->prepareForAssignmentDeterminationLocked(Landroid/util/ArraySet;Ljava/util/List;Ljava/util/List;Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;)V

    const/4 v14, 0x2

    if-eqz v11, :cond_3

    new-array v1, v14, [Ljava/util/Collection;

    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledStoppable:Ljava/util/ArrayList;

    aput-object v2, v1, v12

    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidOnly:Ljava/util/ArrayList;

    aput-object v2, v1, v10

    const-string/jumbo v2, "running jobs initial"

    invoke-static {v2, v1}, Lcom/android/server/job/JobConcurrencyManager;->printAssignments(Ljava/lang/String;[Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledChanged:Landroid/util/ArraySet;

    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledIdle:Landroid/util/ArraySet;

    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidOnly:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledStoppable:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledAssignmentInfo:Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobConcurrencyManager;->determineAssignmentsLocked(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Ljava/util/List;Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;)V

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    if-eqz v11, :cond_4

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/util/Collection;

    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledStoppable:Ljava/util/ArrayList;

    aput-object v3, v2, v12

    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidOnly:Ljava/util/ArrayList;

    aput-object v3, v2, v10

    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledChanged:Landroid/util/ArraySet;

    aput-object v3, v2, v14

    const-string/jumbo v3, "running jobs final"

    invoke-static {v3, v2}, Lcom/android/server/job/JobConcurrencyManager;->printAssignments(Ljava/lang/String;[Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "work count results: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledChanged:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v10

    :goto_1
    if-ltz v3, :cond_8

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    iget-object v5, v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    iget-object v5, v5, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v5, :cond_6

    if-eqz v11, :cond_5

    new-instance v15, Ljava/lang/StringBuilder;

    move/from16 v16, v10

    const-string/jumbo v10, "preempting job: "

    invoke-direct {v15, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    move/from16 v16, v10

    :goto_2
    iget-object v5, v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    iget v10, v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReasonCode:I

    iget-object v15, v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReason:Ljava/lang/String;

    invoke-virtual {v5, v10, v14, v15}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    goto :goto_3

    :cond_6
    move/from16 v16, v10

    iget-object v5, v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v11, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v15, "About to run job on context "

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v15}, Ljava/lang/Object;->hashCode()I

    move-result v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", job: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v10, v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    iget v15, v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    invoke-virtual {v0, v15, v10, v5}, Lcom/android/server/job/JobConcurrencyManager;->startJobLocked(ILcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V

    :goto_3
    invoke-virtual {v4}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->clear()V

    iget-object v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    check-cast v5, Landroid/util/Pools$SimplePool;

    invoke-virtual {v5, v4}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    move/from16 v10, v16

    goto :goto_1

    :cond_8
    move/from16 v16, v10

    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledChanged:Landroid/util/ArraySet;

    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledIdle:Landroid/util/ArraySet;

    iget-object v4, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidOnly:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledStoppable:Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPrivilegedState:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_4
    if-ltz v10, :cond_9

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    invoke-virtual {v11}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->clear()V

    iget-object v14, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    check-cast v14, Landroid/util/Pools$SimplePool;

    invoke-virtual {v14, v11}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_5
    if-ltz v10, :cond_a

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    invoke-virtual {v11}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->clear()V

    iget-object v14, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    check-cast v14, Landroid/util/Pools$SimplePool;

    invoke-virtual {v14, v11}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    :cond_a
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_6
    if-ltz v10, :cond_b

    invoke-virtual {v3, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    iget-object v14, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    iget-object v15, v11, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v14, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->clear()V

    iget-object v14, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    check-cast v14, Landroid/util/Pools$SimplePool;

    invoke-virtual {v14, v11}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, -0x1

    goto :goto_6

    :cond_b
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v2, 0x0

    iput-wide v2, v13, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->minPreferredUidOnlyWaitingTimeMs:J

    iput v12, v13, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningImmediacyPrivileged:I

    iput v12, v13, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningUi:I

    iput v12, v13, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningEj:I

    iput v12, v13, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningReg:I

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->clear()V

    iget-object v1, v1, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mPackageStatsStagingCountClearer:Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobConcurrencyManager;->noteConcurrency(Z)V

    :goto_7
    invoke-virtual {v6, v12, v7, v8}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void
.end method

.method public final createNewJobServiceContext()Lcom/android/server/job/JobServiceContext;
    .locals 8

    const-string/jumbo v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mInjector:Lcom/android/server/job/JobConcurrencyManager$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/job/JobServiceContext;

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/job/JobServiceContext;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager;Lcom/android/server/job/JobNotificationCoordinator;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V

    return-object v1
.end method

.method public determineAssignmentsLocked(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Ljava/util/List;Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;)V
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;",
            "Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    iget-object v6, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v6, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v10, v5, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningUi:I

    if-nez v10, :cond_0

    move v10, v9

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    iget v12, v5, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningEj:I

    if-nez v12, :cond_1

    move v12, v9

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    iget v13, v5, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningReg:I

    if-nez v13, :cond_2

    move v13, v9

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    move/from16 v16, v9

    const-wide v14, 0x7fffffffffffffffL

    :goto_3
    invoke-virtual {v7}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v9

    if-eqz v9, :cond_35

    iget-object v11, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v11, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    sget-boolean v17, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    move/from16 v18, v10

    const-string v10, "JobScheduler.Concurrency"

    if-eqz v11, :cond_4

    const-string/jumbo v11, "Pending queue contained a running job"

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v17, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    move/from16 v19, v12

    const-string/jumbo v12, "Pending+running job: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    move/from16 v19, v12

    :goto_4
    invoke-virtual {v7, v9}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move/from16 v10, v18

    move/from16 v12, v19

    goto :goto_3

    :cond_4
    move/from16 v19, v12

    iget-object v11, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPrivilegedState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v9, v11}, Lcom/android/server/job/JobConcurrencyManager;->hasImmediacyPrivilegeLocked(Lcom/android/server/job/controllers/JobStatus;Landroid/util/SparseIntArray;)Z

    move-result v11

    if-eqz v17, :cond_5

    invoke-virtual {v0, v9}, Lcom/android/server/job/JobConcurrencyManager;->isSimilarJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v12

    if-eqz v12, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v20, v7

    const-string v7, "Already running similar job to: "

    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move v7, v13

    goto :goto_6

    :cond_5
    move-object/from16 v20, v7

    goto :goto_5

    :goto_6
    iget-wide v12, v5, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->minPreferredUidOnlyWaitingTimeMs:J

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    move/from16 v21, v7

    invoke-virtual {v0, v9}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v7

    invoke-virtual {v0, v9}, Lcom/android/server/job/JobConcurrencyManager;->isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v22

    move-wide/from16 v23, v12

    iget v12, v0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    if-le v8, v12, :cond_6

    move/from16 v12, v16

    goto :goto_7

    :cond_6
    const/4 v12, 0x0

    :goto_7
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v13

    move/from16 v25, v8

    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    move/from16 v26, v12

    iget v12, v9, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    if-lez v13, :cond_9

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v2, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    move-wide/from16 v28, v14

    move-object/from16 v14, v27

    check-cast v14, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    iget v15, v14, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preferredUid:I

    move/from16 v27, v11

    if-eq v15, v12, :cond_8

    const/4 v11, -0x1

    if-ne v15, v11, :cond_7

    goto :goto_8

    :cond_7
    const/4 v11, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    move/from16 v11, v16

    :goto_9
    invoke-virtual {v8, v7}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v15

    if-eqz v11, :cond_a

    if-nez v22, :cond_a

    if-eqz v15, :cond_a

    invoke-virtual {v2, v13}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    iput-object v9, v14, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    iput v15, v14, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    move/from16 v11, v16

    goto :goto_a

    :cond_9
    move/from16 v27, v11

    move-wide/from16 v28, v14

    :cond_a
    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_a
    if-nez v14, :cond_13

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_13

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    :goto_b
    if-ltz v15, :cond_13

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    const/16 v30, 0x2

    move-object/from16 v13, v22

    check-cast v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    iget-object v2, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    iget-object v2, v2, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v27, :cond_d

    if-nez v26, :cond_d

    move/from16 v22, v11

    invoke-virtual {v6, v2}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v11

    iget v2, v2, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    move-object/from16 v31, v14

    const/16 v14, 0x28

    if-lt v2, v14, :cond_c

    if-lt v11, v14, :cond_c

    iget v2, v5, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningImmediacyPrivileged:I

    iget-object v11, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iget v11, v11, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    div-int/lit8 v11, v11, 0x2

    if-le v2, v11, :cond_b

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    move/from16 v2, v16

    goto :goto_d

    :cond_d
    move/from16 v22, v11

    move-object/from16 v31, v14

    move/from16 v2, v27

    :goto_d
    if-nez v2, :cond_11

    iget-boolean v11, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitTimeBypassEnabled:Z

    if-eqz v11, :cond_11

    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object v14, v10

    iget-wide v10, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitUIMs:J

    cmp-long v2, v23, v10

    if-ltz v2, :cond_e

    :goto_e
    move/from16 v2, v16

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    goto :goto_f

    :cond_f
    move-object v14, v10

    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-wide v10, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitEjMs:J

    cmp-long v2, v23, v10

    if-ltz v2, :cond_e

    goto :goto_e

    :cond_10
    iget-wide v10, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitRegularMs:J

    cmp-long v2, v23, v10

    if-ltz v2, :cond_e

    goto :goto_e

    :cond_11
    move-object v14, v10

    :goto_f
    if-eqz v2, :cond_12

    iget-object v2, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    iget v2, v2, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    invoke-virtual {v8, v7, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(II)I

    move-result v2

    if-eqz v2, :cond_12

    iget-object v10, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->shouldStopJobReason:Ljava/lang/String;

    iput-object v10, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReason:Ljava/lang/String;

    const/4 v10, 0x4

    iput v10, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReasonCode:I

    invoke-interface {v4, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iput-object v9, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    iput v2, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    goto :goto_10

    :cond_12
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v2, p2

    move-object v10, v14

    move/from16 v11, v22

    move-object/from16 v14, v31

    goto/16 :goto_b

    :cond_13
    move/from16 v22, v11

    move-object/from16 v31, v14

    const/16 v30, 0x2

    move-object v14, v10

    move-object/from16 v13, v31

    :goto_10
    if-nez v13, :cond_14

    if-eqz v26, :cond_15

    if-eqz v27, :cond_14

    goto :goto_11

    :cond_14
    move-object/from16 v26, v14

    goto/16 :goto_17

    :cond_15
    :goto_11
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const v10, 0x7fffffff

    move-object v11, v14

    const-wide v14, 0x7fffffffffffffffL

    :goto_12
    if-ltz v2, :cond_1c

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    move/from16 v31, v2

    move-object/from16 v2, v26

    check-cast v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    iget-object v4, v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    iget-object v4, v4, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v4, :cond_1b

    move-object/from16 v26, v11

    iget v11, v4, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    if-eq v11, v12, :cond_16

    :goto_13
    move/from16 v32, v10

    goto :goto_14

    :cond_16
    invoke-virtual {v6, v4}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v4

    iget v11, v9, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-lt v4, v11, :cond_17

    goto :goto_13

    :cond_17
    if-eqz v13, :cond_19

    if-le v10, v4, :cond_18

    goto :goto_15

    :cond_18
    move/from16 v32, v10

    iget-wide v10, v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->timeUntilStoppableMs:J

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    :goto_14
    move/from16 v10, v30

    goto :goto_16

    :cond_19
    :goto_15
    if-eqz v13, :cond_1a

    iget-wide v10, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->timeUntilStoppableMs:J

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    :cond_1a
    const-string/jumbo v10, "higher bias job found"

    iput-object v10, v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReason:Ljava/lang/String;

    move/from16 v10, v30

    iput v10, v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReasonCode:I

    move-object v13, v2

    move/from16 v32, v4

    goto :goto_16

    :cond_1b
    move/from16 v32, v10

    move-object/from16 v26, v11

    goto :goto_14

    :goto_16
    add-int/lit8 v2, v31, -0x1

    move-object/from16 v4, p4

    move/from16 v30, v10

    move-object/from16 v11, v26

    move/from16 v10, v32

    goto :goto_12

    :cond_1c
    move-object/from16 v26, v11

    if-eqz v13, :cond_1d

    iput-object v9, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {v3, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iput-wide v14, v5, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->minPreferredUidOnlyWaitingTimeMs:J

    :cond_1d
    :goto_17
    if-eqz v27, :cond_24

    if-eqz v13, :cond_1e

    iget-object v2, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    iget-object v2, v2, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v2, :cond_1e

    invoke-virtual {v1, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v25, -0x1

    const/4 v4, 0x0

    iput-object v4, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    const/4 v10, 0x0

    iput v10, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    move/from16 v25, v2

    move-object v13, v4

    goto :goto_18

    :cond_1e
    const/4 v10, 0x0

    :goto_18
    if-nez v13, :cond_23

    if-eqz v17, :cond_1f

    const-string v2, "Allowing additional context because EJ would wait too long"

    move-object/from16 v11, v26

    invoke-static {v11, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    check-cast v2, Landroid/util/Pools$SimplePool;

    invoke-virtual {v2}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    if-nez v2, :cond_20

    new-instance v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    invoke-direct {v2}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;-><init>()V

    :cond_20
    move-object v13, v2

    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_21

    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    goto :goto_19

    :cond_21
    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->createNewJobServiceContext()Lcom/android/server/job/JobServiceContext;

    move-result-object v2

    :goto_19
    iput-object v2, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    iput-object v9, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v8, v7}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_1a

    :cond_22
    move/from16 v2, v16

    :goto_1a
    iput v2, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    :cond_23
    move/from16 v12, v19

    goto/16 :goto_22

    :cond_24
    move-object/from16 v11, v26

    const/4 v10, 0x0

    if-nez v13, :cond_23

    iget-boolean v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitTimeBypassEnabled:Z

    if-eqz v2, :cond_23

    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v2

    if-eqz v2, :cond_26

    if-eqz v18, :cond_26

    iget-wide v14, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitUIMs:J

    cmp-long v2, v23, v14

    if-ltz v2, :cond_25

    move/from16 v2, v16

    goto :goto_1b

    :cond_25
    move v2, v10

    :goto_1b
    xor-int/lit8 v4, v2, 0x1

    move/from16 v18, v4

    :goto_1c
    move/from16 v12, v19

    goto :goto_1f

    :cond_26
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v2

    if-eqz v2, :cond_28

    if-eqz v19, :cond_28

    iget-wide v14, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitEjMs:J

    cmp-long v2, v23, v14

    if-ltz v2, :cond_27

    move/from16 v2, v16

    goto :goto_1d

    :cond_27
    move v2, v10

    :goto_1d
    xor-int/lit8 v12, v2, 0x1

    goto :goto_1f

    :cond_28
    if-eqz v21, :cond_2a

    iget-wide v14, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitRegularMs:J

    cmp-long v2, v23, v14

    if-ltz v2, :cond_29

    move/from16 v2, v16

    goto :goto_1e

    :cond_29
    move v2, v10

    :goto_1e
    xor-int/lit8 v4, v2, 0x1

    move/from16 v21, v4

    goto :goto_1c

    :cond_2a
    move v2, v10

    goto :goto_1c

    :goto_1f
    if-eqz v2, :cond_30

    if-eqz v17, :cond_2b

    const-string v2, "Allowing additional context because job would wait too long"

    invoke-static {v11, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    check-cast v2, Landroid/util/Pools$SimplePool;

    invoke-virtual {v2}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    if-nez v2, :cond_2c

    new-instance v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    invoke-direct {v2}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;-><init>()V

    :cond_2c
    move-object v13, v2

    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_2d

    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    goto :goto_20

    :cond_2d
    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->createNewJobServiceContext()Lcom/android/server/job/JobServiceContext;

    move-result-object v2

    :goto_20
    iput-object v2, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    iput-object v9, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v8, v7}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v2

    if-eqz v2, :cond_2e

    iput v2, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    goto :goto_22

    :cond_2e
    move/from16 v2, v16

    :goto_21
    const/16 v4, 0x7f

    if-gt v2, v4, :cond_30

    and-int v4, v2, v7

    if-eqz v4, :cond_2f

    iput v2, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    goto :goto_22

    :cond_2f
    shl-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_30
    :goto_22
    iget v2, v9, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v4, v9, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lcom/android/server/job/JobConcurrencyManager;->getPkgStatsLocked(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    move-result-object v11

    if-eqz v13, :cond_33

    invoke-virtual {v1, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v14, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    iget-object v14, v14, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v14, :cond_31

    add-int/lit8 v25, v25, -0x1

    :cond_31
    iget-object v14, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v14, :cond_32

    move/from16 v15, v27

    iput-boolean v15, v14, Lcom/android/server/job/controllers/JobStatus;->startedWithImmediacyPrivilege:Z

    add-int/lit8 v25, v25, 0x1

    invoke-virtual {v6, v14}, Lcom/android/server/job/JobSchedulerService;->getMinJobExecutionGuaranteeMs(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v14

    move-object/from16 v17, v11

    move-wide/from16 v10, v28

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    goto :goto_23

    :cond_32
    move-object/from16 v17, v11

    move-wide/from16 v10, v28

    move-wide v14, v10

    :goto_23
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v9

    move/from16 v10, v16

    move-object/from16 v11, v17

    invoke-static {v11, v10, v9}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustStagedCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    move-object v9, v11

    goto :goto_24

    :cond_33
    move-object v9, v11

    move-wide/from16 v10, v28

    move-wide v14, v10

    :goto_24
    if-eqz v22, :cond_34

    iget v10, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    invoke-virtual {v8, v10, v7}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->stageJob(II)V

    iget-object v7, v0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v2, v4, v9}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v10, v18

    move-object/from16 v7, v20

    move/from16 v13, v21

    move/from16 v8, v25

    goto/16 :goto_3

    :cond_35
    return-void
.end method

.method public final dumpContextInfoLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;JJ)V
    .locals 6

    const-string v0, "Active jobs:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "N/A"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    iget-object v3, v2, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v3, :cond_1

    invoke-virtual {p2, v3}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "Slot #"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, "(ID="

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, "): "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p3, p4}, Lcom/android/server/job/JobServiceContext;->dumpLocked(Landroid/util/IndentingPrintWriter;J)V

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v3, p1, v0, p3, p4}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v2, "Evaluated bias: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, v3, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    invoke-static {v2}, Landroid/app/job/JobInfo;->getBiasString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "Active at "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v3, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    sub-long/2addr v4, p5

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v2, ", pending for "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v3, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    iget-wide v2, v3, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long/2addr v4, v2

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p2, "Idle contexts ("

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p2, "):"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_2
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-ge v0, p2, :cond_4

    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/job/JobServiceContext;

    const-string p5, "ID="

    invoke-virtual {p1, p5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p5

    invoke-virtual {p1, p5}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p5, ": "

    invoke-virtual {p1, p5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1, p3, p4}, Lcom/android/server/job/JobServiceContext;->dumpLocked(Landroid/util/IndentingPrintWriter;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    if-lez p2, :cond_5

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p2, "Dropped "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p0, " contexts"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final dumpLocked(Landroid/util/IndentingPrintWriter;JJ)V
    .locals 3

    const-string v0, "Concurrency:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :try_start_0
    const-string v0, "Configuration:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "concurrency_limit"

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "concurrency_screen_off_adjustment_delay_ms"

    iget-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "concurrency_pkg_concurrency_limit_ej"

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "concurrency_pkg_concurrency_limit_regular"

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "concurrency_enable_max_wait_time_bypass"

    iget-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitTimeBypassEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "concurrency_max_wait_ui_ms"

    iget-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitUIMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "concurrency_max_wait_ej_ms"

    iget-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitEjMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "concurrency_max_wait_regular_ms"

    iget-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitRegularMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "Screen state: current "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v1, "OFF"

    const-string/jumbo v2, "ON"

    if-eqz v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  effective "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    if-eqz v0, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Last screen ON: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sub-long p4, p2, p4

    iget-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    add-long/2addr v0, p4

    invoke-static {p1, v0, v1, p2, p3}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Last screen OFF: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    add-long/2addr p4, v0

    invoke-static {p1, p4, p5, p2, p3}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p2, "Current work counts: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo p2, "mLastMemoryTrimLevel: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p2, "Active Package stats:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    new-instance p3, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda3;

    invoke-direct {p3, p1}, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda3;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p2, p3}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo p2, "User Grace Period: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    iget-object p2, p2, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mGracePeriodExpiration:Landroid/util/SparseLongArray;

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    throw p0
.end method

.method public final dumpProtoLocked(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6

    const-wide v0, 0x10b00000014L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10800000001L

    iget-boolean v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000002L

    iget-boolean v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    sub-long v2, p2, v2

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    sub-long/2addr p2, v2

    const-wide v2, 0x10300000004L

    invoke-virtual {p1, v2, v3, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p2, 0x10500000006L

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    invoke-virtual {p1, p2, p3, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const-wide p2, 0x10b00000007L

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/jobs/StatLogger;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final executeStopCommandLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ZIII)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    iget-object v3, v2, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v3, :cond_3

    if-eqz v3, :cond_3

    const/4 v4, -0x1

    if-eq p3, v4, :cond_0

    iget v4, v3, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne p3, v4, :cond_3

    :cond_0
    if-eqz p2, :cond_1

    iget-object v4, v3, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    iget-object v4, v3, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-static {p4, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p5, :cond_2

    iget-object v4, v3, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getId()I

    move-result v4

    if-ne p6, v4, :cond_3

    :cond_2
    iget v4, v2, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    iget-object v1, v2, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const-string/jumbo v4, "stop from shell"

    invoke-virtual {v1, p7, p8, v4}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    const-string/jumbo v1, "Stopping job: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v3, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public final getEstimatedNetworkBytesLocked(IILjava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    iget-object v2, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2, p4}, Lcom/android/server/job/controllers/JobStatus;->matches(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide p0, v1, Lcom/android/server/job/JobServiceContext;->mEstimatedDownloadBytes:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iget-wide p1, v1, Lcom/android/server/job/JobServiceContext;->mEstimatedUploadBytes:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->shouldRunAsFgUserJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    const/16 v0, 0x23

    if-eqz p0, :cond_4

    iget p0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/16 v1, 0x28

    if-lt p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-lt p0, v0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/16 p0, 0x10

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_2

    or-int/lit8 p0, p0, 0x8

    return p0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result p1

    if-eqz p1, :cond_3

    or-int/lit8 p0, p0, 0x4

    :cond_3
    return p0

    :cond_4
    iget p0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-ge p0, v0, :cond_6

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/16 p0, 0x20

    :goto_2
    or-int/lit8 p0, p0, 0x40

    return p0
.end method

.method public getPackageConcurrencyLimitEj()I
    .locals 0

    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    return p0
.end method

.method public getPackageStatsForTesting(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobConcurrencyManager;->getPkgStatsLocked(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final getPkgStatsLocked(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgStatsPool:Landroid/util/Pools$Pool;

    check-cast p0, Landroid/util/Pools$SimplePool;

    invoke-virtual {p0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    invoke-direct {p0}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;-><init>()V

    :cond_0
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->userId:I

    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->packageName:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final getRunningJobServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/JobServiceContext;
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    iget-object v3, v2, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "JobScheduler.Concurrency"

    const-string v2, "Couldn\'t find running job on a context"

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    if-eqz p1, :cond_3

    sget-object p0, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter$JobSchedulerPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;->removeRunningJobs(Landroid/app/job/JobInfo;I)V

    :cond_3
    return-object v1
.end method

.method public final getTransferredNetworkBytesLocked(IILjava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    iget-object v2, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2, p4}, Lcom/android/server/job/controllers/JobStatus;->matches(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide p0, v1, Lcom/android/server/job/JobServiceContext;->mTransferredDownloadBytes:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iget-wide p1, v1, Lcom/android/server/job/JobServiceContext;->mTransferredUploadBytes:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasImmediacyPrivilegeLocked(Lcom/android/server/job/controllers/JobStatus;Landroid/util/SparseIntArray;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/16 v2, 0x28

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v2, v3, :cond_8

    const/4 v4, 0x2

    if-eq v2, v4, :cond_7

    const/4 v5, 0x3

    if-eq v2, v5, :cond_6

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, v0}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-virtual {p2, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    return v3

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, v0}, Landroid/app/ActivityManagerInternal;->getBackgroundStartPrivileges(I)Landroid/app/BackgroundStartPrivileges;

    move-result-object p0

    sget-boolean v1, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Job "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " bsp state: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "JobScheduler.Concurrency"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result p0

    if-eqz p0, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {p2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    return p0

    :cond_6
    return v3

    :cond_7
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result p0

    return p0

    :cond_8
    return v1
.end method

.method public final isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 4

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    iget v0, v0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iget v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    if-ge v1, v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v3, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    iget p1, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    iget v0, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    add-int/2addr p1, v0

    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    if-lt p1, p0, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    iget p1, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    iget v0, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    add-int/2addr p1, v0

    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:I

    if-lt p1, p0, :cond_5

    return v1

    :cond_5
    return v2
.end method

.method public final isSimilarJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    iget v3, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    iget-object v4, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getId()I

    move-result v4

    iget-object v2, v2, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v2}, Lcom/android/server/job/controllers/JobStatus;->matches(IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final markJobsForUserStopLocked(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    iget-object v2, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v2, :cond_2

    iget v3, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne p1, v3, :cond_2

    iget-object v2, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v3, 0x4

    const-string v4, "JobServiceContext"

    if-ne v2, v3, :cond_0

    sget-boolean v2, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Too late to mark for death (verb="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const-string v3, "), ignoring."

    invoke-static {v1, v3, v4, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_0
    sget-boolean v2, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Marking "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for death because 13:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v2, 0xd

    iput v2, v1, Lcom/android/server/job/JobServiceContext;->mDeathMarkStopReason:I

    const/16 v3, 0xb

    iput v3, v1, Lcom/android/server/job/JobServiceContext;->mDeathMarkInternalStopReason:I

    iput-object p3, v1, Lcom/android/server/job/JobServiceContext;->mDeathMarkDebugReason:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v4}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v1, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v1, v2, v3, p3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final maybeStopOvertimeJobsLocked(Lcom/android/server/job/restrictions/JobRestriction;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    iget-object v2, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->isWithinExecutionGuaranteeTime()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, v2}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Lcom/android/server/job/restrictions/JobRestriction;->mInternalReason:I

    invoke-static {v2}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcom/android/server/job/restrictions/JobRestriction;->mStopReason:I

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final noteConcurrency(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    iget-object v2, v2, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    iget-object v0, v0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iget v3, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    if-le v1, v3, :cond_0

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    :cond_0
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    if-le v2, v1, :cond_1

    iput v2, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    :cond_1
    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/server/job/JobConcurrencyManager;->sConcurrencyHistogramLogger:Lcom/android/modules/expresslog/Histogram;

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    :cond_2
    return-void
.end method

.method public final onAppRemovedLocked(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    if-gtz v1, :cond_1

    iget v0, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") marked as removed before jobs stopped running"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler.Concurrency"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final onInteractiveStateChanged(Z)V
    .locals 4

    const-string v0, "Interactive: "

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z

    if-ne v2, p1, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z

    sget-boolean v2, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "JobScheduler.Concurrency"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    if-eqz p1, :cond_2

    iput-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRampUpForScreenOff:Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda1;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iput-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRampUpForScreenOff:Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda1;

    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onThirdPartyAppsCanStart()V
    .locals 9

    const-string/jumbo v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    if-ge v0, v1, :cond_0

    iget-object v8, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v2, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mInjector:Lcom/android/server/job/JobConcurrencyManager$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/job/JobServiceContext;

    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/job/JobServiceContext;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager;Lcom/android/server/job/JobNotificationCoordinator;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V

    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move-object p0, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onUserRemoved(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mGracePeriodExpiration:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public prepareForAssignmentDeterminationLocked(Landroid/util/ArraySet;Ljava/util/List;Ljava/util/List;Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;",
            "Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget-object v4, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    iget-object v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->updateCounterConfigLocked()V

    iget-object v6, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    iget-object v7, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    iget-object v7, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumPendingJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    iget-object v7, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    iget-object v7, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    const/4 v7, 0x1

    invoke-virtual {v0, v4, v7}, Lcom/android/server/job/JobConcurrencyManager;->updateNonRunningPrioritiesLocked(Lcom/android/server/job/PendingJobQueue;Z)V

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget-object v8, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move/from16 v16, v7

    move-wide/from16 v17, v8

    const/4 v13, 0x0

    const-wide v14, 0x7fffffffffffffffL

    :goto_0
    if-ge v13, v4, :cond_6

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/JobServiceContext;

    const-wide v19, 0x7fffffffffffffffL

    iget-object v11, v9, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget-object v12, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    check-cast v12, Landroid/util/Pools$SimplePool;

    invoke-virtual {v12}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    if-nez v12, :cond_0

    new-instance v12, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    invoke-direct {v12}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;-><init>()V

    :cond_0
    iput-object v9, v12, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    if-eqz v11, :cond_4

    iget v10, v9, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    iget-object v7, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v10, v8}, Landroid/util/SparseIntArray;->put(II)V

    iget-boolean v7, v11, Lcom/android/server/job/controllers/JobStatus;->startedWithImmediacyPrivilege:Z

    if-eqz v7, :cond_1

    iget v7, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningImmediacyPrivileged:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningImmediacyPrivileged:I

    :cond_1
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningUi:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningUi:I

    goto :goto_1

    :cond_2
    iget-boolean v7, v11, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v7, :cond_3

    iget v7, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningEj:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningEj:I

    goto :goto_1

    :cond_3
    iget v7, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningReg:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningReg:I

    :cond_4
    :goto_1
    iget v7, v9, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    iput v7, v12, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preferredUid:I

    invoke-virtual {v0, v9}, Lcom/android/server/job/JobConcurrencyManager;->shouldStopRunningJobLocked(Lcom/android/server/job/JobServiceContext;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v12, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->shouldStopJobReason:Ljava/lang/String;

    if-eqz v7, :cond_5

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-wide v7, v9, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v9, v9, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v7, v9

    sub-long v7, v7, v17

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v12, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->timeUntilStoppableMs:J

    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_6
    const-wide/16 v9, 0x0

    const-wide v19, 0x7fffffffffffffffL

    sget-object v5, Lcom/android/server/job/JobConcurrencyManager;->sDeterminationComparator:Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda2;

    invoke-interface {v1, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-interface {v2, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    :goto_3
    iget v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    if-ge v4, v1, :cond_9

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    goto :goto_4

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Had fewer than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in existence"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JobScheduler.Concurrency"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->createNewJobServiceContext()Lcom/android/server/job/JobServiceContext;

    move-result-object v1

    :goto_4
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    check-cast v2, Landroid/util/Pools$SimplePool;

    invoke-virtual {v2}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    if-nez v2, :cond_8

    new-instance v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    invoke-direct {v2}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;-><init>()V

    :cond_8
    iput-object v1, v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    move-object/from16 v1, p1

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    iget v0, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigMaxTotal:I

    iput v0, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    move/from16 v0, v16

    :goto_5
    const/16 v1, 0x7f

    if-ge v0, v1, :cond_a

    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    iget-object v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mRecycledReserved:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    iget v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    sub-int/2addr v2, v1

    iput v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    shl-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    move/from16 v0, v16

    :goto_6
    if-ge v0, v1, :cond_b

    iget-object v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    iget-object v4, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumPendingJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    add-int/2addr v4, v2

    iget-object v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mRecycledReserved:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    iget v5, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    iget-object v7, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigNumReservedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    sub-int/2addr v7, v2

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v5, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mRecycledReserved:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    sub-int/2addr v2, v4

    iput v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    shl-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    move/from16 v7, v16

    :goto_7
    if-ge v7, v1, :cond_c

    iget-object v0, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumPendingJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mRecycledReserved:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget v4, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    iget-object v5, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigAbsoluteMaxSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v4, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    add-int/2addr v0, v2

    invoke-virtual {v4, v7, v0}, Landroid/util/SparseIntArray;->put(II)V

    iget v0, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    sub-int/2addr v0, v2

    iput v0, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    shl-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_c
    cmp-long v0, v14, v19

    if-nez v0, :cond_d

    move-wide v14, v9

    :cond_d
    iput-wide v14, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->minPreferredUidOnlyWaitingTimeMs:J

    return-void
.end method

.method public shouldRunAsFgUserJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mShouldRestrictBgUser:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v3, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_1

    if-eq v3, p1, :cond_1

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    move p1, v3

    :cond_1
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    if-eq v0, p1, :cond_3

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->isWithinGracePeriodForUser(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public final shouldStopRunningJobLocked(Lcom/android/server/job/JobServiceContext;)Ljava/lang/String;
    .locals 9

    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/JobServiceContext;->isWithinExecutionGuaranteeTime()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo p0, "battery saver"

    return-object p0

    :cond_2
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo p0, "deep doze"

    return-object p0

    :cond_3
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1, v0}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "restriction:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, v2, Lcom/android/server/job/restrictions/JobRestriction;->mInternalReason:I

    invoke-static {p1}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->updateCounterConfigLocked()V

    iget p1, p1, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iget v3, v3, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    if-gt v2, v3, :cond_13

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    iget-object v3, v2, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    iget-object v5, v2, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigAbsoluteMaxSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-le v3, v5, :cond_5

    goto/16 :goto_4

    :cond_5
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    iget v3, v1, Lcom/android/server/job/PendingJobQueue;->mSize:I

    if-nez v3, :cond_6

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v3

    const/4 v5, 0x1

    const-string v6, " queue"

    const-string/jumbo v7, "blocking "

    if-nez v3, :cond_b

    iget-boolean v3, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v2, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    move-result v0

    if-lez v0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/job/JobConcurrencyManager;->workTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    iput-boolean v5, v1, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    const/16 v0, 0x7f

    :cond_9
    invoke-virtual {v1}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {p0, v3}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v3

    and-int v4, v3, v0

    if-lez v4, :cond_a

    invoke-virtual {v2, v3, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(II)I

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo p0, "blocking other pending jobs"

    return-object p0

    :cond_a
    not-int v3, v3

    and-int/2addr v0, v3

    if-nez v0, :cond_9

    goto/16 :goto_3

    :cond_b
    :goto_0
    const/16 v1, 0x20

    const/16 v3, 0x8

    if-eq p1, v1, :cond_10

    const/16 v8, 0x40

    if-ne p1, v8, :cond_c

    goto :goto_2

    :cond_c
    invoke-virtual {v2, v3}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    move-result p1

    if-lez p1, :cond_d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/server/job/JobConcurrencyManager;->workTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    iget-boolean p1, v0, Lcom/android/server/job/controllers/JobStatus;->startedWithImmediacyPrivilege:Z

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    sub-int/2addr p1, v5

    :goto_1
    if-ltz p1, :cond_f

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    iget-boolean v0, v0, Lcom/android/server/job/controllers/JobStatus;->startedWithImmediacyPrivilege:Z

    if-eqz v0, :cond_e

    add-int/lit8 v4, v4, 0x1

    :cond_e
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_f
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    div-int/lit8 p0, p0, 0x2

    if-le v4, p0, :cond_12

    const-string/jumbo p0, "prevent immediacy privilege dominance"

    return-object p0

    :cond_10
    :goto_2
    invoke-virtual {v2, v1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    move-result p0

    if-lez p0, :cond_11

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/job/JobConcurrencyManager;->workTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-virtual {v2, v3}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    move-result p0

    if-lez p0, :cond_12

    invoke-virtual {v2, v3, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(II)I

    move-result p0

    if-eqz p0, :cond_12

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/server/job/JobConcurrencyManager;->workTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    :goto_3
    const/4 p0, 0x0

    return-object p0

    :cond_13
    :goto_4
    const-string/jumbo p0, "too many jobs running"

    return-object p0
.end method

.method public final startJobLocked(ILcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 12

    const-string v0, "JobScheduler.Concurrency"

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getWakelockTag()Ljava/lang/String;

    move-result-object v5

    iget v6, p3, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    const/4 v7, 0x1

    invoke-virtual {v4, v7, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iget-object v5, p3, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v8, p3, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {v8}, Lcom/android/server/job/JobSchedulerService;->deriveWorkSource(I)Landroid/os/WorkSource;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move v9, v8

    :goto_0
    if-ge v9, v3, :cond_0

    :try_start_0
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v10, p3}, Lcom/android/server/job/controllers/StateController;->prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0, v6, v5}, Lcom/android/server/job/JobConcurrencyManager;->getPkgStatsLocked(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    move-result-object v9

    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v10

    invoke-static {v9, v8, v10}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustStagedCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    invoke-virtual {p2, p3, p1}, Lcom/android/server/job/JobServiceContext;->executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v11, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    if-nez v10, :cond_2

    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error executing "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v11, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "# staged jobs for "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " went negative."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object p2, v11, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    sub-int/2addr p0, v7

    invoke-virtual {p2, p1, p0}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v11, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->maybeAdjustReservations(I)V

    :goto_1
    if-ge v8, v3, :cond_4

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {p0, p3}, Lcom/android/server/job/controllers/StateController;->unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter$JobSchedulerPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;

    iget-object v2, p3, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    iget v3, p3, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;->addRunningJobs(Landroid/app/job/JobInfo;I)V

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object p2, v11, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    iget-object p2, v11, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "# stated jobs for "

    const-string v0, " went negative."

    const-string v2, "JobScheduler.Concurrency"

    invoke-static {p1, p2, v0, v2}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, v11, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :goto_2
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result p1

    invoke-static {v9, v7, p1}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustRunningCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, v6, v5, v9}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p3}, Lcom/android/server/job/JobSchedulerService;->resetPendingJobReasonsCache(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_4
    iget-object p0, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {p0, p3}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {p0, p3}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :goto_3
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    throw p0
.end method

.method public final stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    iget-object v3, v2, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-ne v3, p1, :cond_1

    invoke-virtual {v2, p2, p3, p4}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string p2, "JobScheduler.Concurrency"

    const-string p3, "Couldn\'t find running job on a context"

    invoke-static {p2, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    if-eqz p1, :cond_3

    sget-object p0, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter$JobSchedulerPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;

    iget-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;->removeRunningJobs(Landroid/app/job/JobInfo;I)V

    :cond_3
    return v1
.end method

.method public final updateConfigLocked()V
    .locals 8

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "jobscheduler"

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    const-string/jumbo v1, "concurrency_limit"

    sget v2, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    invoke-virtual {v0, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x40

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    const-string/jumbo v1, "concurrency_screen_off_adjustment_delay_ms"

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    sget-object v1, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v3, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iget v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    invoke-virtual {v3, v0, v4}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    iget-object v3, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iget v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    invoke-virtual {v3, v0, v4}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    iget-object v3, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iget v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    invoke-virtual {v3, v0, v4}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    iget-object v1, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    invoke-virtual {v1, v0, v3}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    sget-object v1, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v3, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iget v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    invoke-virtual {v3, v0, v4}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    iget-object v3, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iget v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    invoke-virtual {v3, v0, v4}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    iget-object v3, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iget v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    invoke-virtual {v3, v0, v4}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    iget-object v1, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    invoke-virtual {v1, v0, v3}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    const-string/jumbo v3, "concurrency_pkg_concurrency_limit_ej"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    const-string/jumbo v3, "concurrency_pkg_concurrency_limit_regular"

    sget v4, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_PKG_CONCURRENCY_LIMIT_REGULAR:I

    invoke-virtual {v0, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:I

    const-string/jumbo v1, "concurrency_enable_max_wait_time_bypass"

    invoke-virtual {v0, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitTimeBypassEnabled:Z

    const-string/jumbo v1, "concurrency_max_wait_ui_ms"

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitUIMs:J

    const-string/jumbo v1, "concurrency_max_wait_ej_ms"

    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitEjMs:J

    const-string/jumbo v3, "concurrency_max_wait_regular_ms"

    const-wide/32 v4, 0x1b7740

    invoke-virtual {v0, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitRegularMs:J

    return-void
.end method

.method public final updateCounterConfigLocked()V
    .locals 7

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mNextSystemStateRefreshTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v2}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mNextSystemStateRefreshTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getMemoryTrimLevel()I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    iget-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    :goto_0
    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    if-eq v2, v0, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    iget-object v1, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    goto :goto_1

    :cond_3
    iget-object v1, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    goto :goto_1

    :cond_4
    iget-object v1, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    :goto_1
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    iput v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigMaxTotal:I

    move v2, v0

    :goto_2
    const/16 v3, 0x7f

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigNumReservedSlots:Landroid/util/SparseIntArray;

    iget-object v4, v1, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigAbsoluteMaxSlots:Landroid/util/SparseIntArray;

    iget-object v4, v1, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    iget v5, v1, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    shl-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigMaxTotal:I

    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_3
    if-ltz v1, :cond_6

    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigNumReservedSlots:Landroid/util/SparseIntArray;

    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method

.method public final updateNonRunningPrioritiesLocked(Lcom/android/server/job/PendingJobQueue;Z)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    iput v2, v1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-eqz p2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->adjustPendingJobCount(IZ)I

    goto :goto_0

    :cond_2
    return-void
.end method
