.class public final Lcom/android/server/am/UidRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final ORIG_ENUMS:[I

.field public static final PROTO_ENUMS:[I


# instance fields
.field public curProcStateSeq:J

.field public volatile hasInternetPermission:Z

.field public lastNetworkUpdatedProcStateSeq:J

.field public mCurAllowList:Z

.field public mCurCapability:I

.field public mCurProcState:I

.field public mEphemeral:Z

.field public mFGSFilter:Z

.field public mForegroundServices:Z

.field public mIdle:Z

.field public mLastBackgroundTime:J

.field public mLastIdleTimeIfStillIdle:J

.field public mLastReportedChange:I

.field public mProcAdjChanged:Z

.field public final mProcRecords:Landroid/util/ArraySet;

.field public mRealLastIdleTime:J

.field public mSetAllowList:Z

.field public mSetCapability:I

.field public mSetIdle:Z

.field public mSetProcState:I

.field public final mUid:I

.field public mUidIsFrozen:Z

.field public final networkStateLock:Ljava/lang/Object;

.field public final pendingChange:Lcom/android/server/am/UidObserverController$ChangeRecord;

.field public volatile procStateSeqWaitingForNetwork:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/am/UidRecord;->ORIG_ENUMS:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/UidRecord;->PROTO_ENUMS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        -0x80000000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/am/UidRecord;->mSetProcState:I

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->mFGSFilter:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UidRecord;->pendingChange:Lcom/android/server/am/UidObserverController$ChangeRecord;

    iput p1, p0, Lcom/android/server/am/UidRecord;->mUid:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    const/16 p1, 0x13

    iput p1, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    iput v0, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    return-void
.end method


# virtual methods
.method public final areAllProcessesFrozen(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    if-eq p1, v2, :cond_0

    iget-boolean v2, v3, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final forEachProcess(Ljava/util/function/Consumer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getProcessRecordByIndex(I)Lcom/android/server/am/ProcessRecord;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    const/16 v0, 0x80

    const-string/jumbo v1, "UidRecord{"

    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-static {v0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    sget v2, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    invoke-static {v1}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    if-eqz v1, :cond_0

    const-string v1, " ephemeral"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    if-eqz v1, :cond_1

    const-string v1, " fgServices"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    if-eqz v1, :cond_2

    const-string v1, " allowlist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    const-string v1, " bg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    if-eqz v1, :cond_4

    const-string v1, " idle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    const-string v1, " change:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    const/4 v3, 0x1

    and-int/2addr v1, v3

    if-eqz v1, :cond_5

    const-string/jumbo v1, "gone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_0

    :cond_5
    move v1, v2

    :goto_0
    iget v4, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v4, v4, 0x2

    const-string/jumbo v5, "|"

    if-eqz v4, :cond_7

    if-eqz v1, :cond_6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string/jumbo v1, "idle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_7
    iget v4, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_9

    if-eqz v1, :cond_8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string/jumbo v1, "active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_9
    iget v4, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_b

    if-eqz v1, :cond_a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string/jumbo v1, "cached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_b
    move v3, v1

    :goto_1
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_d

    if-eqz v3, :cond_c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    const-string/jumbo v1, "uncached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    const/high16 v4, -0x80000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_f

    if-eqz v3, :cond_e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string/jumbo v1, "procstate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_11

    if-eqz v3, :cond_10

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string/jumbo v1, "procadj"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v1, " procs:"

    const-string v3, " seq("

    invoke-static {v2, v1, v3, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " caps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    invoke-static {v0, p0}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
