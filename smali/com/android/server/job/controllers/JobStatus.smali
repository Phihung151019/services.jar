.class public final Lcom/android/server/job/controllers/JobStatus;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final BASIC_PII_FILTERS:Landroid/util/ArrayMap;

.field public static final CONSTRAINT_STORAGE_NOT_LOW:I = 0x8

.field public static final DEBUG:Z

.field public static final MEDIA_URIS_FOR_STANDBY_EXEMPTION:[Landroid/net/Uri;

.field public static sMessageDigest:Ljava/security/MessageDigest;

.field public static final sNamespaceHashCache:Landroid/util/ArrayMap;


# instance fields
.field public appHasDozeExemption:Z

.field public final batteryName:Ljava/lang/String;

.field public final callingUid:I

.field public changedAuthorities:Landroid/util/ArraySet;

.field public changedUris:Landroid/util/ArraySet;

.field public contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

.field public final earliestRunTimeElapsedMillis:J

.field public enqueueTime:J

.field public executingWork:Ljava/util/ArrayList;

.field public final job:Landroid/app/job/JobInfo;

.field public lastEvaluatedBias:I

.field public final latestRunTimeElapsedMillis:J

.field public final mCanApplyTransportAffinities:Z

.field public mConstraintChangeHistoryIndex:I

.field public final mConstraintStatusHistory:[I

.field public final mConstraintUpdatedTimesElapsed:[J

.field public mCumulativeExecutionTimeMs:J

.field public mDynamicConstraints:I

.field public mExpeditedQuotaApproved:Z

.field public mFilteredDebugTags:[Ljava/lang/String;

.field public mFilteredTraceTag:Ljava/lang/String;

.field public mFirstForceBatchedTimeElapsed:J

.field public final mHasExemptedMediaUrisOnly:Z

.field public mHasMediaBackupExemption:Z

.field public mInternalFlags:I

.field public mIsAbandoned:Z

.field public mIsDowngradedDueToBuggyApp:Z

.field public mIsForceExecuteJob:Z

.field public mIsHeavyJob:Z

.field public final mIsProxyJob:Z

.field public mIsUserBgRestricted:Z

.field public mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

.field public final mLastFailedRunTime:J

.field public final mLastSuccessfulRunTime:J

.field public mLoggedBucketMismatch:Z

.field public final mLoggingJobId:J

.field public mMinimumNetworkChunkBytes:J

.field public final mNamespace:Ljava/lang/String;

.field public final mNamespaceHash:Ljava/lang/String;

.field public final mNumAbandonedFailures:I

.field public mNumAppliedFlexibleConstraints:I

.field public mNumDroppedFlexibleConstraints:I

.field public final mNumSystemStops:I

.field public mOriginalLatestRunTimeElapsedMillis:J

.field public final mPendingJobReasonsHistory:Ljava/util/List;

.field public mPersistedUtcTimes:Landroid/util/Pair;

.field public mReadyDeadlineSatisfied:Z

.field public mReadyDynamicSatisfied:Z

.field public mReadyNotDozing:Z

.field public mReadyNotRestrictedInBg:Z

.field public mReadyWithinQuota:Z

.field public mReasonReadyToUnready:I

.field public final mRequiredConstraintsOfInterest:I

.field public mSatisfiedConstraintsOfInterest:I

.field public mSystemTraceTag:Ljava/lang/String;

.field public mTotalNetworkDownloadBytes:J

.field public mTotalNetworkUploadBytes:J

.field public mTransportAffinitiesSatisfied:Z

.field public mUserVisibleJobSummary:Landroid/app/job/UserVisibleJobSummary;

.field public mWakelockTag:Ljava/lang/String;

.field public madeActive:J

.field public madePending:J

.field public network:Landroid/net/Network;

.field public nextPendingWorkId:I

.field public final numFailures:I

.field public overrideState:I

.field public pendingWork:Ljava/util/ArrayList;

.field public prepared:Z

.field public final requiredConstraints:I

.field public satisfiedConstraints:I

.field public serviceProcessName:Ljava/lang/String;

.field public final sourcePackageName:Ljava/lang/String;

.field public final sourceTag:Ljava/lang/String;

.field public final sourceUid:I

.field public final sourceUserId:I

.field public standbyBucket:I

.field public startedAsExpeditedJob:Z

.field public startedAsUserInitiatedJob:Z

.field public startedWithForegroundFlag:Z

.field public startedWithImmediacyPrivilege:Z

.field public trackingControllers:I

.field public uidActive:Z

.field public unpreparedPoint:Ljava/lang/Throwable;

.field public uriPerms:Lcom/android/server/job/GrantedUriPermissions;

.field public whenStandbyDeferred:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/job/controllers/JobStatus;->sNamespaceHashCache:Landroid/util/ArrayMap;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/job/controllers/JobStatus;->MEDIA_URIS_FOR_STANDBY_EXEMPTION:[Landroid/net/Uri;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/job/controllers/JobStatus;->BASIC_PII_FILTERS:Landroid/util/ArrayMap;

    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const-string/jumbo v2, "[EMAIL]"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    const-string/jumbo v2, "[PHONE]"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IIIJJJJJII)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p8

    move/from16 v8, p10

    move-wide/from16 v9, p11

    move-wide/from16 v11, p13

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v13, 0x0

    iput-object v13, v1, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    const/4 v14, 0x0

    iput v14, v1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    iput v14, v1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    iput v14, v1, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    iput-boolean v14, v1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    iput-boolean v14, v1, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    iput-boolean v14, v1, Lcom/android/server/job/controllers/JobStatus;->startedWithForegroundFlag:Z

    iput-boolean v14, v1, Lcom/android/server/job/controllers/JobStatus;->startedWithImmediacyPrivilege:Z

    const/4 v15, 0x1

    iput v15, v1, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    iput v14, v1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    iput v14, v1, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    const/16 v0, 0xa

    move/from16 v16, v15

    new-array v15, v0, [J

    iput-object v15, v1, Lcom/android/server/job/controllers/JobStatus;->mConstraintUpdatedTimesElapsed:[J

    new-array v0, v0, [I

    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->mConstraintStatusHistory:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->mPendingJobReasonsHistory:Ljava/util/List;

    const-wide/16 v13, -0x1

    iput-wide v13, v1, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    iput-wide v13, v1, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    iput-wide v13, v1, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    const/4 v13, 0x0

    iput v13, v1, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    iput v2, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    iput v5, v1, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    iput-object v6, v1, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    if-nez v6, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v6

    goto/16 :goto_5

    :cond_1
    sget-object v13, Lcom/android/server/job/controllers/JobStatus;->sNamespaceHashCache:Landroid/util/ArrayMap;

    monitor-enter v13

    :try_start_0
    invoke-virtual {v13, v6}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {v13, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v13

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :cond_2
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/android/server/job/controllers/JobStatus;->sMessageDigest:Ljava/security/MessageDigest;

    if-nez v0, :cond_3

    const-string/jumbo v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/controllers/JobStatus;->sMessageDigest:Ljava/security/MessageDigest;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_0
    sget-object v0, Lcom/android/server/job/controllers/JobStatus;->sMessageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    array-length v14, v0

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v14, v0

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_4

    aget-byte v17, v0, v15

    move-object/from16 v18, v0

    const-string v0, "%02X"

    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v17

    move/from16 v19, v14

    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v0, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v18

    move/from16 v14, v19

    goto :goto_1

    :cond_4
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    const-string v13, "JobScheduler.JobStatus"

    const-string v14, "Couldn\'t hash input"

    invoke-static {v13, v14, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_5

    const-string/jumbo v0, "failed_namespace_hash"

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget-object v14, Lcom/android/server/job/controllers/JobStatus;->sNamespaceHashCache:Landroid/util/ArrayMap;

    monitor-enter v14

    :try_start_2
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v13

    const/16 v15, 0x80

    if-lt v13, v15, :cond_6

    new-instance v13, Ljava/util/Random;

    invoke-direct {v13}, Ljava/util/Random;-><init>()V

    invoke-virtual {v13, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_12

    :cond_6
    :goto_4
    invoke-virtual {v14, v6, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_5
    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->mNamespaceHash:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    if-nez v6, :cond_7

    int-to-long v13, v0

    goto :goto_6

    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v13

    int-to-long v13, v13

    const/16 v15, 0x1f

    shl-long/2addr v13, v15

    move-wide/from16 v17, v13

    int-to-long v13, v0

    or-long v13, v17, v13

    :goto_6
    iput-wide v13, v1, Lcom/android/server/job/controllers/JobStatus;->mLoggingJobId:J

    const-wide/16 v13, 0x0

    const/4 v0, -0x1

    if-eq v4, v0, :cond_8

    if-eqz v3, :cond_8

    :try_start_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v15

    invoke-interface {v15, v3, v13, v14, v4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v15
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    :cond_8
    move v15, v0

    :goto_7
    if-ne v15, v0, :cond_9

    iput v2, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    const/4 v15, 0x0

    iput-object v15, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    goto :goto_8

    :cond_9
    iput v15, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iput v4, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iput-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    move-object/from16 v2, p7

    iput-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/app/job/JobInfo$Builder;-><init>(Landroid/app/job/JobInfo;)V

    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/net/NetworkRequest$Builder;-><init>(Landroid/net/NetworkRequest;)V

    new-instance v2, Landroid/util/Range;

    iget v4, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v15, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v4, v15}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/net/NetworkRequest$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/app/job/JobInfo$Builder;->build(ZZZZ)Landroid/app/job/JobInfo;

    move-result-object v0

    goto :goto_9

    :cond_a
    move-object/from16 v2, p1

    move-object v0, v2

    :goto_9
    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_b

    const-string v3, "@"

    const-string v4, "@"

    invoke-static {v2, v3, v6, v4}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    if-eqz v3, :cond_c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_c
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/job/controllers/JobStatus;->mIsProxyJob:Z

    iput-wide v9, v1, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    iput-wide v11, v1, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    iput-wide v11, v1, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    iput v7, v1, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    move/from16 v2, p9

    iput v2, v1, Lcom/android/server/job/controllers/JobStatus;->mNumAbandonedFailures:I

    iput v8, v1, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getConstraintFlags()I

    move-result v2

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v3

    if-eqz v3, :cond_d

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    :cond_d
    cmp-long v3, v9, v13

    if-eqz v3, :cond_e

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    :cond_e
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v11, v3

    if-eqz v3, :cond_f

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v2, v3

    :cond_f
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v3

    if-eqz v3, :cond_10

    const/high16 v3, 0x800000

    or-int/2addr v2, v3

    :cond_10
    iget v3, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    sget-object v4, Lcom/android/server/job/controllers/UidRestrictController;->sIgnoreUids:Landroid/util/ArraySet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    :cond_11
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v3

    if-eqz v3, :cond_12

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v3

    array-length v4, v3

    const/4 v13, 0x0

    :goto_b
    if-ge v13, v4, :cond_14

    aget-object v6, v3, v13

    sget-object v9, Lcom/android/server/job/controllers/JobStatus;->MEDIA_URIS_FOR_STANDBY_EXEMPTION:[Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    :cond_12
    const/4 v13, 0x0

    goto :goto_c

    :cond_13
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_14
    move/from16 v13, v16

    :goto_c
    iput-boolean v13, v1, Lcom/android/server/job/controllers/JobStatus;->mHasExemptedMediaUrisOnly:Z

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkRequest;->getTransportTypes()[I

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_15

    move/from16 v13, v16

    goto :goto_d

    :cond_15
    const/4 v13, 0x0

    :goto_d
    iput-boolean v13, v1, Lcom/android/server/job/controllers/JobStatus;->mCanApplyTransportAffinities:Z

    not-int v3, v2

    and-int/lit8 v3, v3, 0x7

    if-nez v3, :cond_17

    if-eqz v13, :cond_16

    goto :goto_e

    :cond_16
    const/4 v13, 0x0

    goto :goto_f

    :cond_17
    :goto_e
    move/from16 v13, v16

    :goto_f
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v0

    if-nez v0, :cond_18

    add-int v0, v7, v8

    move/from16 v3, v16

    if-eq v0, v3, :cond_18

    if-eqz v13, :cond_18

    const/high16 v0, 0x200000

    or-int/2addr v2, v0

    :cond_18
    iput v2, v1, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const v0, -0x6b4ffff1

    and-int/2addr v0, v2

    iput v0, v1, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    move/from16 v2, p22

    invoke-virtual {v1, v2}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    const/4 v0, 0x5

    if-ne v5, v0, :cond_19

    const v0, 0x10000007

    invoke-virtual {v1, v0}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    const/4 v13, 0x0

    :goto_10
    move-wide/from16 v2, p19

    goto :goto_11

    :cond_19
    const/4 v13, 0x0

    iput-boolean v13, v1, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    goto :goto_10

    :goto_11
    iput-wide v2, v1, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    move-wide/from16 v2, p15

    iput-wide v2, v1, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    move-wide/from16 v2, p17

    iput-wide v2, v1, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    move/from16 v2, p21

    iput v2, v1, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->updateMediaBackupExemptionStatus()Z

    iput-boolean v13, v1, Lcom/android/server/job/controllers/JobStatus;->mIsAbandoned:Z

    iput-boolean v13, v1, Lcom/android/server/job/controllers/JobStatus;->mIsForceExecuteJob:Z

    iput-boolean v13, v1, Lcom/android/server/job/controllers/JobStatus;->mIsHeavyJob:Z

    return-void

    :goto_12
    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :goto_13
    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;JJIIIJJJ)V
    .locals 23

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    iget v2, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    iget-object v3, v0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    iget v8, v0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v15, p9

    move-wide/from16 v17, p11

    move-wide/from16 v19, p13

    move/from16 v22, v0

    move/from16 v21, v8

    move-object/from16 v0, p0

    move/from16 v8, p6

    invoke-direct/range {v0 .. v22}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IIIJJJJJII)V

    return-void
.end method

.method public static applyBasicPiiFilters(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/android/server/job/controllers/JobStatus;->BASIC_PII_FILTERS:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    sget-object v1, Lcom/android/server/job/controllers/JobStatus;->BASIC_PII_FILTERS:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static bucketName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "Unknown: "

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "EXEMPTED"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "RESTRICTED"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "NEVER"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "RARE"

    return-object p0

    :pswitch_4
    const-string p0, "FREQUENT"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "WORKING_SET"

    return-object p0

    :pswitch_6
    const-string p0, "ACTIVE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/job/controllers/JobStatus;
    .locals 29

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v2

    const-wide v4, 0x757b12c00L

    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long v4, v0, v2

    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sub-long v2, v4, v2

    :goto_0
    move-wide/from16 v17, v2

    move-wide/from16 v19, v4

    goto :goto_2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    goto :goto_0

    :cond_2
    const-wide v4, 0x7fffffffffffffffL

    goto :goto_0

    :goto_2
    if-eqz p2, :cond_3

    move-object/from16 v2, p2

    :goto_3
    move/from16 v10, p3

    goto :goto_4

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :goto_4
    invoke-static {v10, v2, v0, v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(ILjava/lang/String;J)I

    move-result v11

    new-instance v6, Lcom/android/server/job/controllers/JobStatus;

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v21, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-direct/range {v6 .. v28}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IIIJJJJJII)V

    return-object v6
.end method

.method public static dumpConstraints(ILjava/io/PrintWriter;)V
    .locals 1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const-string v0, " CHARGING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    const-string v0, " BATTERY_NOT_LOW"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_2

    const-string v0, " STORAGE_NOT_LOW"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_3

    const-string v0, " TIMING_DELAY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p0

    if-eqz v0, :cond_4

    const-string v0, " DEADLINE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_5

    const-string v0, " IDLE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    const/high16 v0, 0x10000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_6

    const-string v0, " CONNECTIVITY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6
    const/high16 v0, 0x200000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const-string v0, " FLEXIBILITY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    const/high16 v0, 0x4000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_8

    const-string v0, " CONTENT_TRIGGER"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8
    const/high16 v0, 0x2000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_9

    const-string v0, " DEVICE_NOT_DOZING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_9
    const/high16 v0, 0x400000

    and-int/2addr v0, p0

    if-eqz v0, :cond_a

    const-string v0, " BACKGROUND_NOT_RESTRICTED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_a
    const/high16 v0, 0x800000

    and-int/2addr v0, p0

    if-eqz v0, :cond_b

    const-string v0, " PREFETCH"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_b
    const/high16 v0, 0x1000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_c

    const-string v0, " WITHIN_QUOTA"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_c
    const/high16 v0, 0x100000

    and-int/2addr v0, p0

    if-eqz v0, :cond_d

    const-string v0, " UID_NOT_RESTRICTED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_d
    if-eqz p0, :cond_e

    const-string v0, " [0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p0, "]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public static dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_1
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_2
    const/high16 v0, -0x80000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p3

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_4
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_5
    const/high16 v0, 0x10000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_6
    const/high16 v0, 0x4000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_7
    const/high16 v0, 0x2000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_8
    const/high16 v0, 0x1000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_9
    const/high16 v0, 0x400000

    and-int/2addr p3, v0

    if-eqz p3, :cond_a

    const/16 p3, 0xb

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_a
    return-void
.end method

.method public static dumpJobWorkItem(Landroid/util/IndentingPrintWriter;Landroid/app/job/JobWorkItem;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "#"

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p2, ": #"

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p2, " "

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string/jumbo p2, "x "

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string/jumbo p2, "URI grants:"

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {p1, p0}, Lcom/android/server/job/GrantedUriPermissions;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_0
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public static dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v0

    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000002L

    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-wide v1, 0x10b00000003L

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    check-cast p3, Lcom/android/server/job/GrantedUriPermissions;

    const-wide v0, 0x10b00000004L

    invoke-virtual {p3, p0, v0, v1}, Lcom/android/server/job/GrantedUriPermissions;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method


# virtual methods
.method public addDynamicConstraints(I)V
    .locals 2

    const/high16 v0, 0x1000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const-string v0, "JobScheduler.JobStatus"

    const-string/jumbo v1, "Tried to set quota as a dynamic constraint"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const v0, -0x1000001

    and-int/2addr p1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, -0x10000001

    and-int/2addr p1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, -0x4000001

    and-int/2addr p1, v0

    :cond_2
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    return-void
.end method

.method public final canRunInDoze()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v0

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v0, :cond_1

    :cond_0
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    const/high16 v0, 0x2000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public final clearTrackingController(I)Z
    .locals 2

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int v1, v0, p1

    if-eqz v1, :cond_0

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final computeSystemTraceTag()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSystemTraceTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x80

    const-string v2, "*job*<"

    invoke-static {v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "$"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSystemTraceTag:Ljava/lang/String;

    return-object v0
.end method

.method public final constraintsToPendingJobReasons(I)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/high16 v1, 0x400000

    and-int/2addr v1, p1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/high16 v1, 0x2000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_2
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x4

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/4 v3, 0x2

    if-eqz v1, :cond_4

    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_6

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_8

    and-int/2addr p0, v2

    if-eqz p0, :cond_7

    const/16 p0, 0x8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_8
    :goto_3
    const/high16 p0, 0x10000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    const/4 p0, 0x6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_9
    const/high16 p0, 0x4000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_a

    const/4 p0, 0x7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_a
    const/high16 p0, 0x200000

    and-int/2addr p0, p1

    if-eqz p0, :cond_b

    const/16 p0, 0xd

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_b
    const/high16 p0, 0x800000

    and-int/2addr p0, p1

    if-eqz p0, :cond_c

    const/16 p0, 0xa

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_c
    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_d

    const/16 p0, 0xb

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_d
    const/high16 p0, -0x80000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_e

    const/16 p0, 0x9

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_e
    const/high16 p0, 0x1000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_f

    const/16 p0, 0xe

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_f
    const/high16 p0, 0x40000000    # 2.0f

    and-int/2addr p0, p1

    if-eqz p0, :cond_10

    const/16 p0, 0x10

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_10
    return-object v0
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;ZJ)V
    .locals 9
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " tag="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getWakelockTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "Source: uid="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " user="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " pkg="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x20

    const/4 v4, 0x0

    if-eqz p2, :cond_19

    const-string v5, "JobInfo:"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v5, "Service: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "PERIODIC: interval="

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v5

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v5, " flex="

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v5

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_0
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "PERSISTED"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getBias()I

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "Bias: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getBias()I

    move-result v5

    invoke-static {v5}, Landroid/app/job/JobInfo;->getBiasString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v5, "Priority: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v5

    invoke-static {v5}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v6

    if-eq v5, v6, :cond_3

    const-string v6, " effective="

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "Flags: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    if-eqz v5, :cond_6

    const-string v5, "Internal flags: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_5

    const-string v5, " HAS_FOREGROUND_EXEMPTION"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_6
    const-string/jumbo v5, "Requires: charging="

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v5, " batteryNotLow="

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v5, " deviceIdle="

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Z)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v5

    if-eqz v5, :cond_a

    const-string/jumbo v5, "Trigger content URIs:"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v5, v4

    :goto_0
    iget-object v6, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_7

    iget-object v6, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(C)V

    invoke-virtual {v6}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-ltz v5, :cond_8

    const-string/jumbo v5, "Trigger update delay: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v5

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_8
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-ltz v5, :cond_9

    const-string/jumbo v5, "Trigger max delay: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v5

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_9
    iget-boolean v5, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "Has media backup exemption"

    invoke-virtual {p1, v6, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_a
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PersistableBundle;->isDefinitelyEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "Extras: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PersistableBundle;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_b
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    const-string/jumbo v5, "Transient extras: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v5

    if-eqz v5, :cond_d

    const-string v5, "Clip data: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v6, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_d
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v5, :cond_e

    const-string v5, "Granted URI permissions:"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {v5, p1}, Lcom/android/server/job/GrantedUriPermissions;->dump(Ljava/io/PrintWriter;)V

    :cond_e
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v5

    if-eqz v5, :cond_f

    const-string/jumbo v5, "Network type: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_f
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_10

    const-string/jumbo v5, "Network download bytes: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    invoke-virtual {p1, v5, v6}, Landroid/util/IndentingPrintWriter;->println(J)V

    :cond_10
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_11

    const-string/jumbo v5, "Network upload bytes: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    invoke-virtual {p1, v5, v6}, Landroid/util/IndentingPrintWriter;->println(J)V

    :cond_11
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_12

    const-string/jumbo v5, "Minimum network chunk bytes: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    invoke-virtual {p1, v5, v6}, Landroid/util/IndentingPrintWriter;->println(J)V

    :cond_12
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-eqz v5, :cond_13

    const-string/jumbo v5, "Minimum latency: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v5

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_13
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-eqz v5, :cond_14

    const-string/jumbo v5, "Max execution delay: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v5

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_14
    const-string v5, "Backoff: policy="

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v5, " initial="

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v5

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "Has early constraint"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_15
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v5, "Has late constraint"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_16
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTraceTag()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_17

    const-string/jumbo v5, "Trace tag: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTraceTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_17
    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getDebugTags()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_18

    const-string v5, "Debug tags: "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getDebugTags()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_19
    const-string/jumbo v5, "Required constraints:"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    invoke-static {v5, p1}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(ILjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v6, "Dynamic constraints:"

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    invoke-static {v6, p1}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(ILjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    if-eqz p2, :cond_1f

    const-string/jumbo p2, "Satisfied constraints:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-static {p2, p1}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(ILjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo p2, "Unsatisfied constraints:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/high16 p2, 0x1000000

    or-int/2addr p2, v5

    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v5, v5

    and-int/2addr p2, v5

    invoke-static {p2, p1}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(ILjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    move-result p2

    if-eqz p2, :cond_1a

    const-string/jumbo p2, "Num Required Flexible constraints: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo p2, "Num Dropped Flexible constraints: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_1a
    const-string p2, "Constraint history:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move p2, v4

    :goto_1
    const/16 v5, 0xa

    if-ge p2, v5, :cond_1c

    iget v6, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    add-int/2addr v6, p2

    rem-int/2addr v6, v5

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintUpdatedTimesElapsed:[J

    aget-wide v7, v5, v6

    cmp-long v5, v7, v0

    if-nez v5, :cond_1b

    goto :goto_2

    :cond_1b
    invoke-static {v7, v8, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v5, " ="

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintStatusHistory:[I

    aget v5, v5, v6

    invoke-static {v5, p1}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(ILjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1c
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    iget-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    if-eqz p2, :cond_1d

    const-string p2, "Doze whitelisted: true"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_1d
    iget-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-eqz p2, :cond_1e

    const-string/jumbo p2, "Uid: active"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_1e
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result p2

    if-eqz p2, :cond_1f

    const-string p2, "Is exempted from app standby"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_1f
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    if-eqz p2, :cond_28

    const-string/jumbo p2, "Tracking:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_20

    const-string p2, " BATTERY"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_20
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_21

    const-string p2, " CONNECTIVITY"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_21
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_22

    const-string p2, " CONTENT"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_22
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_23

    const-string p2, " IDLE"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_23
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_24

    const-string p2, " STORAGE"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_24
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/2addr p2, v3

    if-eqz p2, :cond_25

    const-string p2, " TIME"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_25
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 p2, p2, 0x40

    if-eqz p2, :cond_26

    const-string p2, " QUOTA"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_26
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit16 p2, p2, 0x100

    if-eqz p2, :cond_27

    const-string p2, " UID_RESTRICT"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_27
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_28
    const-string p2, "Implicit constraints:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo p2, "readyNotDozing: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo p2, "readyNotRestrictedInBg: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result p2

    if-nez p2, :cond_29

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p0, p2}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result p2

    if-eqz p2, :cond_29

    const-string/jumbo p2, "readyDeadlineSatisfied: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    :cond_29
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz p2, :cond_2a

    const-string/jumbo p2, "readyDynamicSatisfied: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    :cond_2a
    const-string/jumbo p2, "readyComponentEnabled: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    if-eqz p2, :cond_2b

    goto :goto_3

    :cond_2b
    move v2, v4

    :goto_3
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getFlags()I

    move-result p2

    and-int/lit8 p2, p2, 0x10

    const-string v2, ")"

    if-eqz p2, :cond_2c

    const-string/jumbo p2, "expeditedQuotaApproved: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string p2, " (started as EJ: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_2c
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getFlags()I

    move-result p2

    and-int/2addr p2, v3

    if-eqz p2, :cond_2d

    const-string/jumbo p2, "userInitiatedApproved: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string p2, " (started as UIJ: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_2d
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo p2, "Started with foreground flag: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->startedWithForegroundFlag:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    iget-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    if-eqz p2, :cond_2e

    const-string/jumbo p2, "User BG restricted"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_2e
    iget-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mIsForceExecuteJob:Z

    if-eqz p2, :cond_2f

    const-string p2, "Force executed job"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_2f
    iget-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mIsHeavyJob:Z

    if-eqz p2, :cond_30

    const-string p2, "Heavy job"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_30
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz p2, :cond_32

    const-string p2, "Changed authorities:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move p2, v4

    :goto_4
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge p2, v2, :cond_31

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_31
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_32
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz p2, :cond_34

    const-string p2, "Changed URIs:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move p2, v4

    :goto_5
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge p2, v2, :cond_33

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_33
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_34
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    if-eqz p2, :cond_35

    const-string/jumbo p2, "Network: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_35
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz p2, :cond_36

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_36

    const-string/jumbo p2, "Pending work:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move p2, v4

    :goto_6
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_36

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobWorkItem;

    invoke-static {p1, v2, p2}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/IndentingPrintWriter;Landroid/app/job/JobWorkItem;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_36
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz p2, :cond_37

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_37

    const-string p2, "Executing work:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_7
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v4, p2, :cond_37

    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/job/JobWorkItem;

    invoke-static {p1, p2, v4}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/IndentingPrintWriter;Landroid/app/job/JobWorkItem;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_37
    const-string/jumbo p2, "Standby bucket: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    invoke-static {p2}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    cmp-long p2, v2, v0

    if-eqz p2, :cond_38

    const-string p2, "Deferred since: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    invoke-static {v2, v3, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_38
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    cmp-long p2, v2, v0

    if-eqz p2, :cond_39

    const-string/jumbo p2, "Time since first force batch attempt: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    invoke-static {v2, v3, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_39
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "Enqueue time: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    invoke-static {v2, v3, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo p2, "Run time: earliest="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    cmp-long p2, v2, v0

    const-string/jumbo v4, "none"

    if-nez p2, :cond_3a

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    :cond_3a
    sub-long/2addr v2, p3

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    :goto_8
    const-string p2, ", latest="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long p2, v2, v5

    if-nez p2, :cond_3b

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_9

    :cond_3b
    sub-long/2addr v2, p3

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    :goto_9
    const-string p2, ", original latest="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    cmp-long p2, v2, v5

    if-nez p2, :cond_3c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a

    :cond_3c
    sub-long/2addr v2, p3

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    :goto_a
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide p2, p0, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    cmp-long p2, p2, v0

    if-eqz p2, :cond_3d

    const-string p2, "Cumulative execution time="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide p2, p0, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    invoke-static {p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_3d
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    if-eqz p2, :cond_3e

    const-string/jumbo p3, "Num failures: "

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    :cond_3e
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    if-eqz p2, :cond_3f

    const-string/jumbo p3, "Num system stops: "

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    :cond_3f
    iget-wide p2, p0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    cmp-long p4, p2, v0

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    if-eqz p4, :cond_40

    const-string p4, "Last successful run: "

    invoke-virtual {p1, p4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2, p2, p3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_40
    iget-wide p2, p0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    cmp-long p0, p2, v0

    if-eqz p0, :cond_41

    const-string p0, "Last failed run: "

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2, p2, p3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_41
    return-void
.end method

.method public final dump(Landroid/util/proto/ProtoOutputStream;ZJ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide v2, 0x10b00000002L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10500000001L

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getWakelockTag()Ljava/lang/String;

    move-result-object v6

    const-wide v7, 0x10900000002L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v9, 0x10500000003L

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10500000004L

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    invoke-virtual {v1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10900000005L

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v9, 0x1080000000aL

    const-wide v11, 0x10800000002L

    if-eqz p2, :cond_a

    const-wide/16 v15, 0x0

    const-wide v13, 0x10b00000006L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    move-wide/from16 v17, v15

    iget-object v15, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v15}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v15

    const-wide v6, 0x10b00000001L

    invoke-virtual {v15, v1, v6, v7}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v6

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v6

    const-wide v11, 0x10300000003L

    invoke-virtual {v1, v11, v12, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v6

    const-wide v11, 0x10300000004L

    invoke-virtual {v1, v11, v12, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v6

    const-wide v11, 0x10800000005L

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getBias()I

    move-result v6

    const-wide v11, 0x11100000006L

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v6

    const-wide v11, 0x10500000007L

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    const-wide v11, 0x10300000018L

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v6

    const-wide v11, 0x10800000008L

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v6

    const-wide v11, 0x10800000009L

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v6

    invoke-virtual {v1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    :goto_0
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_1

    const-wide v11, 0x20b0000000bL

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v8

    invoke-virtual {v1, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v7}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide v4, 0x10900000002L

    invoke-virtual {v1, v4, v5, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_1

    :cond_0
    const-wide v4, 0x10900000002L

    :goto_1
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v6, v6, 0x1

    const-wide v4, 0x10500000001L

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v4

    cmp-long v4, v4, v17

    if-ltz v4, :cond_2

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v4

    const-wide v6, 0x1030000000cL

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_2
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v4

    cmp-long v4, v4, v17

    if-ltz v4, :cond_3

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v4

    const-wide v6, 0x1030000000dL

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_3
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PersistableBundle;->isDefinitelyEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    const-wide v5, 0x10b0000000eL

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/PersistableBundle;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_4
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    const-wide v5, 0x10b0000000fL

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Bundle;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_5
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    const-wide v5, 0x10b00000010L

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/ClipData;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_6
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v4, :cond_7

    const-wide v5, 0x10b00000011L

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/job/GrantedUriPermissions;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_7
    iget-wide v4, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_8

    const-wide v11, 0x10300000019L

    invoke-virtual {v1, v11, v12, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_8
    iget-wide v4, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v6, v4, v6

    if-eqz v6, :cond_9

    const-wide v6, 0x1030000001aL

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_9
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v4

    const-wide v6, 0x10300000014L

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v4

    const-wide v6, 0x10300000015L

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10b00000016L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v6

    const-wide v7, 0x10e00000001L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v6

    const-wide v11, 0x10300000002L

    invoke-virtual {v1, v11, v12, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v4

    const-wide v5, 0x10800000017L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v4

    const-wide v5, 0x10800000018L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_2

    :cond_a
    const-wide/16 v17, 0x0

    :goto_2
    const-wide v4, 0x20e00000007L

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    invoke-static {v1, v4, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    const-wide v4, 0x20e0000001fL

    iget v7, v0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    invoke-static {v1, v4, v5, v7}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    if-eqz p2, :cond_b

    const-wide v4, 0x20e00000008L

    iget v7, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-static {v1, v4, v5, v7}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    const/high16 v4, 0x1000000

    or-int/2addr v4, v6

    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v5, v5

    and-int/2addr v4, v5

    const-wide v5, 0x20e00000009L

    invoke-static {v1, v5, v6, v4}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    iget-boolean v4, v0, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x1080000001aL

    iget-boolean v6, v0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v4

    const-wide v5, 0x1080000001bL

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    :cond_b
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    const-wide v6, 0x20e0000000bL

    if-eqz v4, :cond_c

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_c
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v9, 0x2

    and-int/2addr v4, v9

    if-eqz v4, :cond_d

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_d
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_e

    invoke-virtual {v1, v6, v7, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_e
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_f

    const/4 v4, 0x3

    invoke-virtual {v1, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_f
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_10

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_10
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_11

    const/4 v4, 0x5

    invoke-virtual {v1, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_11
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_12

    const/4 v4, 0x6

    invoke-virtual {v1, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_12
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_13

    const/4 v4, 0x7

    invoke-virtual {v1, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_13
    const-wide v4, 0x10b00000019L    # 5.665728762E-312

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10800000001L

    iget-boolean v9, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    invoke-virtual {v1, v6, v7, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v6, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    const-wide v9, 0x10800000002L

    invoke-virtual {v1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v6, 0x10800000003L

    iget-boolean v9, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    invoke-virtual {v1, v6, v7, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v4, :cond_14

    const/4 v4, 0x0

    :goto_3
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_14

    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-wide v6, 0x2090000000cL

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_14
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v4, :cond_15

    const/4 v4, 0x0

    :goto_4
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_15

    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    const-wide v6, 0x2090000000dL

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_15
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    :goto_5
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_16

    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/job/JobWorkItem;

    const-wide v6, 0x20b0000000fL

    invoke-static {v1, v6, v7, v5}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_16
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v4, :cond_17

    const/4 v4, 0x0

    :goto_6
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_17

    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/job/JobWorkItem;

    const-wide v6, 0x20b00000010L

    invoke-static {v1, v6, v7, v5}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_17
    const-wide v4, 0x10e00000011L

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v4, v0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    sub-long v4, p3, v4

    const-wide v6, 0x10300000012L

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v4, v0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    cmp-long v6, v4, v17

    if-nez v6, :cond_18

    move-wide/from16 v4, v17

    goto :goto_7

    :cond_18
    sub-long v4, p3, v4

    :goto_7
    const-wide v6, 0x1030000001cL

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v4, v0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    cmp-long v6, v4, v17

    if-nez v6, :cond_19

    move-wide/from16 v4, v17

    goto :goto_8

    :cond_19
    sub-long v4, p3, v4

    :goto_8
    const-wide v6, 0x1030000001dL

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v4, v0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    cmp-long v6, v4, v17

    const-wide v9, 0x11200000013L

    if-nez v6, :cond_1a

    const/4 v8, 0x0

    invoke-virtual {v1, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_9

    :cond_1a
    const/4 v8, 0x0

    sub-long v4, v4, p3

    invoke-virtual {v1, v9, v10, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :goto_9
    iget-wide v4, v0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, v4, v6

    const-wide v9, 0x11200000014L

    if-nez v6, :cond_1b

    invoke-virtual {v1, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_a

    :cond_1b
    sub-long v4, v4, p3

    invoke-virtual {v1, v9, v10, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :goto_a
    const-wide v4, 0x1040000001eL

    iget-wide v6, v0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    add-int/2addr v4, v5

    const-wide v5, 0x10500000015L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10300000016L

    iget-wide v6, v0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10300000017L

    iget-wide v6, v0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    :cond_0
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    invoke-virtual {p1, v0}, Landroid/app/job/JobWorkItem;->setWorkId(I)V

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/lit8 v1, v5, 0x3

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    invoke-static/range {v1 .. v7}, Lcom/android/server/job/GrantedUriPermissions;->grantUri(Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v7

    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static/range {v1 .. v7}, Lcom/android/server/job/GrantedUriPermissions;->grantClip(Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v7

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :cond_3
    :goto_0
    invoke-virtual {p1, v7}, Landroid/app/job/JobWorkItem;->setGrants(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    return-void
.end method

.method public final getEffectivePriority()I
    .locals 5

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/16 v2, 0x190

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    if-ge v3, v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    div-int/2addr v3, v1

    const/4 p0, 0x1

    if-eq v3, p0, :cond_6

    if-eq v3, v1, :cond_5

    const/16 p0, 0x64

    return p0

    :cond_5
    const/16 p0, 0xc8

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_6
    const/16 p0, 0x12c

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final getEffectiveStandbyBucket()I
    .locals 6

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlameUserId()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlamePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/server/job/JobSchedulerInternal;->isAppConsideredBuggy(ILjava/lang/String;ILjava/lang/String;)Z

    move-result v0

    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string p0, "Exempted app "

    const-string v0, " considered buggy"

    const-string v3, "JobScheduler.JobStatus"

    invoke-static {p0, v1, v0, v3}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v2

    :cond_3
    iget-boolean v3, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    iget-boolean v3, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    if-eqz v3, :cond_5

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_5
    if-eqz v0, :cond_8

    if-ge v2, v4, :cond_8

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mIsDowngradedDueToBuggyApp:Z

    if-nez v0, :cond_7

    invoke-static {v1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    :cond_6
    const-string/jumbo v0, "job_scheduler.value_job_quota_reduced_due_to_buggy_uid"

    invoke-static {v0, v1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    iput-boolean v4, p0, Lcom/android/server/job/controllers/JobStatus;->mIsDowngradedDueToBuggyApp:Z

    :cond_7
    return v4

    :cond_8
    return v2

    :cond_9
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getFilteredDebugTags()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mFilteredDebugTags:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getDebugTagsArraySet()Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->mFilteredDebugTags:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->mFilteredDebugTags:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/job/controllers/JobStatus;->applyBasicPiiFilters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public final getFilteredTraceTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mFilteredTraceTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTraceTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {v0}, Lcom/android/server/job/controllers/JobStatus;->applyBasicPiiFilters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mFilteredTraceTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getFractionRunTime()F
    .locals 10

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    cmp-long v2, v4, v2

    const-wide v6, 0x7fffffffffffffffL

    iget-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    if-nez v2, :cond_0

    cmp-long p0, v8, v6

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    cmp-long p0, v0, v8

    if-ltz p0, :cond_3

    goto :goto_0

    :cond_1
    cmp-long p0, v8, v6

    if-nez p0, :cond_2

    cmp-long p0, v0, v4

    if-ltz p0, :cond_3

    goto :goto_0

    :cond_2
    cmp-long p0, v0, v4

    if-gtz p0, :cond_4

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    cmp-long p0, v0, v8

    if-ltz p0, :cond_5

    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_5
    sub-long/2addr v0, v4

    long-to-float p0, v0

    sub-long/2addr v8, v4

    long-to-float v0, v8

    div-float/2addr p0, v0

    return p0
.end method

.method public final getNumPreviousAttempts()I
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final getNumRequiredFlexibleConstraints()I
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getSourcePackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSourceUid()I
    .locals 0

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    return p0
.end method

.method public final getTimeoutBlamePackageName()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTimeoutBlameUserId()I
    .locals 2

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    return p0

    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public final getTriggerContentMaxDelay()J
    .locals 4

    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const-wide/32 v0, 0x1d4c0

    return-wide v0

    :cond_0
    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTriggerContentUpdateDelay()J
    .locals 4

    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const-wide/16 v0, 0x2710

    return-wide v0

    :cond_0
    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getUserVisibleJobSummary()Landroid/app/job/UserVisibleJobSummary;
    .locals 8

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mUserVisibleJobSummary:Landroid/app/job/UserVisibleJobSummary;

    if-nez v0, :cond_0

    new-instance v1, Landroid/app/job/UserVisibleJobSummary;

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v7

    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v5, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-direct/range {v1 .. v7}, Landroid/app/job/UserVisibleJobSummary;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->mUserVisibleJobSummary:Landroid/app/job/UserVisibleJobSummary;

    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mUserVisibleJobSummary:Landroid/app/job/UserVisibleJobSummary;

    return-object p0
.end method

.method public final getWakelockTag()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mWakelockTag:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "*job*"

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mWakelockTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->mWakelockTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "e"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "u"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "r"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mWakelockTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->mWakelockTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mWakelockTag:Ljava/lang/String;

    :cond_2
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mWakelockTag:Ljava/lang/String;

    return-object p0
.end method

.method public final getWorkCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final hasConnectivityConstraint()Z
    .locals 1

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasConstraint(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final hasContentTriggerConstraint()Z
    .locals 1

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v0, 0x4000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasFlexibilityConstraint()Z
    .locals 1

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v0, 0x200000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isConstraintSatisfied(I)Z
    .locals 0

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isConstraintsSatisfied(I)Z
    .locals 3

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const v1, -0x7f5ffff1

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    :cond_1
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isForceExecuteJob()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->mIsForceExecuteJob:Z

    return p0
.end method

.method public final isReady()Z
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result p0

    return p0
.end method

.method public final isReady(I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    :cond_1
    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied(I)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public final isRequestedExpeditedJob()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isUserVisibleJob()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final matches(IILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-static {p0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final maybeAddForegroundExemption(Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    :cond_2
    :goto_0
    return-void
.end method

.method public final prepareLocked()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Already prepared: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JobScheduler.JobStatus"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getClipGrantFlags()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v7

    and-int/lit8 v1, v6, 0x3

    if-eqz v1, :cond_1

    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    const/4 v8, 0x0

    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-static/range {v2 .. v8}, Lcom/android/server/job/GrantedUriPermissions;->grantClip(Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    :cond_2
    return-void
.end method

.method public final printUniqueId(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    return-void
.end method

.method public readinessStatusWithConstraint(IZ)Z
    .locals 8

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x2000000

    const/high16 v4, 0x1000000

    const/high16 v5, 0x400000

    const/4 v6, 0x0

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eqz p2, :cond_0

    or-int p2, v0, p1

    :goto_0
    move v0, p2

    goto :goto_1

    :cond_0
    not-int p2, p1

    and-int/2addr p2, v0

    goto :goto_0

    :goto_1
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz p2, :cond_1

    and-int v7, v0, p2

    if-ne p2, v7, :cond_1

    move p2, v1

    goto :goto_2

    :cond_1
    move p2, v6

    :goto_2
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    move v7, v6

    goto :goto_3

    :cond_2
    iget-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    goto :goto_3

    :cond_3
    iget-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    goto :goto_3

    :cond_4
    iget-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    goto :goto_3

    :cond_5
    iget-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    :goto_3
    const/high16 p2, 0x200000

    if-eq p1, p2, :cond_6

    or-int/2addr v0, p2

    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result p2

    if-eq p1, v5, :cond_b

    if-eq p1, v4, :cond_a

    if-eq p1, v3, :cond_9

    if-eq p1, v2, :cond_8

    iget p1, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz p1, :cond_7

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_7

    goto :goto_4

    :cond_7
    move v1, v6

    :goto_4
    iput-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    return p2

    :cond_8
    iput-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    return p2

    :cond_9
    iput-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    return p2

    :cond_a
    iput-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    return p2

    :cond_b
    iput-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    return p2
.end method

.method public final setConstraintSatisfied(IJZ)Z
    .locals 9

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-ne v0, p4, :cond_1

    return v2

    :cond_1
    sget-boolean v0, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    const-string v3, "JobScheduler.JobStatus"

    if-eqz v0, :cond_3

    const-string v0, "Constraint "

    const-string v4, " is "

    invoke-static {p1, v0, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p4, :cond_2

    const-string/jumbo v4, "NOT "

    goto :goto_1

    :cond_2
    const-string v4, ""

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "satisfied for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez p4, :cond_4

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v5, p1

    and-int/2addr v4, v5

    if-eqz p4, :cond_5

    move v5, p1

    goto :goto_3

    :cond_5
    move v5, v2

    :goto_3
    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const v5, -0x6b4ffff1

    and-int/2addr v5, v4

    iput v5, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz v5, :cond_6

    and-int v6, v4, v5

    if-ne v5, v6, :cond_6

    move v5, v1

    goto :goto_4

    :cond_6
    move v5, v2

    :goto_4
    iput-boolean v5, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    iget-object v6, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintUpdatedTimesElapsed:[J

    aput-wide p2, v6, v5

    iget-object v6, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintStatusHistory:[I

    aput v4, v6, v5

    add-int/2addr v5, v1

    const/16 v4, 0xa

    rem-int/2addr v5, v4

    iput v5, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    invoke-virtual {p0, p1, p4}, Lcom/android/server/job/controllers/JobStatus;->readinessStatusWithConstraint(IZ)Z

    move-result p4

    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    if-eqz v0, :cond_12

    if-nez p4, :cond_12

    const/16 v0, 0xc

    if-eq p1, v1, :cond_10

    const/4 v6, 0x2

    if-eq p1, v6, :cond_f

    const/16 v6, 0x8

    const/4 v7, 0x4

    if-eq p1, v7, :cond_e

    if-eq p1, v6, :cond_d

    const/high16 v0, 0x200000

    if-eq p1, v0, :cond_7

    const/high16 v0, 0x400000

    if-eq p1, v0, :cond_c

    const/high16 v0, 0x800000

    if-eq p1, v0, :cond_b

    const/high16 v0, 0x1000000

    if-eq p1, v0, :cond_a

    const/high16 v0, 0x2000000

    if-eq p1, v0, :cond_9

    const/high16 v0, 0x10000000

    if-eq p1, v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unsupported constraint ("

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") --stop reason mapping"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v0, v2

    goto :goto_5

    :cond_8
    const/4 v0, 0x7

    goto :goto_5

    :cond_9
    move v0, v7

    goto :goto_5

    :cond_a
    move v0, v4

    goto :goto_5

    :cond_b
    const/16 v0, 0xf

    goto :goto_5

    :cond_c
    iget-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    if-eqz p1, :cond_9

    const/16 v0, 0xb

    goto :goto_5

    :cond_d
    const/16 v0, 0x9

    goto :goto_5

    :cond_e
    and-int/2addr p1, v5

    if-eqz p1, :cond_11

    move v0, v6

    goto :goto_5

    :cond_f
    and-int/2addr p1, v5

    if-eqz p1, :cond_11

    const/4 v0, 0x5

    goto :goto_5

    :cond_10
    and-int/2addr p1, v5

    if-eqz p1, :cond_11

    const/4 v0, 0x6

    :cond_11
    :goto_5
    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    goto :goto_6

    :cond_12
    if-nez v0, :cond_13

    if-eqz p4, :cond_13

    iput v2, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    :cond_13
    :goto_6
    iget p1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int p1, p1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    or-int/2addr v0, v5

    const/high16 v3, 0x3600000

    or-int/2addr v0, v3

    and-int/2addr p1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    add-long/2addr v5, p2

    if-eqz p4, :cond_15

    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->mPendingJobReasonsHistory:Ljava/util/List;

    new-instance p2, Landroid/app/job/PendingJobReasonsInfo;

    iget-object p3, p0, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    if-eqz p3, :cond_14

    move p3, v1

    goto :goto_7

    :cond_14
    move p3, v2

    :goto_7
    filled-new-array {p3}, [I

    move-result-object p3

    invoke-direct {p2, v5, v6, p3}, Landroid/app/job/PendingJobReasonsInfo;-><init>(J[I)V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    goto :goto_9

    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/JobStatus;->constraintsToPendingJobReasons(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p3, p2, [I

    move p4, v2

    :goto_8
    if-ge p4, p2, :cond_17

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_8

    :cond_17
    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->mPendingJobReasonsHistory:Ljava/util/List;

    new-instance p2, Landroid/app/job/PendingJobReasonsInfo;

    invoke-direct {p2, v5, v6, p3}, Landroid/app/job/PendingJobReasonsInfo;-><init>(J[I)V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :goto_9
    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->mPendingJobReasonsHistory:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x19

    if-lt p1, p2, :cond_18

    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mPendingJobReasonsHistory:Ljava/util/List;

    sub-int/2addr p1, v4

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_18
    return v1
.end method

.method public final setTrackingController(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    return-void
.end method

.method public final shouldTreatAsExpeditedJob()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldTreatAsUserInitiatedJob()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    and-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_0

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toShortString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, " {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toShortStringExceptUniqueId()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    const/16 v0, 0x80

    const-string v1, "JobStatus{"

    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, " "

    invoke-static {v0, v3, v2, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, " #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " u="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " s="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const-wide v7, 0x7fffffffffffffffL

    iget-wide v9, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    if-nez v6, :cond_1

    cmp-long v6, v9, v7

    if-eqz v6, :cond_4

    :cond_1
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    const-string v6, " TIME="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v4, v2, v4

    const-string/jumbo v5, "none"

    if-nez v4, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    sub-long/2addr v2, v11

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v1, v9, v7

    if-nez v1, :cond_3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    sub-long/2addr v9, v11

    invoke-static {v9, v10, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, " NET"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " CHARGING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " BATNOTLOW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireStorageNotLow()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, " STORENOTLOW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, " IDLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, " PERIODIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, " PERSISTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-nez v1, :cond_c

    const-string v1, " WAIT:DEV_NOT_DOZING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v1

    if-eqz v1, :cond_d

    const-string v1, " URIS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    if-eqz v1, :cond_e

    const-string v2, " failures="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_e
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    if-eqz v1, :cond_f

    const-string v2, " system stops="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_f
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string p0, " READY"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_10
    const-string v1, " satisfied:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    const/high16 v2, 0x3600000

    or-int/2addr v1, v2

    const-string v2, " unsatisfied:0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr p0, v1

    xor-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unprepareLocked()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hasn\'t been prepared: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.JobStatus"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    if-eqz p0, :cond_1

    const-string/jumbo v0, "Was already unprepared at "

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/job/GrantedUriPermissions;->revoke()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    :cond_1
    return-void
.end method

.method public final updateMediaBackupExemptionStatus()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mHasExemptedMediaUrisOnly:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    const/16 v3, 0x12c

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    invoke-interface {v0, v3}, Lcom/android/server/job/JobSchedulerInternal;->getCloudMediaProviderPackage(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    if-ne v3, v0, :cond_2

    return v1

    :cond_2
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    return v2
.end method

.method public final updateNetworkBytesLocked()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v4, -0x1

    if-gez v0, :cond_0

    iput-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getEstimatedNetworkUploadBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iput-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getMinimumNetworkChunkBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-eqz v1, :cond_3

    cmp-long v1, v6, v2

    if-lez v1, :cond_3

    iget-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    cmp-long v1, v8, v4

    if-eqz v1, :cond_2

    add-long/2addr v8, v6

    iput-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    goto :goto_1

    :cond_2
    iput-wide v6, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkUploadBytes()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-eqz v1, :cond_5

    cmp-long v1, v6, v2

    if-lez v1, :cond_5

    iget-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v1, v8, v4

    if-eqz v1, :cond_4

    add-long/2addr v8, v6

    iput-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    goto :goto_2

    :cond_4
    iput-wide v6, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getMinimumNetworkChunkBytes()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    cmp-long v1, v8, v4

    if-nez v1, :cond_6

    iput-wide v6, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    goto :goto_3

    :cond_6
    cmp-long v1, v6, v4

    if-eqz v1, :cond_7

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public final writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10900000003L

    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
