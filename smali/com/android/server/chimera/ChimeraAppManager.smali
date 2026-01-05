.class public final Lcom/android/server/chimera/ChimeraAppManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final CEM_PKG_PROTECTED_INTERVAL_DEFAULT:Ljava/lang/String;


# instance fields
.field public final mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

.field public final mCemPkgProtectedIntervalMs:I

.field public final mForegroundG3ProcList:Ljava/util/Set;

.field public final mGcApps:Ljava/util/Map;

.field public final mReclaimApps:Ljava/util/Map;

.field public final mStandbyInfoMap:Ljava/util/Map;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xea60

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/ChimeraAppManager;->CEM_PKG_PROTECTED_INTERVAL_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mReclaimApps:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mGcApps:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    new-instance v0, Lcom/android/server/chimera/ChimeraAppClassifier;

    invoke-direct {v0, p1}, Lcom/android/server/chimera/ChimeraAppClassifier;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    iput-object p1, p0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "persist.sys.chimera_cem_pkg_protected_interval_ms"

    sget-object v1, Lcom/android/server/chimera/ChimeraAppManager;->CEM_PKG_PROTECTED_INTERVAL_DEFAULT:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mCemPkgProtectedIntervalMs:I

    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/usage/UsageStatsManager;->getAppStandbyBuckets()Ljava/util/Map;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getAppsToKill(Lcom/android/server/chimera/SkipReasonLogger;ILcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;Ljava/util/List;)Ljava/util/List;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v9, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v10, v9, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v10}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "getAppsToKill() - protectedLruCount: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v12, p2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, "ChimeraAppManager"

    invoke-static {v13, v11}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x2

    invoke-virtual {v9}, Lcom/android/server/chimera/SystemRepository;->getAccessibilityServicePackages()Ljava/util/List;

    move-result-object v3

    sget-object v17, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    const/16 v17, 0x4

    const-string/jumbo v7, "persist.sys.bub_onoff"

    const-string/jumbo v4, "on"

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {}, Lcom/android/server/chimera/SystemRepository;->getCurrentHomePackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v19, 0x8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v20, -0x1

    iget-object v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mReclaimApps:Ljava/util/Map;

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    iget-object v5, v0, Lcom/android/server/chimera/ChimeraAppManager;->mGcApps:Ljava/util/Map;

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move/from16 v21, v20

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    const/16 v23, 0x1

    sget-object v8, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PERSISTENT_OR_PROTECTED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    move/from16 v24, v4

    move-object/from16 p4, v5

    const/16 v25, 0x0

    const/high16 v26, 0x20000

    const-string v4, "/"

    if-eqz v22, :cond_16

    invoke-interface/range {p4 .. p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    move/from16 v22, v10

    add-int/lit8 v10, v21, 0x1

    move/from16 v21, v12

    iget v12, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v29, v6

    if-eqz v12, :cond_0

    array-length v6, v12

    if-gtz v6, :cond_1

    :cond_0
    move-object/from16 v31, v7

    move-object/from16 v32, v9

    move/from16 p2, v10

    move-object/from16 v30, v11

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    move-object/from16 v35, v15

    move-object v15, v3

    goto/16 :goto_a

    :cond_1
    aget-object v6, v12, v25

    iget v12, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    move-object/from16 v30, v15

    const/16 v15, 0x11

    if-ne v12, v15, :cond_2

    iget v8, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    sget-object v12, Lcom/android/server/chimera/SkipReasonLogger$Reason;->CACC:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v8, v12}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    :goto_1
    move-object v15, v3

    move-object/from16 v33, v4

    :goto_2
    move-object/from16 v31, v7

    move-object/from16 v32, v9

    move v7, v10

    :goto_3
    move/from16 v3, v25

    goto/16 :goto_5

    :cond_2
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    :goto_4
    goto :goto_1

    :cond_3
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_4

    :cond_4
    sget-object v12, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_QUOTA:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    if-eq v2, v12, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v31

    move-object v15, v3

    move-object/from16 v33, v4

    iget-wide v3, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    sub-long v31, v31, v3

    const-wide/16 v3, 0x1388

    cmp-long v3, v31, v3

    if-gez v3, :cond_6

    goto :goto_2

    :cond_5
    move-object v15, v3

    move-object/from16 v33, v4

    :cond_6
    iget v3, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    iget v4, v0, Lcom/android/server/chimera/ChimeraAppManager;->mCemPkgProtectedIntervalMs:I

    move-object/from16 v31, v7

    const/16 v7, 0x13

    if-ne v3, v7, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v34

    move-object v3, v9

    move v7, v10

    iget-wide v9, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    sub-long v34, v34, v9

    int-to-long v9, v4

    cmp-long v9, v34, v9

    if-gez v9, :cond_8

    iget v4, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    sget-object v8, Lcom/android/server/chimera/SkipReasonLogger$Reason;->CACHED_EMPTY:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v4, v8}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    move-object/from16 v32, v3

    goto :goto_3

    :cond_7
    move-object v3, v9

    move v7, v10

    :cond_8
    iget v9, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    const/16 v10, 0xa

    if-ne v9, v10, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    move-wide/from16 v34, v9

    iget-wide v9, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    sub-long v9, v34, v9

    move-object/from16 v32, v3

    int-to-long v3, v4

    cmp-long v3, v9, v3

    if-gez v3, :cond_a

    iget v3, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    sget-object v4, Lcom/android/server/chimera/SkipReasonLogger$Reason;->SERVICE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    goto :goto_3

    :cond_9
    move-object/from16 v32, v3

    :cond_a
    iget v3, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    move/from16 v4, v23

    if-gt v3, v4, :cond_b

    iget v3, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-virtual {v1, v3, v8}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    goto :goto_3

    :cond_b
    if-eq v2, v12, :cond_c

    if-nez v24, :cond_c

    iget-boolean v3, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->isProtectedInPicked:Z

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getAppsToKill() - Protected by Picked "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    sget-object v4, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PICKED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v14, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/16 v23, 0x1

    xor-int/lit8 v3, v3, 0x1

    :goto_5
    if-nez v3, :cond_d

    invoke-virtual {v14, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move/from16 p2, v7

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    move-object/from16 v35, v30

    move-object/from16 v30, v11

    goto/16 :goto_a

    :cond_d
    iget v3, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-gtz v3, :cond_e

    iget v3, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_f

    :cond_e
    if-lez v21, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getAppsToKill() - Protected by LRU : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v12, v21, -0x1

    invoke-virtual {v14, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v3, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    sget-object v4, Lcom/android/server/chimera/SkipReasonLogger$Reason;->LRU:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    move-object/from16 v5, p4

    move/from16 v21, v7

    move-object v3, v15

    move/from16 v10, v22

    move/from16 v4, v24

    move-object/from16 v6, v29

    move-object/from16 v15, v30

    move-object/from16 v7, v31

    move-object/from16 v9, v32

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/chimera/ChimeraAppInfo;

    if-nez v3, :cond_11

    new-instance v3, Lcom/android/server/chimera/ChimeraAppInfo;

    iget v4, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move/from16 v8, v25

    iput v8, v3, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    move/from16 v9, v20

    iput v9, v3, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    iput v9, v3, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    iput v9, v3, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    const-wide/16 v9, 0x0

    iput-wide v9, v3, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    iput-wide v9, v3, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    const/4 v9, -0x1

    iput v9, v3, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v3, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    iput-object v6, v3, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    iput v4, v3, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    iput v7, v3, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    iget-object v8, v0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_10

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    move-object/from16 v12, v32

    goto :goto_6

    :cond_10
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    move-object/from16 v12, v32

    iget-object v8, v12, Lcom/android/server/chimera/SystemRepository;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v8, v4, v6, v9, v10}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(ILjava/lang/String;J)I

    move-result v4

    iput v4, v3, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    iget-object v8, v0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    iget v4, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v10, v12, Lcom/android/server/chimera/SystemRepository;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v10, v4, v6, v8, v9}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(ILjava/lang/String;J)I

    move-result v4

    iput v4, v3, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    invoke-virtual {v11, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v33

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v9, v30

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    move v4, v7

    goto :goto_8

    :cond_11
    move-object/from16 v9, v30

    move-object/from16 v12, v32

    goto :goto_7

    :goto_8
    iget-wide v6, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    const-wide/16 v27, 0x0

    cmp-long v8, v6, v27

    if-gtz v8, :cond_13

    if-eqz v22, :cond_12

    iget v6, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    const/4 v7, 0x0

    invoke-static {v6, v7, v7}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v6

    goto :goto_9

    :cond_12
    const/4 v7, 0x0

    iget v6, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v6, v7}, Landroid/os/Debug;->getRss(I[J)J

    move-result-wide v6

    :cond_13
    :goto_9
    iget v8, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    iget-object v10, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v30, v11

    move-object/from16 v32, v12

    iget-wide v11, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->avgPss:J

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    iget-wide v13, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastSwapPss:J

    move/from16 p2, v4

    iget v4, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->importance:I

    move-object/from16 v35, v9

    new-instance v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput v8, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    iput-object v10, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    iput-wide v6, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    iput-wide v11, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->avgPss:J

    iput v4, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->importance:I

    iget-object v4, v3, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v8, v3, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    add-long/2addr v8, v6

    iput-wide v8, v3, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    iget-wide v6, v3, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    add-long/2addr v6, v13

    iput-wide v6, v3, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    iget v4, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->flags:I

    and-int/lit8 v5, v4, 0x8

    if-lez v5, :cond_14

    iget v5, v3, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    or-int v5, v5, v26

    iput v5, v3, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    :cond_14
    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_15

    iget v4, v3, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    const/high16 v5, 0x1000000

    or-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    :cond_15
    :goto_a
    move-object/from16 v5, p4

    move-object v3, v15

    move/from16 v12, v21

    move/from16 v10, v22

    move/from16 v4, v24

    move-object/from16 v6, v29

    move-object/from16 v11, v30

    move-object/from16 v7, v31

    move-object/from16 v9, v32

    move-object/from16 v13, v33

    move-object/from16 v14, v34

    move-object/from16 v15, v35

    const/16 v20, -0x1

    move/from16 v21, p2

    goto/16 :goto_0

    :cond_16
    move-object/from16 v29, v6

    move-object/from16 v30, v11

    move-object/from16 v35, v15

    const/4 v7, 0x0

    move-object v6, v4

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_46

    iget-object v3, v0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    iput-object v2, v3, Lcom/android/server/chimera/ChimeraAppClassifier;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    iget-object v2, v3, Lcom/android/server/chimera/ChimeraAppClassifier;->mLongLiveApps:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, v3, Lcom/android/server/chimera/ChimeraAppClassifier;->mBluetoothUsingUidList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v4, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    new-instance v4, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3}, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/chimera/ChimeraAppClassifier;)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v2, v3, Lcom/android/server/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    iget-object v2, v3, Lcom/android/server/chimera/ChimeraAppClassifier;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v4, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v4, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {v4}, Lcom/android/server/am/FreecessController;->updateRunningLocationPackages()V

    sget-object v4, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    invoke-virtual {v4}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string/jumbo v9, "NumberFormatException!"

    if-eqz v7, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1a

    const/16 v25, 0x0

    aget-object v10, v7, v25

    const/16 v23, 0x1

    :try_start_0
    aget-object v11, v7, v23

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aget-object v7, v7, v16

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v9, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v12, v16

    const/4 v9, 0x0

    :goto_c
    const/16 v13, 0x22

    if-ge v12, v13, :cond_19

    move/from16 v13, v19

    if-ne v12, v13, :cond_18

    :cond_17
    const/16 v23, 0x1

    goto :goto_d

    :cond_18
    sget-object v13, Lcom/android/server/am/mars/filter/FilterFactory$FilterFactoryHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterFactory;

    invoke-virtual {v13, v12}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v13

    if-eqz v13, :cond_17

    const/16 v14, 0x10

    invoke-interface {v13, v11, v7, v14, v10}, Lcom/android/server/am/mars/filter/IFilter;->filter(IIILjava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_17

    const/16 v23, 0x1

    add-int/lit8 v13, v12, -0x1

    shl-int v13, v23, v13

    or-int/2addr v9, v13

    :goto_d
    add-int/lit8 v12, v12, 0x1

    const/16 v19, 0x8

    goto :goto_c

    :cond_19
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :catch_0
    const-string/jumbo v7, "MARsPolicyManager"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :goto_e
    const/16 v19, 0x8

    goto :goto_b

    :cond_1b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-string v7, "ChimeraAppClassifier"

    if-lez v5, :cond_1d

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v10, 0x0

    :goto_f
    if-ge v10, v5, :cond_1d

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    const/16 v23, 0x1

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1c

    const/16 v25, 0x0

    :try_start_1
    aget-object v12, v11, v25

    aget-object v13, v11, v23

    aget-object v11, v11, v16
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v14, v3, Lcom/android/server/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    invoke-static {v12, v6, v13}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    check-cast v14, Landroid/util/ArrayMap;

    invoke-virtual {v14, v12, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :catch_1
    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_1c
    const/16 v25, 0x0

    goto :goto_f

    :cond_1d
    const/16 v25, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_47

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/chimera/ChimeraAppInfo;

    iget-wide v10, v9, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    iput-wide v10, v9, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    iget v10, v9, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    iget v12, v9, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    invoke-virtual {v9}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    iget-object v13, v9, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    if-eqz v13, :cond_2b

    iget-object v14, v3, Lcom/android/server/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    check-cast v14, Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-lez v14, :cond_2b

    iget-object v14, v3, Lcom/android/server/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    invoke-static {v11, v13, v6}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    check-cast v14, Landroid/util/ArrayMap;

    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-eqz v14, :cond_1e

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_11

    :cond_1e
    move/from16 v14, v25

    :goto_11
    and-int/lit16 v15, v14, 0x400

    if-lez v15, :cond_1f

    const/16 v15, 0x10

    goto :goto_12

    :cond_1f
    move/from16 v15, v25

    :goto_12
    move-object/from16 p2, v5

    and-int/lit16 v5, v14, 0x200

    if-lez v5, :cond_20

    or-int/lit16 v15, v15, 0x4000

    :cond_20
    const/16 v18, 0x10

    and-int/lit8 v5, v14, 0x10

    if-lez v5, :cond_21

    or-int v15, v15, v26

    :cond_21
    const v5, 0x30120

    and-int/2addr v5, v14

    if-lez v5, :cond_22

    const/high16 v5, 0x40000

    or-int/2addr v15, v5

    :cond_22
    and-int/lit16 v5, v14, 0x1000

    if-lez v5, :cond_23

    const/high16 v5, 0x800000

    or-int/2addr v15, v5

    :cond_23
    and-int/lit8 v5, v14, 0x40

    if-lez v5, :cond_24

    or-int/lit16 v15, v15, 0x80

    :cond_24
    and-int/lit16 v5, v14, 0x80

    if-lez v5, :cond_25

    or-int/lit8 v15, v15, 0x20

    :cond_25
    and-int/lit16 v5, v14, 0x4000

    if-lez v5, :cond_26

    or-int/lit8 v15, v15, 0x40

    :cond_26
    const/16 v19, 0x8

    and-int/lit8 v5, v14, 0x8

    if-lez v5, :cond_27

    or-int/lit16 v15, v15, 0x800

    :cond_27
    and-int/lit8 v5, v14, 0x4

    if-lez v5, :cond_28

    or-int/lit8 v15, v15, 0x8

    :cond_28
    and-int/lit16 v5, v14, 0x2000

    if-lez v5, :cond_29

    or-int/lit8 v15, v15, 0x2

    :cond_29
    if-eqz v14, :cond_2a

    if-nez v15, :cond_2c

    :cond_2a
    const/16 v23, 0x1

    or-int/lit8 v5, v15, 0x1

    move v15, v5

    goto :goto_13

    :cond_2b
    move-object/from16 p2, v5

    const/16 v18, 0x10

    const/16 v19, 0x8

    move/from16 v15, v25

    :cond_2c
    :goto_13
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v5, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPolicyManager;->getMARsEnabled()Z

    move-result v14

    if-eqz v14, :cond_2d

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v14

    if-eqz v14, :cond_2d

    invoke-virtual {v5, v11, v13}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    or-int/lit16 v15, v15, 0x1000

    :cond_2d
    iget-object v5, v3, Lcom/android/server/chimera/ChimeraAppClassifier;->mLongLiveApps:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda0;

    invoke-direct {v14, v2}, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v11, v14}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_2f

    invoke-interface {v5, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const-string/jumbo v5, "isLongLiveApp: "

    invoke-static {v5, v13, v7}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    :goto_14
    const/4 v5, 0x1

    goto :goto_15

    :cond_2f
    sget-boolean v5, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    sget-object v5, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    iget-boolean v5, v5, Lcom/android/server/am/DynamicHiddenApp;->HomeHubState:Z

    if-eqz v5, :cond_30

    sget-object v5, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_WHILE_DOCKING:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    goto :goto_14

    :cond_30
    if-eqz v13, :cond_31

    const-string/jumbo v5, "com.android.cts."

    invoke-virtual {v13, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    goto :goto_14

    :cond_31
    iget-object v5, v3, Lcom/android/server/chimera/ChimeraAppClassifier;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    sget-object v11, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_PMM_CRITICAL:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    if-ne v5, v11, :cond_32

    sget-object v5, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_FOR_ALL_TRIGGERS:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_15

    :cond_32
    sget-object v5, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_FOR_ALL_TRIGGERS:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    sget-object v5, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_EXCEPT_FOR_PMM_TRIGGER:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    goto :goto_14

    :cond_33
    move/from16 v5, v25

    :goto_15
    if-eqz v5, :cond_34

    const/high16 v5, 0x100000

    or-int/2addr v15, v5

    :cond_34
    iget-object v5, v3, Lcom/android/server/chimera/ChimeraAppClassifier;->mBluetoothUsingUidList:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    const/high16 v5, 0x200000

    or-int/2addr v15, v5

    :cond_35
    sget-object v5, Lcom/android/server/chimera/ChimeraAppClassifier;->mProtectOnBubDisabledList:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    const/high16 v5, 0x400000

    or-int/2addr v15, v5

    :cond_36
    or-int v5, v12, v15

    iput v5, v9, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    const v11, 0xb55030

    const/16 v12, 0xec0

    const v13, 0x2800c

    const/4 v14, 0x3

    filled-new-array {v11, v12, v13, v14}, [I

    move-result-object v11

    move/from16 v13, v17

    move/from16 v12, v25

    :goto_16
    if-ge v12, v13, :cond_38

    aget v15, v11, v12

    and-int/2addr v15, v5

    if-lez v15, :cond_37

    rsub-int/lit8 v5, v12, 0x4

    goto :goto_17

    :cond_37
    const/16 v23, 0x1

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x4

    goto :goto_16

    :cond_38
    move/from16 v5, v25

    :goto_17
    iput v5, v9, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    if-ne v5, v14, :cond_3b

    sget-object v5, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v5, v10}, Lcom/android/server/am/MARsPolicyManager;->getForegroundServiceStartTime(I)J

    move-result-wide v10

    const-wide/16 v27, 0x0

    cmp-long v5, v10, v27

    if-eqz v5, :cond_39

    const/4 v5, 0x1

    goto :goto_18

    :cond_39
    move/from16 v5, v25

    :goto_18
    if-eqz v5, :cond_3b

    iget-object v5, v9, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    move/from16 v10, v25

    :goto_19
    if-ge v10, v9, :cond_3a

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    const/16 v23, 0x1

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget v12, v11, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v1, v12, v8}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    iget-object v12, v0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    iget v11, v11, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    check-cast v12, Ljava/util/HashSet;

    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_3a
    move-object/from16 v5, p2

    const/16 v17, 0x4

    goto/16 :goto_10

    :cond_3b
    iget v5, v9, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    if-ltz v5, :cond_3d

    iget v5, v9, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    if-ltz v5, :cond_3d

    iget-wide v10, v9, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    const-wide/16 v27, 0x0

    cmp-long v5, v10, v27

    if-lez v5, :cond_3e

    iget v5, v9, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    if-gez v5, :cond_3c

    goto :goto_1a

    :cond_3c
    move/from16 v5, v25

    goto :goto_1b

    :cond_3d
    const-wide/16 v27, 0x0

    :cond_3e
    :goto_1a
    const/4 v5, 0x1

    :goto_1b
    if-nez v5, :cond_44

    iget v5, v9, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    const/4 v13, 0x4

    if-ne v5, v13, :cond_3f

    const/4 v5, 0x1

    goto :goto_1c

    :cond_3f
    move/from16 v5, v25

    :goto_1c
    if-eqz v5, :cond_40

    goto :goto_1f

    :cond_40
    iget-object v5, v9, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    move/from16 v11, v25

    :cond_41
    if-ge v11, v10, :cond_42

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    const/16 v23, 0x1

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget-object v14, v0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    iget v15, v12, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    check-cast v14, Ljava/util/HashSet;

    invoke-virtual {v14, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_41

    iget v5, v12, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v1, v5, v8}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    const/4 v5, 0x1

    goto :goto_1d

    :cond_42
    move/from16 v5, v25

    :goto_1d
    if-nez v5, :cond_43

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_43
    :goto_1e
    move-object/from16 v5, p2

    move/from16 v17, v13

    goto/16 :goto_10

    :cond_44
    const/4 v13, 0x4

    :goto_1f
    iget-object v5, v9, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    move/from16 v10, v25

    :goto_20
    if-ge v10, v9, :cond_45

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    const/16 v23, 0x1

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget v11, v11, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v1, v11, v8}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    goto :goto_20

    :cond_45
    const/16 v23, 0x1

    goto :goto_1e

    :cond_46
    move-object v4, v7

    :cond_47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v5, v29

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_48

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    move-object/from16 v29, v5

    goto :goto_21

    :cond_49
    iget-object v0, v0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object v4
.end method

.method public final logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V
    .locals 2

    const-string v0, " "

    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p1, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "ChimeraAppManager"

    invoke-static {p0, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
