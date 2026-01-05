.class public final Lcom/android/server/am/ProcessCachedOptimizerRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final IS_FROZEN:Ljava/lang/String; = "isFrozen"


# instance fields
.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mEarliestFreezableTimeMillis:J

.field public mForceCompact:Z

.field public mFreezeExempt:Z

.field public mFreezeSticky:Z

.field public mFreezeUnfreezeTime:J

.field public mFreezerOverride:Z

.field public mFrozen:Z

.field public final mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mHasCollectedFrozenPSS:Z

.field public mIsCached:Z

.field public mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

.field public mLastCompactTime:J

.field public mLastOomAdjChangeReason:I

.field public mLastUsedTimeout:J

.field public mPendingCompact:Z

.field public mPendingFreeze:Z

.field public mReqCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

.field public mReqCompactSource:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

.field public mShouldNotFreeze:Z

.field public mShouldNotFreezeAdjSeq:I

.field public mShouldNotFreezeReason:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    return-void
.end method


# virtual methods
.method public final setShouldNotFreeze(IIZZ)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_1

    iget-boolean p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    if-eq p0, p3, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    if-eqz p3, :cond_2

    and-int/lit8 v1, p1, -0x2

    :cond_2
    iget p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeReason:I

    if-ne v1, p1, :cond_3

    iget-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    if-eq p3, p1, :cond_4

    :cond_3
    iput p2, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeAdjSeq:I

    :cond_4
    iput v1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeReason:I

    iput-boolean p3, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    return v0
.end method
