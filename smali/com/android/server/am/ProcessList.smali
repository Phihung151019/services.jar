.class public final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final NETWORK_STATE_BLOCK:I = 0x1

.field static final NETWORK_STATE_NO_CHANGE:I = 0x0

.field static final NETWORK_STATE_UNBLOCK:I = 0x2

.field public static final PAGE_SIZE:I

.field public static final sFirstAsleepPssTimes:[J

.field public static final sFirstAwakePssTimes:[J

.field public static sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

.field public static sKillThread:Lcom/android/server/ServiceThread;

.field public static sLmkdConnection:Lcom/android/server/am/LmkdConnection;

.field public static final sProcStateToProcMem:[I

.field public static final sSameAsleepPssTimes:[J

.field public static final sSameAwakePssTimes:[J

.field public static final sTestFirstPssTimes:[J

.field public static final sTestSamePssTimes:[J


# instance fields
.field public mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

.field public mActiveUids:Lcom/android/server/am/ActiveUids;

.field public mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;

.field public mAppDataIsolationEnabled:Z

.field public final mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

.field mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

.field public final mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

.field public final mAppZygoteProcesses:Landroid/util/ArrayMap;

.field public final mAppZygotes:Lcom/android/internal/app/ProcessMap;

.field public final mAppsInBackgroundRestricted:Landroid/util/ArraySet;

.field public final mAvailProcessChanges:Ljava/util/ArrayList;

.field public mCachedRestoreLevel:J

.field public mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

.field public mDisplayHeight:I

.field public mDisplayWidth:I

.field public final mDyingProcesses:Lcom/android/internal/app/ProcessMap;

.field public mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

.field mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

.field public mHaveDisplaySize:Z

.field public mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

.field public mIsDisplayChanged:Z

.field public final mIsolatedProcesses:Landroid/util/SparseArray;

.field public mLruProcessActivityStart:I

.field public mLruProcessServiceStart:I

.field public final mLruProcesses:Ljava/util/ArrayList;

.field public mLruSeq:I

.field public final mOomAdj:[I

.field public mOomLevelsSet:Z

.field public final mOomMinFree:[I

.field public final mOomMinFreeHigh:[I

.field public final mOomMinFreeLow:[I

.field public final mPendingProcessChanges:Ljava/util/ArrayList;

.field public final mPendingStarts:Landroid/util/LongSparseArray;

.field public mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field public mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

.field public mProcStartSeqCounter:J

.field volatile mProcStateSeqCounter:J

.field public final mProcessChangeLock:Ljava/lang/Object;

.field public mProcessListSettingsListener:Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

.field public final mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

.field public final mProcessObservers:Landroid/os/RemoteCallbackList;

.field public final mRemovedProcesses:Ljava/util/ArrayList;

.field public final mSdkSandboxes:Landroid/util/SparseArray;

.field public mService:Lcom/android/server/am/ActivityManagerService;

.field public final mStringBuilder:Ljava/lang/StringBuilder;

.field public mSystemServerSocketForZygote:Landroid/net/LocalSocket;

.field public mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

.field public final mTotalMemMb:J

.field public mVoldAppDataIsolationEnabled:Z

.field public final mZygoteSigChldMessage:[I

.field public final mZygoteUnsolicitedMessage:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    sget v1, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v1}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v1

    long-to-int v1, v1

    sput v1, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    sput-object v1, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    const/16 v1, 0x14

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_5

    sput-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    new-array v0, v0, [J

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x1
        0x2
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_1
    .array-data 8
        0x7530
        0x2710
        0x4e20
        0x4e20
        0x4e20
    .end array-data

    :array_2
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_3
    .array-data 8
        0xea60
        0x4e20
        0x7530
        0x7530
        0xea60
    .end array-data

    :array_4
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_5
    .array-data 8
        0xbb8
        0xbb8
        0x1388
        0x1388
        0x1388
    .end array-data

    :array_6
    .array-data 8
        0x3a98
        0x2710
        0x2710
        0x3a98
        0x3a98
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iput v1, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    iput v1, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v2}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    new-instance v2, Lcom/android/server/am/AppStartInfoTracker;

    invoke-direct {v2}, Lcom/android/server/am/AppStartInfoTracker;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker;

    invoke-direct {v2}, Lcom/android/server/am/AppExitInfoTracker;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const/16 v2, 0x10

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    const/4 v2, 0x3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    new-instance v0, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    const v2, 0x182b8

    const v3, 0x1869f

    invoke-direct {v0, v2, v3}, Lcom/android/server/am/ProcessList$IsolatedUidRange;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    new-instance v0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;-><init>(Lcom/android/server/am/ProcessList;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessList$MyProcessMap;-><init>(Lcom/android/server/am/ProcessList;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    invoke-virtual {p0, v1, v1, v1}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x64
        0xc8
        0xfa
        0x384
        0x3b6
    .end array-data

    :array_1
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    :array_2
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0xa

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v1, 0xa

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 0

    sub-int/2addr p1, p4

    if-nez p1, :cond_2

    if-eqz p5, :cond_0

    return-object p2

    :cond_0
    if-nez p3, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 p2, 0xa

    const-string p3, "+"

    if-ge p1, p2, :cond_4

    invoke-static {p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz p5, :cond_3

    goto :goto_0

    :cond_3
    const-string p3, "+ "

    :goto_0
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p0, p3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkSlow(JLjava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x32

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Slow operation: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms so far, now at "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static computeGidsForProcess(IIZ[I)[I
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v1

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getCacheAppGid(I)I

    move-result v2

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v3

    array-length v4, p3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget v7, p3, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    if-eq v1, p3, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eq v2, p3, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eq v3, p3, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 p3, 0x4

    const/16 v1, 0x437

    const/4 v2, 0x3

    if-eq p0, p3, :cond_4

    if-ne p0, v2, :cond_5

    :cond_4
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    const/16 v3, 0x3f7

    invoke-static {p3, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p3, 0x436

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 p3, 0x2

    if-ne p0, p3, :cond_6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-ne p0, v2, :cond_7

    const/16 p0, 0x3ff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-nez p1, :cond_7

    const/16 p1, 0x5f

    invoke-static {p1, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x60

    invoke-static {p1, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x61

    invoke-static {p1, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x62

    invoke-static {p1, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x63

    invoke-static {p1, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz p2, :cond_8

    const/16 p0, 0x435

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p1, p0, [I

    :goto_1
    if-ge v5, p0, :cond_9

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_9
    return-object p1
.end method

.method public static dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p3, 0x23

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(C)V

    const/16 p3, 0xa

    const/16 v0, 0x20

    if-ge p1, p3, :cond_0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p1, p1, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-object p1, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p1, p1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    invoke-static {p1}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-object p1, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p1, p1, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    invoke-static {p0, p1}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/io/PrintWriter;I)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    if-eqz v0, :cond_8

    :cond_1
    const-string v0, " act:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string/jumbo p3, "activities"

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move p3, v1

    :cond_2
    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-boolean p2, p2, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    const-string/jumbo v0, "|"

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo p2, "recents"

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move p3, v1

    :cond_4
    iget-boolean p2, p1, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    const-string/jumbo p2, "client"

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move v1, p3

    :goto_0
    iget-boolean p1, p1, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    if-eqz p1, :cond_8

    if-eqz v1, :cond_7

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    const-string/jumbo p1, "treated"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public static dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;ZLjava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-static {v3, v2}, Lcom/android/server/am/ProcessList;->sortProcessOomList(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/android/server/am/ActivityManagerService;->mLastPowerCheckUptime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_0
    if-ltz v6, :cond_16

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v10, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget v11, v9, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object v11

    iget v13, v9, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    const/4 v14, -0x2

    const/16 v15, 0x41

    if-eq v13, v14, :cond_7

    if-eqz v13, :cond_6

    if-eq v13, v7, :cond_5

    const/4 v14, 0x2

    if-eq v13, v14, :cond_4

    const/4 v14, 0x3

    if-eq v13, v14, :cond_3

    const/4 v14, 0x4

    if-eq v13, v14, :cond_2

    const/4 v14, 0x6

    if-eq v13, v14, :cond_1

    const/4 v14, 0x7

    if-eq v13, v14, :cond_4

    const/16 v13, 0x3f

    goto :goto_1

    :cond_1
    const/16 v13, 0x4d

    goto :goto_1

    :cond_2
    const/16 v13, 0x42

    goto :goto_1

    :cond_3
    const/16 v13, 0x54

    goto :goto_1

    :cond_4
    const/16 v13, 0x46

    goto :goto_1

    :cond_5
    const/16 v13, 0x52

    goto :goto_1

    :cond_6
    const/16 v13, 0x62

    goto :goto_1

    :cond_7
    move v13, v15

    :goto_1
    iget-boolean v14, v9, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    move/from16 p4, v7

    if-eqz v14, :cond_8

    goto :goto_2

    :cond_8
    iget-boolean v14, v10, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    if-eqz v14, :cond_9

    const/16 v15, 0x53

    goto :goto_2

    :cond_9
    const/16 v15, 0x20

    :goto_2
    iget v14, v9, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    invoke-static {v14}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v14

    const-string v12, "    "

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v8, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-eqz v7, :cond_a

    const-string/jumbo v7, "PERS"

    goto :goto_3

    :cond_a
    const-string/jumbo v7, "Proc"

    :goto_3
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " #"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v7, v2

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v7, v2

    const/16 v2, 0xa

    if-ge v7, v2, :cond_b

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_4

    :cond_b
    const/16 v2, 0x20

    :goto_4
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(C)V

    const/16 v7, 0x2f

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    iget v7, v9, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    invoke-static {v0, v7}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/io/PrintWriter;I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    const-string v7, " t:"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget v7, v7, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    const/16 v11, 0xa

    if-ge v7, v11, :cond_c

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    :cond_c
    iget-object v7, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget v7, v7, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v9, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v7, 0x29

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(C)V

    iget-object v7, v9, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    if-nez v7, :cond_d

    iget-object v7, v9, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    if-eqz v7, :cond_12

    :cond_d
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v9, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    instance-of v11, v7, Landroid/content/ComponentName;

    const-string/jumbo v13, "{null}"

    if-eqz v11, :cond_e

    check-cast v7, Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    if-eqz v7, :cond_f

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_5
    const-string v7, "<="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v9, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    instance-of v11, v7, Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_10

    const-string/jumbo v7, "Proc{"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v9, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "}"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_11
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_12
    :goto_6
    if-eqz p3, :cond_15

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "oom: max="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v9, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " curRaw="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v9, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " setRaw="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v9, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " cur="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v9, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " set="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v9, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    const-string/jumbo v13, "state: cur="

    invoke-static {v0, v11, v12, v12, v13}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v11, v9, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    invoke-static {v11}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v9, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    invoke-static {v7}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v7}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v7

    if-eqz v7, :cond_13

    const-string v7, " lastPss="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const-wide/16 v17, 0x400

    iget-wide v13, v7, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    mul-long v13, v13, v17

    invoke-static {v0, v13, v14}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v7, " lastSwapPss="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-wide v13, v7, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    mul-long v13, v13, v17

    invoke-static {v0, v13, v14}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v7, " lastCachedPss="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-wide v13, v7, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    mul-long v13, v13, v17

    invoke-static {v0, v13, v14}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    goto :goto_7

    :cond_13
    const-wide/16 v17, 0x400

    const-string v7, " lastRss="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-wide v13, v7, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    mul-long v13, v13, v17

    invoke-static {v0, v13, v14}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v7, " lastCachedRss="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-wide v13, v7, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedRss:J

    mul-long v13, v13, v17

    invoke-static {v0, v13, v14}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    :goto_7
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "cached="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " empty="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v9, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/16 v11, 0x13

    if-lt v7, v11, :cond_14

    move/from16 v7, p4

    goto :goto_8

    :cond_14
    const/4 v7, 0x0

    :goto_8
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " hasAboveClient="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v10, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Z)V

    iget v7, v9, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    const/16 v11, 0xa

    if-lt v7, v11, :cond_15

    iget-object v7, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmp-long v7, v9, v13

    if-eqz v7, :cond_15

    cmp-long v7, v4, v13

    if-lez v7, :cond_15

    iget-object v7, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    sub-long/2addr v7, v9

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v9, "run cpu over "

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v9, " used "

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v9, 0x64

    mul-long/2addr v7, v9

    div-long/2addr v7, v4

    invoke-virtual {v0, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    const-string v2, "%)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_15
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v2, p2

    move/from16 v7, p4

    goto/16 :goto_0

    :cond_16
    :goto_9
    return-void
.end method

.method public static freezePackageCgroup(IZ)Z
    .locals 4

    :try_start_0
    invoke-static {p0, p1}, Landroid/os/Process;->freezeCgroupUid(IZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    const-string/jumbo p1, "freeze"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "unfreeze"

    :goto_0
    const-string/jumbo v1, "Unable to "

    const-string v2, " cgroup uid: "

    const-string v3, ": "

    invoke-static {p0, v1, p1, v2, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static final getLmkdKillCount(II)Ljava/lang/Integer;
    .locals 3

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    if-ne p0, v2, :cond_0

    new-instance p0, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;
    .locals 11

    new-instance v0, Landroid/util/ArrayMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    const-string v5, "ActivityManager"

    if-nez v4, :cond_0

    const-string/jumbo v4, "Unknown package:"

    invoke-static {v4, v3, v5}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-gtz v4, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " inode == 0 or app uninstalled with keep-data"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static killProcessGroup(II)V
    .locals 2

    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-eqz v0, :cond_0

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string v0, "ActivityManager"

    const-string v1, "Asked to kill process group before system bringup!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Landroid/os/Process;->killProcessGroup(II)I

    return-void
.end method

.method public static makeOomAdjString(IZ)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x384

    if-lt p0, v0, :cond_0

    const-string/jumbo v1, "cch"

    const-string/jumbo v3, "cch"

    const-string v4, "   "

    const/16 v5, 0x384

    move v2, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    move v1, p0

    move v5, p1

    const/16 p0, 0x352

    if-lt v1, p0, :cond_1

    const-string/jumbo v0, "picked "

    const-string/jumbo v2, "picked"

    const/4 v3, 0x0

    const/16 v4, 0x352

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 p0, 0x320

    if-lt v1, p0, :cond_2

    const-string/jumbo v0, "svcb  "

    const-string/jumbo v2, "svcb"

    const/4 v3, 0x0

    const/16 v4, 0x320

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 p0, 0x2bc

    if-lt v1, p0, :cond_3

    const-string/jumbo v0, "prev  "

    const-string/jumbo v2, "prev"

    const/4 v3, 0x0

    const/16 v4, 0x2bc

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 p0, 0x258

    if-lt v1, p0, :cond_4

    const-string/jumbo v0, "home  "

    const-string/jumbo v2, "home"

    const/4 v3, 0x0

    const/16 v4, 0x258

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 p0, 0x1f4

    if-lt v1, p0, :cond_5

    const-string/jumbo v0, "svc   "

    const-string/jumbo v2, "svc"

    const/4 v3, 0x0

    const/16 v4, 0x1f4

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/16 p0, 0x190

    if-lt v1, p0, :cond_6

    const-string/jumbo v0, "hvy   "

    const-string/jumbo v2, "hvy"

    const/4 v3, 0x0

    const/16 v4, 0x190

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const/16 p0, 0x12c

    if-lt v1, p0, :cond_7

    const-string/jumbo v0, "bkup  "

    const-string/jumbo v2, "bkup"

    const/4 v3, 0x0

    const/16 v4, 0x12c

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const/16 p0, 0xfa

    if-lt v1, p0, :cond_8

    const-string/jumbo v0, "prcl  "

    const-string/jumbo v2, "prcl"

    const/4 v3, 0x0

    const/16 v4, 0xfa

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const/16 p0, 0xe1

    if-lt v1, p0, :cond_9

    const-string/jumbo v0, "prcm  "

    const-string/jumbo v2, "prcm"

    const/4 v3, 0x0

    const/16 v4, 0xe1

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/16 p0, 0xc8

    if-lt v1, p0, :cond_a

    const-string/jumbo v0, "prcp  "

    const-string/jumbo v2, "prcp"

    const/4 v3, 0x0

    const/16 v4, 0xc8

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const/16 p0, 0x64

    if-lt v1, p0, :cond_b

    const-string/jumbo v0, "vis"

    const-string/jumbo v2, "vis"

    const-string v3, "   "

    const/16 v4, 0x64

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    if-ltz v1, :cond_c

    const-string/jumbo v0, "fg "

    const-string/jumbo v2, "fg "

    const-string v3, "   "

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const/16 p0, -0x2bc

    if-lt v1, p0, :cond_d

    const-string/jumbo v0, "psvc  "

    const-string/jumbo v2, "psvc"

    const/4 v3, 0x0

    const/16 v4, -0x2bc

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/16 p0, -0x320

    if-lt v1, p0, :cond_e

    const-string/jumbo v0, "pers  "

    const-string/jumbo v2, "pers"

    const/4 v3, 0x0

    const/16 v4, -0x320

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    const/16 p0, -0x384

    if-lt v1, p0, :cond_f

    const-string/jumbo v0, "sys   "

    const-string/jumbo v2, "sys"

    const/4 v3, 0x0

    const/16 v4, -0x384

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/16 p0, -0x3e8

    if-lt v1, p0, :cond_10

    const-string/jumbo v0, "ntv  "

    const-string/jumbo v2, "ntv"

    const/4 v3, 0x0

    const/16 v4, -0x3e8

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeProcStateProtoEnum(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x3e6

    return p0

    :pswitch_0
    const/16 p0, 0x3fb

    return p0

    :pswitch_1
    const/16 p0, 0x3fa

    return p0

    :pswitch_2
    const/16 p0, 0x3f9

    return p0

    :pswitch_3
    const/16 p0, 0x3f8

    return p0

    :pswitch_4
    const/16 p0, 0x3f7

    return p0

    :pswitch_5
    const/16 p0, 0x3f6

    return p0

    :pswitch_6
    const/16 p0, 0x3f5

    return p0

    :pswitch_7
    const/16 p0, 0x3f4

    return p0

    :pswitch_8
    const/16 p0, 0x3f3

    return p0

    :pswitch_9
    const/16 p0, 0x3f2

    return p0

    :pswitch_a
    const/16 p0, 0x3f1

    return p0

    :pswitch_b
    const/16 p0, 0x3f0

    return p0

    :pswitch_c
    const/16 p0, 0x3ef

    return p0

    :pswitch_d
    const/16 p0, 0x3ee

    return p0

    :pswitch_e
    const/16 p0, 0x3ed

    return p0

    :pswitch_f
    const/16 p0, 0x3ec

    return p0

    :pswitch_10
    const/16 p0, 0x3eb

    return p0

    :pswitch_11
    const/16 p0, 0x3fc

    return p0

    :pswitch_12
    const/16 p0, 0x3ea

    return p0

    :pswitch_13
    const/16 p0, 0x3e9

    return p0

    :pswitch_14
    const/16 p0, 0x3e8

    return p0

    :pswitch_15
    const/16 p0, 0x3e7

    return p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method public static makeProcStateString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 1

    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget p0, v0, p0

    aget p1, v0, p1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final remove(I)V
    .locals 2

    if-gtz p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    return-void
.end method

.method public static final setLmkdParameter(II)V
    .locals 2

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    return-void
.end method

.method public static setOomAdj(IIII)V
    .locals 5

    if-gtz p0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_REENTRY_LMK:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v4, 0x65

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    goto :goto_0

    :cond_2
    const/16 p3, 0x10

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {p3, v3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0xfa

    cmp-long p1, v2, v0

    if-lez p1, :cond_3

    const-string/jumbo p1, "SLOW OOM ADJ: "

    const-string/jumbo p3, "ms for pid "

    invoke-static {p0, p1, v2, v3, p3}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public static sortProcessOomList(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    if-eqz p0, :cond_0

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v3, p0}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Landroid/util/Pair;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/android/server/am/ProcessList$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .locals 7

    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    iget-object v1, v0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    const/16 v1, 0xfa1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    iget-object v1, v0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v4, v0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    if-eqz v4, :cond_1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :try_start_2
    iget-object v4, v0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    iget-object v0, v0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    :try_start_3
    monitor-exit v1

    goto :goto_2

    :catch_0
    monitor-exit v1

    move v0, v3

    :goto_2
    if-nez v0, :cond_3

    return v3

    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_3
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    if-nez p1, :cond_4

    invoke-virtual {v0, p0}, Lcom/android/server/am/LmkdConnection;->write(Ljava/nio/ByteBuffer;)Z

    move-result p0

    goto :goto_6

    :cond_4
    iget-object v4, v0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    iput-object p1, v0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Lcom/android/server/am/LmkdConnection;->write(Ljava/nio/ByteBuffer;)Z

    move-result p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p0, :cond_6

    :try_start_5
    iget-object p0, v0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    iget-object p0, v0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    move v3, v2

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_7

    :catch_1
    :cond_6
    :goto_5
    const/4 p0, 0x0

    :try_start_6
    iput-object p0, v0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    monitor-exit v4

    move p0, v3

    :goto_6
    return p0

    :goto_7
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0
.end method


# virtual methods
.method public final addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 13

    const-string v0, "Already have existing proc "

    const-string v1, "Existing proc "

    const-string/jumbo v2, "Make "

    const-string/jumbo v3, "Re-adding persistent process "

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v4

    :try_start_0
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, v5}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    const/16 v6, -0x320

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, p1, :cond_0

    iget-boolean v9, p1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-eqz v9, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    iput-boolean v7, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    iget-object v0, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    if-eqz v5, :cond_3

    iget-boolean v3, v5, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-eqz v3, :cond_1

    const-string v3, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " persistent because it was :"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    iput v3, v2, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    iput-boolean v8, p1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iput-boolean v8, v3, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    iput v6, v2, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    :cond_1
    iget-boolean v2, v5, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-eqz v2, :cond_2

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " was killed "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, v5, Lcom/android/server/am/ProcessRecord;->mKillTime:J

    sub-long/2addr v9, v11

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms ago when adding "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " when adding "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/android/server/am/UidRecord;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {v0, v1}, Lcom/android/server/am/UidRecord;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleTempAllowlist:[I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-gez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPendingTempAllowlist:Lcom/android/server/am/PendingTempAllowlists;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v1, Lcom/android/server/am/PendingTempAllowlists;->mPendingTempAllowlist:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, v1, Lcom/android/server/am/PendingTempAllowlists;->mPendingTempAllowlist:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    monitor-exit v3

    if-ltz v1, :cond_5

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw p0

    :cond_4
    :goto_1
    iput-boolean v8, v0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    iput-boolean v8, v0, Lcom/android/server/am/UidRecord;->mSetAllowList:Z

    :cond_5
    const-string/jumbo v1, "android.permission.INTERNET"

    iget v2, v0, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-static {v1, v2}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    move v8, v7

    :goto_2
    iput-boolean v8, v0, Lcom/android/server/am/UidRecord;->hasInternetPermission:Z

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    iget v1, v0, Lcom/android/server/am/UidRecord;->mUid:I

    const/16 v2, 0x7564

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(II)I

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v0, Lcom/android/server/am/UidRecord;->mUid:I

    iget v3, v0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    iget v5, v0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessStateAndCapability(III)V

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v0, Lcom/android/server/am/UidRecord;->mUid:I

    iget v3, v0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(II)V

    :cond_7
    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    iget-object v0, v0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iput v7, p1, Lcom/android/server/am/ProcessRecord;->mRenderThreadTid:I

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/am/ProcessList$MyProcessMap;->put(ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SUPPORT_IQI:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "com.att.iqi"

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iput v6, v0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    :cond_8
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p1}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_b
    return-void

    :goto_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 25

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/server/am/ProcessList;->mIsDisplayChanged:Z

    if-eqz v1, :cond_f

    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-virtual {v3, v2, v1}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    iget v3, v1, Landroid/graphics/Point;->x:I

    if-eqz v3, :cond_f

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-eqz v4, :cond_f

    iput v3, v0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    iput v4, v0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    iput-boolean v5, v0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    iput-object v3, v0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    :cond_1
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    iget-object v3, v3, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    const-string v8, "DynamicHiddenApp_BGSlotManager"

    const/4 v9, 0x2

    if-eqz v3, :cond_c

    const-string/jumbo v10, "max_snapshot_num"

    const-string v11, "0"

    invoke-static {v10, v11}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    iget-object v3, v3, Lcom/android/server/bgslotmanager/BGSlotManager;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    iget-object v11, v3, Lcom/android/server/bgslotmanager/MemInfoGetter;->memoryMBToGBPool:[[I

    array-length v12, v11

    move v13, v2

    :goto_0
    if-ge v13, v12, :cond_3

    aget-object v14, v11, v13

    aget v15, v14, v2

    move/from16 p1, v5

    move/from16 v16, v6

    int-to-long v5, v15

    move-object/from16 v17, v8

    iget-wide v7, v3, Lcom/android/server/bgslotmanager/MemInfoGetter;->mTotalMemMb:J

    cmp-long v5, v7, v5

    if-lez v5, :cond_2

    aget v3, v14, p1

    goto :goto_1

    :cond_2
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, p1

    move/from16 v6, v16

    move-object/from16 v8, v17

    goto :goto_0

    :cond_3
    move/from16 p1, v5

    move/from16 v16, v6

    move-object/from16 v17, v8

    move v3, v2

    :goto_1
    mul-int v4, v4, v16

    const/4 v5, 0x3

    filled-new-array {v9, v5, v5, v5}, [I

    move-result-object v18

    const/4 v6, 0x5

    filled-new-array {v5, v6, v5, v5}, [I

    move-result-object v19

    const/4 v7, 0x4

    const/16 v8, 0x8

    filled-new-array {v7, v8, v7, v5}, [I

    move-result-object v20

    const/4 v11, 0x6

    const/16 v12, 0xa

    filled-new-array {v11, v12, v11, v5}, [I

    move-result-object v21

    filled-new-array {v8, v12, v8, v7}, [I

    move-result-object v22

    const/16 v7, 0xc

    const/16 v8, 0x14

    filled-new-array {v7, v8, v8, v8}, [I

    move-result-object v23

    const/16 v7, 0x10

    filled-new-array {v7, v8, v8, v8}, [I

    move-result-object v24

    filled-new-array/range {v18 .. v24}, [[I

    move-result-object v7

    const-string/jumbo v8, "physical memory: "

    if-eqz v4, :cond_9

    if-eqz v3, :cond_9

    const-string/jumbo v11, "start update max task snapshot number"

    move-object/from16 v12, v17

    invoke-static {v12, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v15, 0x384000

    if-lt v4, v15, :cond_4

    move v4, v5

    goto :goto_2

    :cond_4
    const v11, 0x1fa400

    if-lt v4, v11, :cond_5

    move v4, v9

    goto :goto_2

    :cond_5
    move/from16 v4, p1

    :goto_2
    move v11, v2

    :goto_3
    const/4 v13, 0x7

    if-ge v11, v13, :cond_7

    aget-object v13, v7, v11

    aget v14, v13, v2

    if-ne v3, v14, :cond_6

    aget v7, v13, v4

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "update max task snapshot number, physical memory: "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", current resolution : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v7

    move/from16 v7, p1

    goto :goto_4

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_7
    move v7, v2

    move v11, v7

    :goto_4
    if-nez v7, :cond_8

    const-string/jumbo v7, "can not update max task snapshot number, due to unidentified physical memory"

    invoke-static {v12, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", current resolution: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v4, v12}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_5

    :cond_8
    move v6, v11

    goto :goto_5

    :cond_9
    move-object/from16 v12, v17

    const-string/jumbo v7, "can not update max task snapshot number, due to resolution or physical memory"

    invoke-static {v12, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", resolution: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v4, v12}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    move v4, v2

    :goto_5
    if-lez v10, :cond_a

    goto :goto_6

    :cond_a
    move v10, v6

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "TaskSnapShot : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", CurRes : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput v10, Lcom/android/server/wm/SnapshotCache;->sMaxSnapshotCache:I

    if-gt v10, v5, :cond_b

    mul-int/2addr v10, v9

    sput v10, Lcom/android/server/wm/TaskSnapshotCache;->sSplitModeMaxCacheSize:I

    goto :goto_7

    :cond_b
    sput v2, Lcom/android/server/wm/TaskSnapshotCache;->sSplitModeMaxCacheSize:I

    goto :goto_7

    :cond_c
    move-object v12, v8

    :goto_7
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    iget-object v3, v3, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    if-eqz v3, :cond_e

    sget-boolean v6, Lcom/android/server/bgslotmanager/BGSlotManager;->HRT_MaxCached_Enable:Z

    if-eqz v6, :cond_d

    mul-int/2addr v4, v5

    const v15, 0x384000

    if-lt v4, v15, :cond_d

    iget v4, v3, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    or-int/2addr v4, v9

    iput v4, v3, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    invoke-virtual {v3}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    goto :goto_8

    :cond_d
    iget v4, v3, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    and-int/lit8 v4, v4, -0x3

    iput v4, v3, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    invoke-virtual {v3}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    const-string v3, "HighResBGSlot Recovered"

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_8
    iput-boolean v2, v0, Lcom/android/server/am/ProcessList;->mIsDisplayChanged:Z

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    if-eqz v0, :cond_f

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/KillPolicyManager;->mDisplaySizeStr:Ljava/lang/String;

    :cond_f
    return-void
.end method

.method public final collectProcessesLOSP(IZ[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    if-eqz p3, :cond_5

    array-length v0, p3

    if-le v0, p1, :cond_5

    aget-object v0, p3, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    aget-object v1, p3, p1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, -0x1

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-lez v4, :cond_0

    if-ne v4, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_1

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    if-eqz v4, :cond_1

    aget-object v5, p3, p1

    invoke-virtual {v4, v5}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aget-object v5, p3, p1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    return-object v0

    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public final createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;
    .locals 8

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    iget v5, v0, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AppZygote;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    iget v3, v3, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    iget-object v0, v0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAppRanges:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget v3, v0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    iget v0, v0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    invoke-static {v2, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    new-instance v3, Landroid/content/pm/ApplicationInfo;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v3, v0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    iget-object v0, v0, Lcom/android/server/am/HostingRecord;->mDefiningPackageName:Ljava/lang/String;

    iput-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v2, Landroid/os/AppZygote;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    invoke-direct/range {v2 .. v7}, Landroid/os/AppZygote;-><init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;III)V

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3, v5, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v3, 0x47

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, p0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final dispatchProcessDied(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    :catch_0
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IProcessObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2, p1, p2}, Landroid/app/IProcessObserver;->onProcessDied(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final dispatchProcessesChanged()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    array-length v2, v2

    if-ge v2, v1, :cond_0

    new-array v2, v1, [Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_0
    :cond_1
    const/4 v3, 0x0

    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/IProcessObserver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_1

    :goto_1
    if-ge v3, v1, :cond_1

    :try_start_2
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    aget-object v5, v5, v3

    iget v6, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    iget v6, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    iget v7, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    iget-boolean v8, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    invoke-interface {v4, v6, v7, v8}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_2
    :goto_2
    iget v6, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_3

    iget v6, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    iget v7, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    iget v5, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundServiceTypes:I

    invoke-interface {v4, v6, v7, v5}, Landroid/app/IProcessObserver;->onForegroundServicesChanged(III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    :goto_3
    if-ge v3, v1, :cond_5

    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catchall_2
    move-exception p0

    goto :goto_4

    :cond_5
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :goto_5
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :goto_6
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final dumpLruLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "  "

    if-nez p3, :cond_0

    const-string p3, "ACTIVITY MANAGER LRU PROCESSES (dumpsys activity lru)"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_a

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_1

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v3, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Raw LRU list (dumpsys activity lru):"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 p3, 0x1

    sub-int/2addr v0, p3

    move v2, p3

    :goto_2
    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    const/4 v4, 0x0

    if-lt v0, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_2

    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Activities:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v4

    :cond_3
    invoke-static {p1, v0, v3, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    move v2, p3

    :goto_4
    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-lt v0, v3, :cond_7

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_5

    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_5

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Services:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v4

    :cond_6
    invoke-static {p1, v0, v3, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_7
    :goto_6
    if-ltz v0, :cond_a

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_8

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v3, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_7

    :cond_8
    if-eqz p3, :cond_9

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "Other:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, v4

    :cond_9
    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_a
    return-void
.end method

.method public final dumpOomLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_0
    const-string p3, "  OOM levels:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p3, "SYSTEM_ADJ"

    const/16 v0, -0x384

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string/jumbo p3, "PERSISTENT_PROC_ADJ"

    const/16 v0, -0x320

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string/jumbo p3, "PERSISTENT_SERVICE_ADJ"

    const/16 v0, -0x2bc

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string p3, "FOREGROUND_APP_ADJ"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string/jumbo p3, "VISIBLE_APP_ADJ"

    const/16 v0, 0x64

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string/jumbo p3, "PERCEPTIBLE_APP_ADJ"

    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string/jumbo p3, "PERCEPTIBLE_MEDIUM_APP_ADJ"

    const/16 v0, 0xe1

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string/jumbo p3, "PERCEPTIBLE_LOW_APP_ADJ"

    const/16 v0, 0xfa

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string p3, "BACKUP_APP_ADJ"

    const/16 v0, 0x12c

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string p3, "HEAVY_WEIGHT_APP_ADJ"

    const/16 v0, 0x190

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string/jumbo p3, "SERVICE_ADJ"

    const/16 v0, 0x1f4

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string p3, "HOME_APP_ADJ"

    const/16 v0, 0x258

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string/jumbo p3, "PREVIOUS_APP_ADJ"

    const/16 v0, 0x2bc

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string/jumbo p3, "SERVICE_B_ADJ"

    const/16 v0, 0x320

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string/jumbo p3, "PICKED_ADJ"

    const/16 v0, 0x352

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string p3, "CACHED_APP_MIN_ADJ"

    const/16 v0, 0x384

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string p3, "CACHED_APP_MAX_ADJ"

    const/16 v0, 0x3e7

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p3, "  Process OOM control ("

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string p3, " total, non-act at "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget v0, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr p3, v0

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string p3, ", non-svc at "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget v0, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr p3, v0

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string p3, "):"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {p1, p3, v0, v1, p2}, Lcom/android/server/am/ProcessList;->dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;ZLjava/lang/String;)V

    move p3, v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/AppProfiler;->dumpProcessesToGc(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    const-string p2, "  mHeavyWeightProcess: "

    const-string p3, "  mPreviousProcess: "

    const-string v0, "  mHomeProcess: "

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz p3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final dumpProcessesLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    const-string v1, "ACTIVITY MANAGER RUNNING PROCESSES (dumpsys activity processes)"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-nez p3, :cond_1

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v6, v3

    move v8, v6

    goto/16 :goto_5

    :cond_1
    :goto_0
    iget-object v6, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v7, v3

    move v8, v7

    move v9, v8

    :goto_1
    if-ge v7, v6, :cond_7

    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v10}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    move v12, v3

    :goto_2
    if-ge v12, v11, :cond_6

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_2

    iget-object v14, v13, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v14, v4}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_4

    :cond_2
    if-nez v8, :cond_3

    const-string v8, "  All known processes:"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v8, 0x1

    :cond_3
    iget-boolean v14, v13, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-eqz v14, :cond_4

    const-string v14, "  *PERS*"

    goto :goto_3

    :cond_4
    const-string v14, "  *APP*"

    :goto_3
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, " UID "

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(I)V

    const-string v14, " "

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v14, "    "

    invoke-virtual {v13, v2, v14}, Lcom/android/server/am/ProcessRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-boolean v13, v13, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-eqz v13, :cond_5

    add-int/lit8 v9, v9, 0x1

    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    move v6, v9

    :goto_5
    iget-object v7, v0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-lez v7, :cond_b

    iget-object v7, v0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    move v9, v3

    move v10, v9

    :goto_6
    if-ge v9, v7, :cond_b

    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_8

    iget-object v12, v11, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v12, v4}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_7

    :cond_8
    if-nez v10, :cond_a

    if-eqz v8, :cond_9

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    :cond_9
    const-string v8, "  Isolated process list (sorted by uid):"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v8, 0x1

    const/4 v10, 0x1

    :cond_a
    const-string v12, "    Isolated #"

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string v12, ": "

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_b
    iget-object v7, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v7, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_14

    move v10, v3

    move v11, v10

    :goto_8
    if-ge v10, v9, :cond_14

    iget-object v12, v7, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v4, :cond_c

    iget-object v13, v12, Lcom/android/server/am/ActiveInstrumentation;->mClass:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    iget-object v13, v12, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    goto/16 :goto_a

    :cond_c
    if-nez v11, :cond_e

    if-eqz v8, :cond_d

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    :cond_d
    const-string v8, "  Active instrumentation:"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v8, 0x1

    const/4 v11, 0x1

    :cond_e
    const-string v13, "    Instrumentation #"

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v13, ": "

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v14, "      "

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v15, "mClass="

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v15, v12, Lcom/android/server/am/ActiveInstrumentation;->mClass:Landroid/content/ComponentName;

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v15, " mFinished="

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v15, v12, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v15, "mRunningProcesses:"

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v15, v3

    :goto_9
    iget-object v1, v12, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v15, v1, :cond_f

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v12, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_f
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mTargetProcesses="

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v12, Lcom/android/server/am/ActiveInstrumentation;->mTargetProcesses:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v13, "mTargetInfo="

    invoke-static {v2, v1, v14, v13}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v12, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v1, v12, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_10

    new-instance v13, Landroid/util/PrintWriterPrinter;

    invoke-direct {v13, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v15, "        "

    invoke-virtual {v1, v13, v15, v3}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    :cond_10
    iget-object v1, v12, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mProfileFile="

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v12, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11
    iget-object v1, v12, Lcom/android/server/am/ActiveInstrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    if-eqz v1, :cond_12

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mWatcher="

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v12, Lcom/android/server/am/ActiveInstrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_12
    iget-object v1, v12, Lcom/android/server/am/ActiveInstrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    if-eqz v1, :cond_13

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mUiAutomationConnection="

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v12, Lcom/android/server/am/ActiveInstrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_13
    const-string/jumbo v1, "mHasBackgroundActivityStartsPermission="

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v12, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundActivityStartsPermission:Z

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v1, "mHasBackgroundForegroundServiceStartsPermission="

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v12, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundForegroundServiceStartsPermission:Z

    const-string/jumbo v13, "mArguments="

    invoke-static {v2, v14, v13, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v12, Lcom/android/server/am/ActiveInstrumentation;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_8

    :cond_14
    invoke-virtual {v0, v2, v4, v8}, Lcom/android/server/am/ProcessList;->dumpOomLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget-object v1, v1, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_15

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    const-string/jumbo v7, "UID states:"

    invoke-virtual {v1, v5, v2, v4, v7}, Lcom/android/server/am/ActiveUids;->dump(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_15
    if-eqz p3, :cond_16

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUidObserverController:Lcom/android/server/am/UidObserverController;

    const-string/jumbo v7, "UID validation:"

    iget-object v8, v1, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v1, v1, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1, v5, v2, v4, v7}, Lcom/android/server/am/ActiveUids;->dump(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    monitor-exit v8

    goto :goto_b

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_16
    :goto_b
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  "

    invoke-virtual {v0, v2, v4, v1}, Lcom/android/server/am/ProcessList;->dumpLruLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_17

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  Process LRU list (sorted by oom_adj, "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " total, non-act at "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v7, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr v1, v7

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ", non-svc at "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v7, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v1, v7

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "):"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-static {v2, v1, v7, v3, v4}, Lcom/android/server/am/ProcessList;->dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;ZLjava/lang/String;)V

    :cond_17
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v1, p1

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->dumpOtherProcessesInfoLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;II)V

    return-void
.end method

.method public final enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    iget v2, v1, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_2
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    iput p1, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    iput p2, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 p2, 0x1f

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_4
    return-object v1
.end method

.method public final fillInProcMemInfoLOSP(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V
    .locals 9

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/2addr v0, v3

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    :cond_1
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/2addr v0, v1

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    const/4 v4, 0x4

    if-eqz v0, :cond_3

    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/2addr v0, v4

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    :cond_3
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget v0, v0, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v5, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    invoke-static {v5, p3}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForTargetSdk(II)I

    move-result p3

    iput p3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x190

    if-ne p3, v6, :cond_4

    iget p3, v0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iput p3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    goto :goto_1

    :cond_4
    iput v2, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    :goto_1
    iget p3, v0, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    iput p3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    iput v5, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p3}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object p3

    if-ne p1, p3, :cond_5

    move p3, v3

    goto :goto_2

    :cond_5
    move p3, v2

    :goto_2
    iput-boolean p3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    iget-wide v5, p1, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    iput-wide v5, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {p3}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-wide v5, p3, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    iput-wide v5, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastPss:J

    iget-wide v5, p3, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    iput-wide v5, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastSwapPss:J

    iget-object p3, p3, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningPss()[J

    move-result-object p3

    aget-wide v5, p3, v2

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_7

    aget-wide v0, p3, v1

    iput-wide v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->avgPss:J

    aget-wide v0, p3, v3

    iput-wide v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->minPss:J

    const/4 v0, 0x3

    aget-wide v0, p3, v0

    iput-wide v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->maxPss:J

    goto :goto_3

    :cond_6
    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-wide v0, p3, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    iput-wide v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastPss:J

    :cond_7
    :goto_3
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-nez p3, :cond_8

    sget-boolean p3, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    sget-object p3, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    iput-object p3, p0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    :cond_8
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    if-eqz p0, :cond_b

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-lez p0, :cond_9

    if-lt p0, v4, :cond_a

    :cond_9
    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz p0, :cond_d

    :cond_a
    :goto_4
    move v2, v3

    goto :goto_5

    :cond_b
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-lez p0, :cond_c

    if-lt p0, v4, :cond_a

    :cond_c
    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz p0, :cond_d

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object p3, Lcom/android/server/am/BGProtectManager$exceptFlag;->BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {p3}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result p3

    if-eq p0, p3, :cond_d

    goto :goto_4

    :cond_d
    :goto_5
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->isOnlyActCheck(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_6

    :cond_e
    move v3, v2

    :goto_6
    iput-boolean v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->isProtectedInPicked:Z

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    if-lez p0, :cond_f

    iget p0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 p0, p0, 0x8

    iput p0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    :cond_f
    return-void
.end method

.method public final findAppProcessLOSP(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 8

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v7, :cond_0

    iget-object v7, v7, Lcom/android/server/am/ApplicationThreadDeferred;->mBase:Landroid/app/IApplicationThread;

    invoke-interface {v7}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-ne v7, p1, :cond_0

    return-object v6

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "Can\'t find mystery application for "

    const-string v0, " from pid="

    invoke-static {p0, p2, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " uid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    return-object p0
.end method

.method public getBlockStateForUid(Lcom/android/server/am/UidRecord;)I
    .locals 4

    iget p0, p1, Lcom/android/server/am/UidRecord;->mCurProcState:I

    iget v0, p1, Lcom/android/server/am/UidRecord;->mCurCapability:I

    invoke-static {p0, v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    iget p0, p1, Lcom/android/server/am/UidRecord;->mCurProcState:I

    iget v2, p1, Lcom/android/server/am/UidRecord;->mCurCapability:I

    invoke-static {p0, v2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    iget v2, p1, Lcom/android/server/am/UidRecord;->mSetProcState:I

    iget v3, p1, Lcom/android/server/am/UidRecord;->mSetCapability:I

    invoke-static {v2, v3}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p1, Lcom/android/server/am/UidRecord;->mSetProcState:I

    iget p1, p1, Lcom/android/server/am/UidRecord;->mSetCapability:I

    invoke-static {v2, p1}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(II)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v1

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v0

    :goto_3
    if-nez p1, :cond_4

    if-eqz p0, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_5

    if-nez p0, :cond_5

    const/4 p0, 0x2

    return p0

    :cond_5
    return v1
.end method

.method public final getLRURecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->getLRURecordForAppLOSP(Landroid/os/IBinder;)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    return-object p0
.end method

.method public final getLRURecordForAppLOSP(Landroid/os/IBinder;)Lcom/android/server/am/ProcessRecord;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/android/server/am/ApplicationThreadDeferred;->mBase:Landroid/app/IApplicationThread;

    invoke-interface {v3}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getMemLevel(I)J
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v1

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    if-ge v0, v2, :cond_1

    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    aget p0, v3, v0

    :goto_1
    mul-int/lit16 p0, p0, 0x400

    int-to-long p0, p0

    return-wide p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length p0, v1

    add-int/lit8 p0, p0, -0x1

    aget p0, v3, p0

    goto :goto_1
.end method

.method public getProcessListSettingsListener()Lcom/android/server/am/ProcessList$ProcessListSettingsListener;
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessListSettingsListener:Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessListSettingsListener:Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    iget-object v2, v1, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    const-string/jumbo v3, "adservices"

    invoke-static {v3, v2, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessListSettingsListener:Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 5

    const/16 v0, 0x3e8

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3, p1}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    return-object p0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method public final getRunningAppProcessesLOSP(IIIZZ)Ljava/util/List;
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_9

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    if-nez p4, :cond_0

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v5, p1, :cond_8

    :cond_0
    if-nez p5, :cond_1

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v5, p2, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v5, :cond_8

    iget-boolean v5, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    if-nez v5, :cond_8

    iget-boolean v4, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    if-nez v4, :cond_8

    new-instance v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v7}, Lcom/android/server/am/PackageList;->getPackageList()[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgDeps:[Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, v2, v4, p3}, Lcom/android/server/am/ProcessList;->fillInProcMemInfoLOSP(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V

    iget-object v2, v3, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    instance-of v5, v2, Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_3

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    iput v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    iget v2, v3, Lcom/android/server/am/ProcessStateRecord;->mAdjSourceProcState:I

    invoke-static {v2}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v2

    iput v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    goto :goto_2

    :cond_3
    instance-of v5, v2, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v5, :cond_5

    check-cast v2, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    iget-object v2, v2, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v5, -0x1

    if-eqz v2, :cond_4

    iget v2, v2, Lcom/android/server/wm/WindowProcessController;->mPid:I

    goto :goto_1

    :cond_4
    move v2, v5

    :goto_1
    if-eq v2, v5, :cond_5

    iput v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    :cond_5
    :goto_2
    iget-object v2, v3, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    instance-of v3, v2, Landroid/content/ComponentName;

    if-eqz v3, :cond_6

    check-cast v2, Landroid/content/ComponentName;

    iput-object v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    :cond_6
    if-nez v1, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_9
    return-object v1
.end method

.method public final getSharedIsolatedProcess(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, p1, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUidProcStateLOSP(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 p0, 0x14

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    return p0
.end method

.method public final getUidProcessCapabilityLOSP(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    return p0
.end method

.method public final getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p0

    return-object p0
.end method

.method public final handlePrecedingAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    iput-object v2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method public final handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    .locals 14

    move/from16 v9, p2

    move/from16 v10, p3

    move-wide/from16 v3, p4

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "killedByAm=true;"

    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v5

    :goto_0
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v8, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p1, :cond_2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_1
    const-string/jumbo v6, "No entry in mProcessNames;"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v6, p1, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    if-nez v6, :cond_5

    iget-boolean v6, p1, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    if-eqz v6, :cond_3

    iget-wide v6, p1, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    cmp-long v6, v6, v3

    if-nez v6, :cond_3

    iput-boolean v13, p1, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    iput-boolean v12, p1, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Don\'t abort Starting process. It\'s Target Seq. App="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ActivityManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_4
    const-string/jumbo v6, "pendingStart=false;"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    iget-wide v6, p1, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    cmp-long v6, v6, v3

    if-lez v6, :cond_7

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "seq="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, p1, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",expected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    if-nez v3, :cond_7

    iput-boolean v13, p1, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    :cond_7
    move-object v3, v0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-interface {v0, v4, v6}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    if-eqz v4, :cond_9

    if-nez v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :cond_8
    const-string/jumbo v0, "Package is frozen;"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    throw v0

    :catch_1
    :goto_2
    if-nez v3, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    if-eqz v5, :cond_d

    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " start not valid, killing pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v12, p1, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "B|killProcessQuiet comm="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v4, "("

    const-string v6, ")"

    invoke-static {v9, v3, v4, v6, v0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v3

    :try_start_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-wide v6, v0, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    invoke-static {v9}, Landroid/os/Process;->killProcessQuiet(I)V

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-eqz v0, :cond_b

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3, v0}, Landroid/os/Process;->killProcessGroup(II)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "E|killProcessQuiet pss="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    :cond_b
    const/16 v0, 0xd

    invoke-virtual {p0, p1, v0, v0, v5}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjuster;->onProcessEndLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_c
    return v12

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v4, v3}, Lcom/android/server/am/BatteryStatsService;->noteProcessStart(ILjava/lang/String;)V

    iget-wide v3, p1, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    const-string/jumbo v0, "startProcess: done updating battery stats"

    invoke-static {v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->mStartUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->mStartUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    iget-object v7, v0, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    iget-object v0, v0, Lcom/android/server/am/HostingRecord;->mHostingName:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    iget-object v0, v0, Lcom/android/server/am/HostingRecord;->mHostingName:Ljava/lang/String;

    :goto_4
    move-object v8, v0

    goto :goto_5

    :cond_e
    const-string v0, ""

    goto :goto_4

    :goto_5
    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x753e

    invoke-static {v3, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v13, v9, v0}, Lcom/android/server/am/Pageboost;->onProcStatusChange(IILjava/lang/String;)V

    :try_start_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->mSeInfo:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface/range {v3 .. v9}, Landroid/content/pm/IPackageManager;->logAppProcessStartIfNeeded(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MNO_TMO_DEVICE_REPORTING:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, v0}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStart(ILjava/lang/String;)V

    :cond_f
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v9, v3}, Lcom/android/server/Watchdog;->processStarted(ILjava/lang/String;)V

    iget-wide v3, p1, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    const-string/jumbo v0, "startProcess: building log message"

    invoke-static {v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v3, "Start proc "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->mStartUid:I

    invoke-static {v0, v3}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    if-eqz v3, :cond_10

    const-string v3, " ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string v3, " for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    iget-object v3, v3, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    iget-object v3, v3, Lcom/android/server/am/HostingRecord;->mHostingName:Ljava/lang/String;

    if-eqz v3, :cond_11

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    iget-object v3, v3, Lcom/android/server/am/HostingRecord;->mHostingName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->mStartUid:I

    invoke-virtual {v3, v4, v0}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v3

    :try_start_4
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    iput-boolean v10, p1, Lcom/android/server/am/ProcessRecord;->mUsingWrapper:Z

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iput-boolean v10, v0, Lcom/android/server/wm/WindowProcessController;->mUsingWrapper:Z

    iput-boolean v12, p1, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    if-eqz v0, :cond_12

    iput-boolean v12, p1, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    goto :goto_6

    :catchall_1
    move-exception v0

    goto/16 :goto_12

    :cond_12
    :goto_6
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-nez v0, :cond_13

    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    :cond_13
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    iget-object v3, v0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/server/am/BGProtectManager;->dha_neverkillexcept_map:Ljava/util/HashMap;

    if-eqz v4, :cond_17

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v6, :cond_14

    goto :goto_7

    :cond_14
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    iget v7, v5, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;->privateFlagsMask:I

    and-int/2addr v6, v7

    if-eq v6, v7, :cond_15

    goto :goto_7

    :cond_15
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_17

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    goto :goto_7

    :cond_16
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_8

    :cond_17
    :goto_7
    move v4, v11

    :goto_8
    if-eq v4, v11, :cond_18

    iput-boolean v13, p1, Lcom/android/server/am/ProcessRecord;->isNeverKillException:Z

    iput v4, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto/16 :goto_a

    :cond_18
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/am/BGProtectManager;->isDhaKeepEmptyProcess(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-eq v4, v11, :cond_1c

    iget v7, v3, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    if-ne v7, v13, :cond_19

    if-ne v4, v13, :cond_19

    iput v13, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    goto/16 :goto_a

    :cond_19
    iget v7, v3, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnableKnox:I

    if-ne v7, v13, :cond_1a

    if-ne v4, v6, :cond_1a

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v7

    if-eqz v7, :cond_1a

    iput v6, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    goto/16 :goto_a

    :cond_1a
    iget v3, v3, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    if-ne v3, v13, :cond_1b

    const/4 v6, 0x3

    if-ne v4, v6, :cond_1b

    iput v6, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    goto/16 :goto_a

    :cond_1b
    if-ne v3, v13, :cond_23

    if-ne v4, v5, :cond_23

    iput v5, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    goto/16 :goto_a

    :cond_1c
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v4, v3}, Lcom/android/server/am/BGProtectManager;->appIsPickedProcess(ILjava/lang/String;)I

    move-result v3

    if-eq v3, v11, :cond_1d

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[SecIpm] it\'s a ML_TYPE_EMPTYPROCESS protected process "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v5, "DynamicHiddenApp_BGProtectManager"

    invoke-static {v3, v4, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iput v13, p1, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    goto :goto_a

    :cond_1d
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sget-object v4, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    if-eqz v4, :cond_1e

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_9

    :cond_1e
    move v3, v11

    :goto_9
    if-eq v3, v11, :cond_1f

    iput-boolean v13, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    iput v3, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_a

    :cond_1f
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->isWebviewProcess(Lcom/android/server/am/ProcessRecord;)I

    move-result v3

    if-eq v3, v11, :cond_22

    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    if-ne v3, v6, :cond_20

    iput-boolean v13, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v3

    iput v3, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_a

    :cond_20
    if-ne v3, v5, :cond_21

    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v3

    iput v3, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_a

    :cond_21
    const/4 v4, 0x6

    if-ne v3, v4, :cond_23

    sget-object v3, Lcom/android/server/am/BGProtectManager$exceptFlag;->BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v3}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v3

    iput v3, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_a

    :cond_22
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sget-boolean v4, Lcom/android/server/am/BGProtectManager;->mCameraGuardEnable:Z

    if-eqz v4, :cond_23

    sget-object v4, Lcom/android/server/am/BGProtectManager;->dha_cameraguard_map:Ljava/util/HashMap;

    if-eqz v4, :cond_23

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    sget-object v3, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAGUARD:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v3}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v3

    iput v3, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    :cond_23
    :goto_a
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mCameraKillModeManager:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    if-eqz v0, :cond_24

    sget v5, Lcom/android/server/bgslotmanager/CameraKillModeManager;->CAMERA_DHA_VER:I

    if-le v5, v13, :cond_24

    iget-object v5, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    iget-object v0, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    iget-wide v3, p1, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    const-string/jumbo v0, "startProcess: starting to update pids map"

    invoke-static {v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v4

    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_25

    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v3, :cond_25

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "handleProcessStartedLocked process:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " startSeq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p1, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " belongs to another existing app:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " startSeq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move/from16 v5, p2

    move-object v4, v0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityManagerService;->cleanUpApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;IZZZZ)Z

    :cond_25
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->addPidLocked(Lcom/android/server/am/ProcessRecord;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v3

    if-nez p6, :cond_27

    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    if-eqz v10, :cond_26

    const-wide/32 v5, 0x124f80

    goto :goto_b

    :cond_26
    sget v5, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    int-to-long v5, v5

    :goto_b
    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_c

    :catchall_2
    move-exception v0

    goto/16 :goto_11

    :cond_27
    :goto_c
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const-string v0, "ActivityManager"

    const-string/jumbo v3, "ProcessObserver broadcast disabled"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v3, p1, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    const-string/jumbo v0, "startProcess: done updating pids map"

    invoke-static {v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    if-lez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v1}, Lcom/android/server/am/PackageList;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    array-length v3, v1

    if-nez v3, :cond_28

    goto :goto_10

    :cond_28
    array-length v3, v1

    move v4, v12

    :goto_d
    if-ge v4, v3, :cond_2a

    aget-object v5, v1, v4

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    iput-boolean v13, p1, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;

    invoke-direct {v3, p1, v5}, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;-><init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mCb4Process:Ljava/util/Optional;

    new-instance v3, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v5, p1, v12}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_e

    :cond_29
    add-int/2addr v4, v13

    goto :goto_d

    :cond_2a
    :goto_e
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v13

    :goto_f
    if-ltz v1, :cond_2c

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2b

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2b
    add-int/2addr v1, v11

    goto :goto_f

    :cond_2c
    :goto_10
    return v13

    :goto_11
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :goto_12
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method public incrementProcStateSeqAndNotifyAppsLOSP(Lcom/android/server/am/ActiveUids;)V
    .locals 10

    iget-object v0, p1, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    iput-wide v3, v2, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_1
    if-ltz v0, :cond_c

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    iget v7, v3, Lcom/android/server/am/UidRecord;->mUid:I

    iget-object v8, v6, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/net/NetworkManagementService$LocalService;

    if-nez v8, :cond_2

    const-class v8, Lcom/android/server/net/NetworkManagementService$LocalService;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/net/NetworkManagementService$LocalService;

    iput-object v8, v6, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/net/NetworkManagementService$LocalService;

    :cond_2
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/net/NetworkManagementService$LocalService;

    if-eqz v6, :cond_3

    iget-object v6, v6, Lcom/android/server/net/NetworkManagementService$LocalService;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-virtual {v6, v7}, Lcom/android/server/net/NetworkManagementService;->isNetworkRestrictedInternal(I)Z

    move-result v6

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_4

    goto :goto_6

    :cond_4
    iget v6, v3, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-boolean v6, v3, Lcom/android/server/am/UidRecord;->hasInternetPermission:Z

    if-nez v6, :cond_5

    goto :goto_6

    :cond_5
    iget v6, v3, Lcom/android/server/am/UidRecord;->mSetProcState:I

    iget v7, v3, Lcom/android/server/am/UidRecord;->mCurProcState:I

    if-ne v6, v7, :cond_6

    iget v6, v3, Lcom/android/server/am/UidRecord;->mSetCapability:I

    iget v7, v3, Lcom/android/server/am/UidRecord;->mCurCapability:I

    if-ne v6, v7, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/server/am/ProcessList;->getBlockStateForUid(Lcom/android/server/am/UidRecord;)I

    move-result v6

    if-nez v6, :cond_7

    goto :goto_6

    :cond_7
    iget-object v7, v3, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    monitor-enter v7

    if-ne v6, v1, :cond_9

    if-nez v2, :cond_8

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_8
    :goto_3
    iget v3, v3, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    iget-wide v8, v3, Lcom/android/server/am/UidRecord;->procStateSeqWaitingForNetwork:J

    cmp-long v6, v8, v4

    if-eqz v6, :cond_a

    iget-object v3, v3, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    :cond_a
    :goto_4
    monitor-exit v7

    goto :goto_6

    :goto_5
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_b
    :goto_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_c
    if-nez v2, :cond_d

    goto :goto_9

    :cond_d
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_7
    if-ltz p1, :cond_10

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_8

    :cond_e
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    iget-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez v3, :cond_f

    if-eqz v1, :cond_f

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    if-eqz v0, :cond_f

    :try_start_1
    iget-wide v3, v0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-virtual {v1, v3, v4}, Landroid/app/IApplicationThread$Delegator;->setNetworkBlockSeq(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_f
    :goto_8
    add-int/lit8 p1, p1, -0x1

    goto :goto_7

    :cond_10
    :goto_9
    return-void
.end method

.method public final init(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActiveUids;Lcom/android/server/compat/PlatformCompat;)V
    .locals 5

    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iput-object p3, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    const-string/jumbo p1, "persist.zygote.app_data_isolation"

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    const-string/jumbo p1, "persist.sys.vold_app_data_isolation_enabled"

    const/4 p3, 0x0

    invoke-static {p1, p3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/SystemConfig;->mAppDataIsolationWhitelistedApps:Landroid/util/ArraySet;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;

    sget-object p1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-nez p1, :cond_5

    new-instance p1, Lcom/android/server/ServiceThread;

    const-string p3, "ActivityManager:kill"

    const/16 v0, 0xa

    invoke-direct {p1, p3, v0, p2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object p1, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->start()V

    new-instance p1, Lcom/android/server/am/ProcessList$KillHandler;

    sget-object p3, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p3}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    const/4 v1, 0x0

    invoke-direct {p1, p3, v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    sput-object p1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    new-instance p1, Lcom/android/server/am/OomConnection;

    new-instance p3, Lcom/android/server/am/ProcessList$1;

    invoke-direct {p3, p0}, Lcom/android/server/am/ProcessList$1;-><init>(Lcom/android/server/am/ProcessList;)V

    invoke-direct {p1, p3}, Lcom/android/server/am/OomConnection;-><init>(Lcom/android/server/am/ProcessList$1;)V

    new-instance p1, Lcom/android/server/am/LmkdConnection;

    sget-object p3, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p3}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p3

    new-instance v2, Lcom/android/server/am/ProcessList$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/ProcessList$1;-><init>(Lcom/android/server/am/ProcessList;)V

    invoke-direct {p1, p3, v2}, Lcom/android/server/am/LmkdConnection;-><init>(Landroid/os/MessageQueue;Lcom/android/server/am/ProcessList$1;)V

    sput-object p1, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    new-instance p1, Ljava/io/File;

    const-string p3, "/data/system/unsolzygotesocket"

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    :try_start_0
    new-instance p1, Landroid/net/LocalSocket;

    invoke-direct {p1, p2}, Landroid/net/LocalSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Landroid/net/LocalSocketAddress;

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, p3, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {p1, v2}, Landroid/net/LocalSocket;->bind(Landroid/net/LocalSocketAddress;)V

    const/16 v2, 0x1b6

    invoke-static {p3, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-object p1, v1

    :catch_1
    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :cond_1
    move-object v1, p1

    :catch_2
    :goto_0
    move-object p1, v1

    :goto_1
    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mSystemServerSocketForZygote:Landroid/net/LocalSocket;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mSystemServerSocketForZygote:Landroid/net/LocalSocket;

    invoke-virtual {p3}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p3

    new-instance v1, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/ProcessList;)V

    invoke-virtual {p1, p3, p2, v1}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    :cond_2
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    iput-object p1, p3, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string p1, "ActivityManager:handler"

    invoke-static {v0, p1, p2}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    move-result-object p1

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p3, Lcom/android/server/am/AppStartInfoTracker;->mHandler:Landroid/os/Handler;

    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "procstartstore"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p3, Lcom/android/server/am/AppStartInfoTracker;->mProcStartStoreDir:Ljava/io/File;

    invoke-static {p1}, Landroid/os/FileUtils;->createDir(Ljava/io/File;)Z

    move-result p1

    const-string v1, "ActivityManager"

    const-string/jumbo v2, "Unable to create "

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p3, Lcom/android/server/am/AppStartInfoTracker;->mProcStartStoreDir:Ljava/io/File;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/io/File;

    iget-object v3, p3, Lcom/android/server/am/AppStartInfoTracker;->mProcStartStoreDir:Ljava/io/File;

    const-string/jumbo v4, "procstartinfo"

    invoke-direct {p1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p3, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    const/16 p1, 0x10

    iput p1, p3, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoHistoryListSize:I

    :goto_2
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iput-object p1, p3, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "ActivityManager:killHandler"

    invoke-static {v0, v3, p2}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    move-result-object p2

    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {p2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v0, p3, p2}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;-><init>(Lcom/android/server/am/AppExitInfoTracker;Landroid/os/Looper;)V

    iput-object v0, p3, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    new-instance p2, Ljava/io/File;

    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v3, "procexitstore"

    invoke-direct {p2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p3, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    invoke-static {p2}, Landroid/os/FileUtils;->createDir(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p3, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    new-instance p2, Ljava/io/File;

    iget-object v0, p3, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    const-string/jumbo v1, "procexitinfo"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p3, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0038

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p3, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoHistoryListSize:I

    :goto_3
    new-instance p1, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    sget-object p2, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;-><init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    :cond_5
    return-void
.end method

.method public final killAllBackgroundProcessesExceptLSP(II)V
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_3

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    iget-boolean v8, v7, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    if-nez v8, :cond_1

    if-ltz p1, :cond_0

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v8, p1, :cond_2

    :cond_0
    if-ltz p2, :cond_1

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v8, v8, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    if-le v8, p2, :cond_2

    :cond_1
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    const/16 v8, 0xa

    const-string/jumbo v9, "kill all background except"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xd

    const/4 v10, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    add-int/lit8 v2, v2, 0x1

    move-object p0, v3

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J
    .locals 9

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-wide v3, v3, Lcom/android/server/am/ProcessStateRecord;->mLastCanKillOnBgRestrictedAndIdleTime:J

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    const-wide/16 v7, 0x0

    if-eqz v5, :cond_2

    iget-boolean v5, p1, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-nez v5, :cond_2

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    iget-boolean v2, v2, Lcom/android/server/am/UidRecord;->mIdle:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, v2, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    if-eqz v2, :cond_2

    cmp-long v2, v3, v7

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    add-long/2addr v3, v5

    cmp-long v0, v3, p2

    if-gtz v0, :cond_1

    const/16 v2, 0x12

    const/4 v5, 0x1

    const-string/jumbo v3, "cached idle & background restricted"

    const/16 v1, 0xd

    const/4 v6, 0x1

    move-object v4, v3

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    return-wide v7

    :cond_1
    return-wide v3

    :cond_2
    :goto_0
    return-wide v7
.end method

.method public final killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_2

    :cond_0
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object p2, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAppRanges:Lcom/android/internal/app/ProcessMap;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    if-eqz p2, :cond_1

    iget p2, p2, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    iget v1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mFirstUid:I

    sub-int/2addr p2, v1

    iget v1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mNumUidsPerRange:I

    div-int/2addr p2, v1

    iget-object v1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAvailableUidRanges:Ljava/util/BitSet;

    invoke-virtual {v1, p2}, Ljava/util/BitSet;->set(I)V

    iget-object p0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAppRanges:Lcom/android/internal/app/ProcessMap;

    iget-object p2, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Landroid/os/AppZygote;->stopZygote()V

    :cond_2
    return-void
.end method

.method public final killAppZygotesLocked(IILjava/lang/String;Z)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq p2, v5, :cond_1

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq v5, p2, :cond_1

    goto :goto_1

    :cond_1
    if-ltz p1, :cond_2

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-eq v4, p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AppZygote;

    if-eqz p3, :cond_3

    invoke-virtual {v4}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_2
    if-ge v3, p1, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v3, v3, 0x1

    check-cast p2, Landroid/os/AppZygote;

    invoke-virtual {p0, p2, p4}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final killPackageProcessesLSP(Ljava/lang/String;IIIZZZZZZIILjava/lang/String;)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_10

    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_f

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    iget-boolean v8, v7, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-eqz v8, :cond_1

    if-nez p8, :cond_1

    :cond_0
    :goto_2
    move/from16 v14, p4

    :goto_3
    const/4 v12, 0x1

    goto/16 :goto_c

    :cond_1
    iget-boolean v8, v7, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    if-eqz v8, :cond_3

    if-eqz p7, :cond_0

    if-nez p10, :cond_2

    if-eqz v9, :cond_2

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v8, v9}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    if-eqz v8, :cond_2

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_2

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v15, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v14, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v0, v15, v14, v8}, Landroid/content/pm/PackageManagerInternal;->isPackageFrozen(IILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_4

    :cond_2
    const/4 v8, 0x0

    :goto_4
    new-instance v14, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v14, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v8, v8, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    move/from16 v14, p4

    if-ge v8, v14, :cond_4

    :goto_5
    goto :goto_3

    :cond_4
    const/4 v8, -0x1

    if-nez v9, :cond_7

    if-eq v11, v8, :cond_5

    iget v8, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v8, v11, :cond_5

    :goto_6
    goto :goto_5

    :cond_5
    if-ltz v10, :cond_6

    iget v8, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    if-eq v8, v10, :cond_6

    goto :goto_6

    :cond_6
    const/16 v16, 0x1

    goto :goto_a

    :cond_7
    iget-object v15, v7, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    if-eqz v15, :cond_8

    invoke-virtual {v15, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v15, 0x1

    goto :goto_7

    :cond_8
    const/4 v15, 0x0

    :goto_7
    const/16 v16, 0x1

    if-nez v15, :cond_9

    iget v12, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    if-eq v12, v10, :cond_9

    :goto_8
    move/from16 v12, v16

    goto :goto_c

    :cond_9
    if-eq v11, v8, :cond_a

    iget v8, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v8, v11, :cond_a

    :goto_9
    goto :goto_8

    :cond_a
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v8, v9}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    if-nez v15, :cond_b

    goto :goto_9

    :cond_b
    if-nez v8, :cond_c

    if-eqz v15, :cond_c

    if-nez p10, :cond_c

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_c

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v12, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v15, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v0, v12, v15, v8}, Landroid/content/pm/PackageManagerInternal;->isPackageFrozen(IILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    move/from16 v8, v16

    goto :goto_b

    :cond_c
    :goto_a
    const/4 v8, 0x0

    :goto_b
    if-nez p7, :cond_d

    return v16

    :cond_d
    move/from16 v12, v16

    if-eqz p9, :cond_e

    iput-boolean v12, v7, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    :cond_e
    new-instance v15, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v15, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    add-int/2addr v6, v12

    goto/16 :goto_1

    :cond_f
    move/from16 v14, p4

    const/4 v12, 0x1

    add-int/2addr v3, v12

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x2710

    if-lt v10, v0, :cond_11

    const/16 v0, 0x4e1f

    if-gt v10, v0, :cond_11

    const/4 v12, 0x1

    goto :goto_d

    :cond_11
    const/4 v12, 0x0

    :goto_d
    if-eqz v12, :cond_12

    new-instance v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    :cond_12
    const/4 v14, 0x0

    :goto_e
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_1e

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v16, 0x1

    add-int/lit8 v2, v14, 0x1

    :goto_f
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_13

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v3, v0, :cond_13

    add-int/lit8 v2, v2, 0x1

    const/16 v16, 0x1

    goto :goto_f

    :cond_13
    invoke-virtual {v13, v14, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v15

    const/4 v2, 0x0

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eqz v12, :cond_14

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne v0, v10, :cond_14

    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v9}, Lcom/android/server/am/FreecessController;->freezeTargetProcess(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v17, 0x1

    goto :goto_10

    :cond_14
    const/16 v17, 0x0

    :goto_10
    if-eqz v17, :cond_19

    const-string v3, ": "

    const-string/jumbo v4, "Unable to freeze binder for "

    const-string v5, "ActivityManager"

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v6, :cond_18

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget v8, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    move/from16 p4, v6

    if-lez v8, :cond_17

    const/4 v0, 0x0

    :goto_12
    :try_start_0
    iget-object v6, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mFreezer:Lcom/android/server/am/Freezer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0xa

    const/4 v1, 0x1

    invoke-static {v8, v6, v1}, Lcom/android/server/am/Freezer;->freezeBinder(IIZ)I

    move-result v6

    move/from16 v16, v1

    sget v1, Landroid/system/OsConstants;->EAGAIN:I

    neg-int v1, v1

    if-ne v6, v1, :cond_16

    add-int/lit8 v1, v0, 0x1

    move/from16 p7, v1

    move/from16 v1, v16

    if-lt v0, v1, :cond_15

    goto :goto_13

    :cond_15
    move-object/from16 v1, p0

    move/from16 v0, p7

    goto :goto_12

    :cond_16
    :goto_13
    if-eqz v6, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_14

    :catch_0
    move-exception v0

    goto :goto_15

    :cond_17
    :goto_14
    const/4 v1, 0x1

    goto :goto_16

    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :goto_16
    add-int/2addr v7, v1

    move-object/from16 v1, p0

    move/from16 v6, p4

    goto :goto_11

    :cond_18
    const/4 v1, 0x1

    invoke-static {v2, v1}, Lcom/android/server/am/ProcessList;->freezePackageCgroup(IZ)Z

    :cond_19
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    if-nez p6, :cond_1b

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_19

    :cond_1a
    const/4 v4, 0x0

    :goto_18
    const/16 v16, 0x1

    goto :goto_1a

    :cond_1b
    :goto_19
    const/4 v4, 0x1

    goto :goto_18

    :goto_1a
    xor-int/lit8 v8, v17, 0x1

    move-object/from16 v1, p0

    move/from16 v5, p11

    move/from16 v6, p12

    move-object/from16 v7, p13

    move/from16 p4, v12

    move v12, v2

    move-object v2, v3

    move/from16 v3, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    move v2, v12

    move/from16 v12, p4

    goto :goto_17

    :cond_1c
    move-object/from16 v1, p0

    move/from16 p4, v12

    const/16 v16, 0x1

    move v12, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v11, v9, v2}, Lcom/android/server/am/ProcessList;->killAppZygotesLocked(IILjava/lang/String;Z)V

    if-eqz v17, :cond_1d

    invoke-static {v12, v2}, Lcom/android/server/am/ProcessList;->freezePackageCgroup(IZ)Z

    :cond_1d
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v14, v0

    move/from16 v12, p4

    goto/16 :goto_e

    :cond_1e
    const/4 v2, 0x0

    const/16 v16, 0x1

    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(I)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1f

    move/from16 v12, v16

    goto :goto_1b

    :cond_1f
    move v12, v2

    :goto_1b
    return v12
.end method

.method public final killProcessesWhenImperceptible(ILjava/lang/String;[I)V
    .locals 5

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    array-length v2, p3

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    aget v4, p3, v1

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->enqueueLocked(ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZIZILjava/lang/String;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v9, p8

    const/4 v1, -0x1

    const/4 v10, 0x1

    if-eqz p2, :cond_0

    move-object/from16 v4, p2

    goto :goto_0

    :cond_0
    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object v4, v2

    :goto_0
    iget v2, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz p5, :cond_1

    move/from16 v2, p6

    :cond_1
    invoke-static {v2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    if-eqz p5, :cond_2

    if-nez p7, :cond_3

    :cond_2
    const-string v0, "ActivityManager"

    const-string v1, "Abort creating new sandbox process as required parameters are missing."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_3
    const/4 v12, 0x2

    if-eqz p3, :cond_10

    if-nez p4, :cond_d

    const/4 v2, 0x0

    if-eqz v9, :cond_5

    iget v5, v9, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    if-ne v5, v12, :cond_5

    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v8, v9, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    iget-object v13, v5, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAppRanges:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v7, v8}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    if-nez v13, :cond_6

    iget-object v13, v5, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAvailableUidRanges:Ljava/util/BitSet;

    invoke-virtual {v13, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v13

    if-gez v13, :cond_4

    move-object v13, v6

    goto :goto_1

    :cond_4
    iget-object v14, v5, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAvailableUidRanges:Ljava/util/BitSet;

    invoke-virtual {v14, v13}, Ljava/util/BitSet;->clear(I)V

    iget v14, v5, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mNumUidsPerRange:I

    mul-int/2addr v13, v14

    iget v15, v5, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mFirstUid:I

    add-int/2addr v13, v15

    new-instance v15, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    add-int/2addr v14, v13

    sub-int/2addr v14, v10

    invoke-direct {v15, v13, v14}, Lcom/android/server/am/ProcessList$IsolatedUidRange;-><init>(II)V

    iget-object v5, v5, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAppRanges:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v5, v7, v8, v15}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-object v13, v15

    goto :goto_1

    :cond_5
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    :cond_6
    :goto_1
    if-nez v13, :cond_7

    goto :goto_4

    :cond_7
    iget v5, v13, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    iget v7, v13, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    sub-int/2addr v5, v7

    add-int/2addr v5, v10

    move v7, v2

    :goto_2
    if-ge v7, v5, :cond_b

    iget v8, v13, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    iget v14, v13, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    if-lt v8, v14, :cond_8

    iget v15, v13, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    if-le v8, v15, :cond_9

    :cond_8
    iput v14, v13, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    :cond_9
    iget v8, v13, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    invoke-static {v11, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    iget v14, v13, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    add-int/2addr v14, v10

    iput v14, v13, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    iget-object v14, v13, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v8, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v14

    if-nez v14, :cond_a

    iget-object v2, v13, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v8, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_3

    :cond_a
    add-int/2addr v7, v10

    goto :goto_2

    :cond_b
    move v8, v1

    :goto_3
    if-ne v8, v1, :cond_c

    :goto_4
    return-object v6

    :cond_c
    move v2, v8

    goto :goto_5

    :cond_d
    move/from16 v2, p4

    :goto_5
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v5, v5, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v5, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v7, v7, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v8, v5, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    if-nez v8, :cond_e

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    iget-object v13, v5, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {v13, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_e
    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v5, v5, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v5

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    check-cast v5, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v7, v5, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v7, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v8

    :try_start_1
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    iget-object v7, v5, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v5, v5}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v5, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    monitor-enter v5

    :try_start_2
    iget-object v7, v5, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v7, v5, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUidRefCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v2, v10}, Landroid/util/SparseIntArray;->put(II)V

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v5, v5, Lcom/android/server/power/stats/PowerStatsUidResolver;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v10

    :goto_7
    if-ltz v7, :cond_f

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;

    invoke-interface {v8, v2, v6}, Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;->onIsolatedUidAdded(II)V

    add-int/2addr v7, v1

    goto :goto_7

    :cond_f
    const/16 v1, 0x2b

    invoke-static {v1, v6, v2, v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getCfmsInternalLocked()Landroid/os/CustomFrequencyManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getCfmsInternalLocked()Landroid/os/CustomFrequencyManagerInternal;

    move-result-object v1

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v5}, Landroid/os/CustomFrequencyManagerInternal;->addIsolatedUid(II)V

    :cond_10
    move v5, v2

    goto :goto_9

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :goto_8
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :goto_9
    new-instance v1, Lcom/android/server/am/ProcessRecord;

    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v7, v9, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    iget-object v8, v9, Lcom/android/server/am/HostingRecord;->mDefiningProcessName:Ljava/lang/String;

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/ProcessRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isStopped()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isNotLaunched()Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    const-string/jumbo v7, "activity"

    iget-object v8, v9, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    const-string/jumbo v7, "next-activity"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    const-string/jumbo v7, "next-top-activity"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    const-string/jumbo v7, "top-activity"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    iput-boolean v6, v1, Lcom/android/server/am/ProcessRecord;->mWasForceStopped:Z

    goto :goto_b

    :cond_11
    if-nez v5, :cond_12

    move v5, v12

    goto :goto_a

    :cond_12
    move v5, v10

    :goto_a
    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iput v5, v6, Lcom/android/server/wm/WindowProcessController;->mStoppedState:I

    :cond_13
    :goto_b
    const/16 v5, -0x320

    const/16 v6, 0x9

    if-nez p3, :cond_14

    if-nez p5, :cond_14

    if-nez v11, :cond_14

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v6

    if-ne v7, v6, :cond_14

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v2, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    iput v12, v2, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    iput-boolean v10, v1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iput-boolean v10, v3, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iput v5, v3, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    :cond_14
    if-eqz p3, :cond_15

    if-eqz p4, :cond_15

    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/16 v4, -0x2bc

    iput v4, v3, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    :cond_15
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v4, v1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v4, :cond_16

    iget v4, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v4, :cond_16

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_16

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerServiceExt;->persistentApps:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Set as "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManagerServiceExt"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    iput v12, v3, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    iput-boolean v10, v1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iput-boolean v10, v4, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    iput v5, v3, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    :cond_16
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_17

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_c

    :cond_17
    const-string v3, ""

    :goto_c
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mCanTmoPkgAvoidForceStop:Z

    if-eqz v0, :cond_18

    const-string/jumbo v0, "com.tmobile.echolocate"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iput v5, v2, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    :cond_18
    return-object v1
.end method

.method public final noteAppKill(IIIILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    iget v0, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, p2, :cond_0

    iget-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2, p2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    iget p2, v1, Lcom/android/server/am/ProcessRecord;->mPid:I

    iput p2, v1, Lcom/android/server/am/ProcessRecord;->mDyingPid:I

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter p2

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V
    .locals 3

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-lez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    iput v0, p1, Lcom/android/server/am/ProcessRecord;->mDyingPid:I

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    return-void
.end method

.method public final noteProcessDiedLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/server/StorageManagerService;->sMediaStoreAuthorityProcessName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "com.android.phone"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "Watchdog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Interesting Java process "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " died. Pid "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/am/ProcessRecord;->mDyingPid:I

    :cond_2
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->obtainRawRecord(Lcom/android/server/am/ProcessRecord;J)Landroid/app/ApplicationExitInfo;

    move-result-object p0

    const/16 p1, 0x1007

    invoke-virtual {v0, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final offerLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    iput-wide p2, p1, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Adding dependent process "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not on LRU list: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method

.method public final onSystemReady()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/am/AppStartInfoTracker$1;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/android/server/am/AppStartInfoTracker$1;-><init>(Lcom/android/server/am/AppStartInfoTracker;I)V

    iget-object v5, v0, Lcom/android/server/am/AppStartInfoTracker;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v6, v5}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "package"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/am/AppStartInfoTracker$1;

    const/4 v8, 0x1

    invoke-direct {v7, v0, v8}, Lcom/android/server/am/AppStartInfoTracker$1;-><init>(Lcom/android/server/am/AppStartInfoTracker;I)V

    iget-object v8, v0, Lcom/android/server/am/AppStartInfoTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, v2, v6, v8}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v5, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    const/4 v7, 0x1

    invoke-direct {v5, v0, v7}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/AppStartInfoTracker;I)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, v0, Lcom/android/server/am/AppStartInfoTracker;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/internal/os/MonotonicClock;

    sget-object v5, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-virtual {v5}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    invoke-direct {v2, v7, v8, v5}, Lcom/android/internal/os/MonotonicClock;-><init>(JLcom/android/internal/os/Clock;)V

    iput-object v2, v0, Lcom/android/server/am/AppStartInfoTracker;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$1;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/android/server/am/AppExitInfoTracker$1;-><init>(Lcom/android/server/am/AppExitInfoTracker;I)V

    iget-object v5, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {v1, v2, v0, v6, v5}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/AppExitInfoTracker$1;-><init>(Lcom/android/server/am/AppExitInfoTracker;I)V

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {v1, v2, v0, v6, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppExitInfoTracker;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x20

    if-ltz p3, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const/16 v1, 0xa

    if-ge p3, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    :cond_0
    const/16 v1, -0xa

    if-le p3, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    :cond_1
    :goto_0
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/android/server/am/ActivityManagerService;->stringifySize(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 8

    const-string v0, "E|killProcessQuiet pss="

    const-string v1, "B|killProcessQuiet comm="

    const-string/jumbo v2, "Removing process that hasn\'t been killed: "

    const-string/jumbo v3, "Removing persistent process that hasn\'t been killed: "

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_5

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v5

    :try_start_0
    iget-boolean v6, p1, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-nez v6, :cond_2

    iget-boolean v6, p1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-eqz v6, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    const-string v3, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    const/4 v3, 0x0

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-wide v1, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {v6}, Landroid/os/Process;->killProcessQuiet(I)V

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {v6, v7}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    const-string/jumbo v0, "hasn\'t been killed"

    const/16 v1, 0xd

    const/16 v2, 0x10

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iput-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v4, v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    :cond_3
    iget v0, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ge v4, v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lcom/android/server/am/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_6

    iget-object v1, p0, Lcom/android/server/am/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PlatformCompatCache$CacheItem;

    iget-object v2, v1, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object v1, v1, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :catchall_1
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v4, v1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {v4}, Landroid/content/pm/ASKSManager;->removePackageWithPid(I)V

    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v4, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x0

    if-eq v4, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring remove of inactive process: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->mPid:I

    const/16 v2, 0x14

    if-lez v8, :cond_1

    sget v3, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v8, v3, :cond_2

    :cond_1
    if-nez v8, :cond_9

    iget-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    if-eqz v3, :cond_9

    :cond_2
    if-lez v8, :cond_4

    iput-boolean v5, v1, Lcom/android/server/am/ProcessRecord;->mBindMountPending:Z

    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {v3, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/BatteryStatsService;->noteProcessFinish(ILjava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/BatteryStatsService;->removeIsolatedUid(II)V

    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getCfmsInternalLocked()Landroid/os/CustomFrequencyManagerInternal;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getCfmsInternalLocked()Landroid/os/CustomFrequencyManagerInternal;

    move-result-object v2

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Landroid/os/CustomFrequencyManagerInternal;->removeIsolatedUid(II)V

    :cond_3
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->removeIsolatedUid(I)V

    :cond_4
    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-eqz v2, :cond_6

    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v2, :cond_6

    const/4 v2, 0x1

    if-nez p2, :cond_5

    move v9, v2

    move v10, v5

    goto :goto_0

    :cond_5
    move v10, v2

    move v9, v5

    goto :goto_0

    :cond_6
    move v9, v5

    move v10, v9

    :goto_0
    const/4 v6, 0x1

    move-object/from16 v5, p6

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    if-lez v8, :cond_7

    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v8, v1}, Lcom/android/server/am/ActivityManagerService;->removePidLocked(ILcom/android/server/am/ProcessRecord;)Z

    :cond_7
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p3

    move v2, v8

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->handleAppDiedLocked(ILcom/android/server/am/ProcessRecord;ZZZ)V

    move-object v1, v3

    if-eqz v4, :cond_8

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v11 .. v20}, Lcom/android/server/am/ActivityManagerService;->addAppLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZILjava/lang/String;ZZLjava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    :cond_8
    return v10

    :cond_9
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/am/ProcessRecord;->callStack:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v5
.end method

.method public final removeProcessNameLocked(ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 6

    const-string/jumbo v0, "proc "

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1, p3, p1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_0

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v3

    if-eqz p2, :cond_1

    if-ne v1, p2, :cond_2

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/am/ProcessList$MyProcessMap;->remove(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    :cond_2
    if-eqz p2, :cond_3

    iget-boolean p3, p2, Lcom/android/server/am/ProcessRecord;->mIsRemovedName:Z

    if-eqz p3, :cond_3

    const-string p3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " already removed. so we skip next process."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_3
    :goto_1
    const/4 p3, 0x0

    if-eqz v2, :cond_6

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    if-eqz v0, :cond_6

    if-eqz p2, :cond_4

    iget-boolean p2, p2, Lcom/android/server/am/ProcessRecord;->mIsRemovedName:Z

    if-nez p2, :cond_6

    :cond_4
    iget-object p2, v0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    iput-boolean p2, v2, Lcom/android/server/am/ProcessRecord;->mIsRemovedName:Z

    iget-object p2, v0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, -0x1

    const v5, -0x7fffffff

    invoke-virtual {p2, v0, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    const/16 p2, 0x7565

    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(II)I

    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p2, p1}, Lcom/android/server/am/ActiveUids;->remove(I)V

    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mFgsStartTempAllowList:Lcom/android/server/am/FgsTempAllowList;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p2, Lcom/android/server/am/FgsTempAllowList;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p2, p2, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v0, 0x14

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessStateAndCapability(III)V

    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_5
    :goto_2
    const/4 p2, 0x0

    iput-object p2, v2, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    :cond_6
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    iget-object p2, p2, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    if-eqz v2, :cond_9

    iget-boolean p2, v2, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    iget v3, v3, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    iget-object p2, p2, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAppRanges:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p2, v0, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    if-eqz p2, :cond_7

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object p2, p2, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    :cond_7
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    iget v3, v3, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    invoke-virtual {p2, v0, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/AppZygote;

    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v3, 0x47

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    goto :goto_3

    :cond_8
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {p3, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    iput-object p2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const-wide/16 v3, 0x1388

    invoke-virtual {p2, p3, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_9
    :goto_3
    if-eqz v2, :cond_a

    iget-boolean p2, v2, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz p2, :cond_a

    invoke-static {p1}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_a

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_a
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-object v1

    :goto_4
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final scheduleDispatchProcessDiedLocked(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    if-lez p1, :cond_0

    iget v3, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final searchEachLruProcessesLOSP(Ljava/util/function/Function;Z)Ljava/lang/Object;
    .locals 2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final setAllHttpProxy()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v5, :cond_0

    if-eqz v3, :cond_0

    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    const/4 v4, 0x3

    :try_start_1
    invoke-virtual {v3, v4}, Lcom/android/server/am/ApplicationThreadDeferred;->execute(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update http proxy for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/ActivityThread;->updateHttpProxy(Landroid/content/Context;)V

    return-void

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public setLruProcessServiceStartLSP(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    return-void
.end method

.method public final startProcess(Lcom/android/server/am/HostingRecord;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p3

    move-wide/from16 v3, p12

    const/4 v6, 0x1

    const-string/jumbo v7, "android.app.ActivityThread"

    const-string/jumbo v8, "startProcess"

    const-string/jumbo v9, "startProcess"

    const-string/jumbo v10, "Start proc: "

    const-wide/16 v11, 0x40

    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v12, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string/jumbo v10, "startProcess: asking zygote to start proc"

    invoke-static {v3, v4, v10}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    sget-boolean v10, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v13, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v10, v13, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v14, 0x2

    const/4 v15, 0x0

    if-eqz v10, :cond_7

    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v1, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    if-ne v11, v6, :cond_0

    move v12, v6

    goto :goto_0

    :cond_0
    move v12, v15

    :goto_0
    if-eqz v12, :cond_1

    const-string v11, "(WebviewZygote):"

    goto :goto_2

    :catchall_0
    move-exception v0

    const-wide/16 v29, 0x40

    goto/16 :goto_1b

    :cond_1
    if-ne v11, v14, :cond_2

    move v11, v6

    goto :goto_1

    :cond_2
    move v11, v15

    :goto_1
    if-eqz v11, :cond_3

    const-string v11, "(AppZygote):"

    goto :goto_2

    :cond_3
    const-string v11, ":"

    :goto_2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-boolean v11, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v11, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v11, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    const-wide/16 v16, 0x5dc

    if-eqz v11, :cond_5

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move v11, v14

    iget v14, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget-boolean v9, Lcom/android/server/am/FreecessController;->FASTOLAF_REDUCE_PROTECT_TIME:Z

    if-eqz v9, :cond_4

    :goto_3
    move v9, v15

    move-object v15, v8

    goto :goto_4

    :cond_4
    const-wide/16 v16, 0x7d0

    goto :goto_3

    :goto_4
    invoke-virtual/range {v13 .. v18}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;JLjava/lang/String;)Z

    goto :goto_6

    :cond_5
    move v11, v14

    move v9, v15

    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v14, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget-boolean v8, Lcom/android/server/am/FreecessController;->FASTOLAF_REDUCE_PROTECT_TIME:Z

    if-eqz v8, :cond_6

    goto :goto_5

    :cond_6
    const-wide/16 v16, 0x2710

    :goto_5
    invoke-virtual/range {v13 .. v18}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;JLjava/lang/String;)Z

    goto :goto_6

    :cond_7
    move v11, v14

    move v9, v15

    :goto_6
    iget-boolean v8, v1, Lcom/android/server/am/HostingRecord;->mIsTopApp:Z

    const/4 v10, 0x1

    if-eqz v8, :cond_8

    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iput-boolean v10, v12, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    :cond_8
    iget-boolean v12, v0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    if-eqz v12, :cond_a

    iget v12, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v12

    if-nez v12, :cond_9

    iget v12, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v12

    if-nez v12, :cond_9

    iget-boolean v12, v2, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v12, :cond_a

    :cond_9
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const-wide/32 v14, 0x89450c5

    invoke-virtual {v12, v14, v15, v13}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v12

    if-eqz v12, :cond_a

    move v15, v10

    goto :goto_7

    :cond_a
    move v15, v9

    :goto_7
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v12

    iget-boolean v13, v2, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v13, :cond_b

    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    goto :goto_8

    :cond_b
    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v14, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v12, v14, v13}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    if-nez v14, :cond_c

    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    :cond_c
    :goto_8
    iget-object v14, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v16

    if-nez v16, :cond_e

    move/from16 v17, v6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Unknown package "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "ActivityManager"

    invoke-static {v10, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move v6, v9

    goto :goto_9

    :cond_e
    move/from16 v17, v6

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object v6

    const-string/jumbo v10, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageManager$Property;

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v6

    if-nez v6, :cond_d

    :cond_f
    const/4 v6, 0x1

    :goto_9
    invoke-static {v12, v13, v5}, Lcom/android/server/am/ProcessList;->getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v10

    if-nez v10, :cond_10

    move v15, v9

    :cond_10
    new-instance v14, Landroid/util/ArraySet;

    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;

    invoke-direct {v14, v11}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    array-length v11, v13

    :goto_a
    if-ge v9, v11, :cond_11

    aget-object v3, v13, v9

    invoke-virtual {v14, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v3, p12

    goto :goto_a

    :cond_11
    const/4 v9, 0x0

    new-array v3, v9, [Ljava/lang/String;

    invoke-virtual {v14, v3}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {v12, v3, v5}, Lcom/android/server/am/ProcessList;->getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_12

    const/4 v15, 0x0

    :cond_12
    const/16 v26, 0x0

    if-nez v6, :cond_13

    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-nez v4, :cond_13

    move-object/from16 v3, v26

    move-object v10, v3

    const/16 v22, 0x0

    goto :goto_b

    :cond_13
    move/from16 v22, v15

    :goto_b
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const-class v6, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManagerInternal;

    iget v9, v2, Lcom/android/server/am/ProcessRecord;->mMountMode:I

    iget-boolean v11, v0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    if-eqz v11, :cond_15

    iget v11, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v11

    if-eqz v11, :cond_15

    iget v11, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v6, v11}, Landroid/os/storage/StorageManagerInternal;->isExternalStorageService(I)Z

    move-result v11

    if-nez v11, :cond_15

    const/4 v11, 0x4

    if-eq v9, v11, :cond_15

    const/4 v11, 0x3

    if-eq v9, v11, :cond_15

    const/4 v11, 0x2

    if-eq v9, v11, :cond_15

    if-eqz v9, :cond_15

    if-eqz v10, :cond_14

    invoke-virtual {v6, v4}, Landroid/os/storage/StorageManagerInternal;->isFuseMounted(I)Z

    move-result v9

    if-eqz v9, :cond_14

    const/4 v9, 0x1

    const/16 v23, 0x1

    goto :goto_d

    :cond_14
    const/4 v9, 0x1

    iput-boolean v9, v2, Lcom/android/server/am/ProcessRecord;->mBindMountPending:Z

    :goto_c
    const/16 v23, 0x0

    goto :goto_d

    :cond_15
    const/4 v9, 0x1

    goto :goto_c

    :goto_d
    iget-boolean v11, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v11, :cond_16

    move-object/from16 v3, v26

    move-object/from16 v24, v3

    goto :goto_e

    :cond_16
    move-object/from16 v24, v10

    :goto_e
    const-string/jumbo v10, "app_compat"

    const-string/jumbo v11, "appcompat_sysprop_override_pkgs"

    const-string v12, ""

    invoke-static {v10, v11, v12}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v11}, Lcom/android/server/am/PackageList;->getPackageList()[Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    :goto_f
    array-length v12, v11

    if-ge v15, v12, :cond_18

    aget-object v12, v11, v15

    invoke-static {v10, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    move v15, v9

    goto :goto_10

    :cond_17
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    :cond_18
    const/4 v15, 0x0

    :goto_10
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v10, v10, Lcom/android/server/am/ActiveServices;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v10, :cond_1a

    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Lcom/android/server/AppStateTracker;->isAppBackgroundRestricted(ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {v12, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_11

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_19
    :goto_11
    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iput-boolean v10, v11, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    :cond_1a
    const/4 v10, 0x0

    iput-boolean v10, v2, Lcom/android/server/am/ProcessRecord;->mProcessGroupCreated:Z

    iput-boolean v10, v2, Lcom/android/server/am/ProcessRecord;->mSkipProcessGroupCreation:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v27

    iget v11, v1, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    move/from16 v12, v17

    if-ne v11, v12, :cond_1b

    move v13, v12

    goto :goto_12

    :cond_1b
    move v13, v10

    :goto_12
    if-eqz v13, :cond_1c

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v11, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "seq="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v2, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v15, 0x0

    move-object v10, v6

    move/from16 v6, p3

    move-object/from16 v13, p10

    move/from16 v32, v4

    move-object/from16 v18, v9

    move-object/from16 v33, v10

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    const/4 v1, 0x1

    const-wide/16 v29, 0x40

    const/16 v31, 0x0

    move/from16 v9, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object v4, v3

    move-object v3, v7

    move v10, v8

    move-object/from16 v7, p4

    move/from16 v8, p5

    :try_start_6
    invoke-static/range {v3 .. v18}, Landroid/os/Process;->startWebView(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v3

    move/from16 v5, p3

    move-object/from16 v18, v24

    :goto_13
    move/from16 v15, v31

    goto/16 :goto_15

    :catchall_2
    move-exception v0

    goto/16 :goto_1b

    :cond_1c
    move/from16 v32, v4

    move-object/from16 v33, v6

    move-object v4, v7

    move v1, v9

    move/from16 v31, v10

    const/4 v5, 0x2

    const-wide/16 v29, 0x40

    if-ne v11, v5, :cond_1d

    move v6, v12

    goto :goto_14

    :cond_1d
    move/from16 v6, v31

    :goto_14
    if-eqz v6, :cond_1e

    move-object/from16 v19, v3

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessList;->createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;

    move-result-object v3

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "seq="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v2, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v20

    move-object/from16 v7, p4

    move/from16 v9, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v17, v6

    move/from16 v16, v8

    move-object/from16 v18, v24

    move/from16 v6, p3

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v20}, Landroid/os/AppZygote;->startProcess(Ljava/lang/String;Ljava/lang/String;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[JLjava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v3

    move/from16 v5, p3

    goto :goto_13

    :cond_1e
    move-object/from16 v19, v3

    move-object v3, v4

    move/from16 v16, v8

    move-object/from16 v18, v24

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "seq="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v2, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v25

    move-object/from16 v21, v19

    move-object/from16 v19, v6

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v17, p6

    move/from16 v9, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v24, v15

    move-object/from16 v20, v18

    move-object/from16 v15, p11

    move/from16 v18, v16

    move-object/from16 v16, v5

    move/from16 v5, p3

    invoke-static/range {v3 .. v25}, Landroid/os/Process;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v3

    move-object/from16 v18, v20

    iput-boolean v1, v2, Lcom/android/server/am/ProcessRecord;->mProcessGroupCreated:Z

    move v15, v1

    :goto_15
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 p6, v1

    move-object/from16 p4, v4

    move-object/from16 p9, v6

    move/from16 p5, v7

    move-wide/from16 p7, v27

    invoke-virtual/range {p4 .. p9}, Lcom/android/server/am/AppStartInfoTracker;->addTimestampToStart(IIJLjava/lang/String;)V

    move/from16 v9, p6

    if-nez v15, :cond_22

    monitor-enter p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-boolean v1, v2, Lcom/android/server/am/ProcessRecord;->mSkipProcessGroupCreation:Z

    if-nez v1, :cond_21

    iget v1, v3, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-static {v5, v1}, Landroid/os/Process;->createProcessGroup(II)I

    move-result v1

    if-gez v1, :cond_20

    sget v4, Landroid/system/OsConstants;->ESRCH:I

    neg-int v4, v4

    if-ne v1, v4, :cond_1f

    const-string v1, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to create process group for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :catchall_3
    move-exception v0

    goto :goto_17

    :cond_1f
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to create process group for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_20
    iput-boolean v9, v2, Lcom/android/server/am/ProcessRecord;->mProcessGroupCreated:Z

    :cond_21
    :goto_16
    monitor-exit p2

    :cond_22
    move-object/from16 v1, p1

    goto :goto_18

    :goto_17
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw v0

    :goto_18
    iget-object v1, v1, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    const-string/jumbo v4, "next-top-activity"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string/jumbo v4, "activelaunch"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    :cond_23
    if-eqz v3, :cond_28

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-nez v1, :cond_25

    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v1, :cond_24

    sget-object v26, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    :cond_24
    move-object/from16 v1, v26

    iput-object v1, v0, Lcom/android/server/am/ProcessList;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    :cond_25
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v1, :cond_28

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v4, :cond_27

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_26

    move/from16 v15, v31

    goto :goto_19

    :cond_26
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->isSpeg(Ljava/lang/String;I)Z

    move-result v15

    :goto_19
    if-nez v15, :cond_28

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    iget v1, v3, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyTaskBoost(I)V

    goto :goto_1a

    :cond_27
    iget v0, v3, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyTaskBoost(I)V

    :cond_28
    :goto_1a
    if-eqz v23, :cond_29

    move-object/from16 v24, v18

    check-cast v24, Landroid/util/ArrayMap;

    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move/from16 v2, v32

    move-object/from16 v10, v33

    invoke-virtual {v10, v2, v0, v1}, Landroid/os/storage/StorageManagerInternal;->prepareStorageDirs(ILjava/util/Set;Ljava/lang/String;)Z

    :cond_29
    const-string/jumbo v0, "startProcess: returned from zygote!"

    move-wide/from16 v1, p12

    invoke-static {v1, v2, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static/range {v29 .. v30}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :catchall_4
    move-exception v0

    move-wide/from16 v29, v11

    :goto_1b
    invoke-static/range {v29 .. v30}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public final startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;ZI)Lcom/android/server/am/ProcessRecord;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p5

    move/from16 v0, p18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    const/4 v15, 0x0

    if-nez p8, :cond_2

    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v6, v3}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    const-string/jumbo v7, "startProcess: after getProcessRecord"

    invoke-static {v12, v13, v7}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    and-int/lit8 v7, p4, 0x4

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v8, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v7, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7, v3, v8}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    return-object v15

    :cond_0
    move-wide/from16 v17, v12

    goto :goto_0

    :cond_1
    iget-object v7, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v8, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v15, v7, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    iget-object v14, v7, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v14, v3, v8}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    iget-object v7, v7, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7, v3, v8}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v7, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v8, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v7, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7, v3, v8}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v14, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    filled-new-array {v7, v8, v14}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x7540

    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v7, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v8, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v14, v7, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_1
    new-instance v15, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v15}, Lcom/android/internal/app/ProcessMap;-><init>()V

    move-wide/from16 v17, v12

    iget-object v12, v7, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v15, v12}, Lcom/android/internal/app/ProcessMap;->putAll(Lcom/android/internal/app/ProcessMap;)V

    invoke-virtual {v15, v3, v8}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    iput-object v15, v7, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    move-wide/from16 v17, v12

    const/4 v6, 0x0

    :cond_3
    :goto_0
    const/4 v14, -0x1

    const-wide/16 v7, -0x1

    if-eqz v6, :cond_10

    iget v15, v6, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-lez v15, :cond_10

    if-nez p3, :cond_4

    iget-boolean v15, v6, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-eqz v15, :cond_5

    :cond_4
    iget-object v15, v6, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-nez v15, :cond_e

    :cond_5
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 p4, 0x8

    iget-wide v12, v2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v6, v3, v12, v13, v1}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)V

    iget-boolean v1, v6, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-eqz v1, :cond_6

    if-eqz p17, :cond_6

    iput-wide v10, v6, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    :cond_6
    iget v2, v6, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    if-nez v2, :cond_7

    if-nez v0, :cond_7

    iput-wide v10, v6, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    :cond_7
    if-nez v1, :cond_8

    if-nez v2, :cond_9

    :cond_8
    if-nez p17, :cond_9

    if-ne v0, v14, :cond_9

    const/4 v1, 0x0

    iput-boolean v1, v6, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    iput-wide v7, v6, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    iput v14, v6, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    iput-wide v7, v6, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    :cond_9
    if-eqz p17, :cond_c

    const-string/jumbo v1, "activelaunch"

    iget-object v2, v9, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, v6, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-gtz v1, :cond_a

    goto :goto_1

    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static/range {p4 .. p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    const/16 v8, 0x66

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    const-wide/16 v2, 0xfa

    cmp-long v2, v7, v2

    if-lez v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SLOW LMKD LAUNCH PID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms for pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_1
    const/4 v15, 0x1

    iput-boolean v15, v6, Lcom/android/server/am/ProcessRecord;->isForKeeping:Z

    iput-wide v4, v6, Lcom/android/server/am/ProcessRecord;->appKeepingTime:J

    goto :goto_2

    :cond_c
    const/4 v15, 0x1

    :goto_2
    if-ne v0, v15, :cond_d

    const-string v1, "IpmLaunch"

    iget-object v2, v9, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iput v0, v6, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    :cond_d
    const-string/jumbo v0, "startProcess: done, added package to proc"

    move-wide/from16 v12, v17

    invoke-static {v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    return-object v6

    :cond_e
    move-wide/from16 v12, v17

    const/16 p4, 0x8

    const-string/jumbo v4, "startProcess: bad proc running, killing"

    invoke-static {v12, v13, v4}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    iget v4, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v5, v6, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {v4, v5}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    const-string/jumbo v4, "startProcess: done killing old proc"

    invoke-static {v12, v13, v4}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    iget-boolean v4, v6, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-nez v4, :cond_f

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is attached to a previous process"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_f
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is attached to a previous process"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object v4, v6

    const/4 v6, 0x0

    goto :goto_5

    :cond_10
    move-wide/from16 v12, v17

    const/16 p4, 0x8

    if-nez p8, :cond_12

    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_13

    if-eqz v6, :cond_11

    if-eq v6, v4, :cond_11

    iput-object v4, v6, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    iput-object v6, v4, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    goto :goto_4

    :cond_11
    const/4 v6, 0x0

    :goto_4
    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is attached to a previous process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lcom/android/server/am/ProcessRecord;->mDyingPid:I

    invoke-static {v7, v8, v5}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_5

    :cond_12
    const/4 v4, 0x0

    :cond_13
    :goto_5
    if-nez v6, :cond_1c

    const-string/jumbo v5, "startProcess: creating new process record"

    invoke-static {v12, v13, v5}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v19, v4

    const-wide/16 v14, -0x1

    move/from16 v4, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ProcessList;->newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZIZILjava/lang/String;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    if-nez v6, :cond_14

    const-string v0, "ActivityManager"

    const-string v1, "Failed making new process record for "

    const-string v5, "/"

    invoke-static {v1, v3, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isolated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    return-object v16

    :cond_14
    const/16 v16, 0x0

    if-eqz p17, :cond_15

    const-string/jumbo v3, "activelaunch"

    iget-object v4, v9, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v3, 0x1

    iput-boolean v3, v6, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    iput-wide v10, v6, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    goto :goto_6

    :cond_15
    iget-boolean v3, v6, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-eqz v3, :cond_16

    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    iput-wide v14, v6, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    :cond_16
    :goto_6
    const-string v3, "IpmLaunch"

    iget-object v4, v9, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    iput v0, v6, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    iput-wide v10, v6, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    goto :goto_7

    :cond_17
    const/4 v0, -0x1

    iput v0, v6, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    iput-wide v14, v6, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    :goto_7
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    :cond_18
    move-object/from16 v8, v16

    :goto_8
    if-nez p3, :cond_19

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    :try_start_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->semGetUserId(I)I

    move-result v4

    const-wide/16 v7, 0x0

    invoke-interface {v0, v3, v7, v8, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v8
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_a

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    :goto_a
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_b
    move-object/from16 v8, v16

    :goto_c
    if-eqz v8, :cond_1a

    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iput-object v0, v2, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    iput-object v0, v2, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    :cond_1a
    iget-object v0, v6, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    move-object/from16 v3, p16

    iput-object v3, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashHandler:Ljava/lang/Runnable;

    move-object/from16 v3, p14

    iput-object v3, v6, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    move-object/from16 v3, p15

    iput-object v3, v6, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPointArgs:[Ljava/lang/String;

    move-object/from16 v4, v19

    if-eqz v4, :cond_1b

    iput-object v4, v6, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    iput-object v6, v4, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    :cond_1b
    const-string/jumbo v0, "startProcess: done creating new process record"

    invoke-static {v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    goto :goto_d

    :cond_1c
    const/16 v16, 0x0

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v3, v2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v5, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v6, v0, v3, v4, v5}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)V

    const-string/jumbo v0, "startProcess: added package to existing proc"

    invoke-static {v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    :goto_d
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v0, :cond_1f

    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1d

    goto :goto_e

    :cond_1d
    if-nez p7, :cond_1f

    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    const-string/jumbo v0, "startProcess: returning with proc on hold"

    invoke-static {v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    return-object v6

    :cond_1f
    :goto_e
    const-string/jumbo v0, "startProcess: stepping in to startProcess"

    invoke-static {v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    const/4 v5, 0x0

    move-object v2, v6

    const/4 v6, 0x0

    move/from16 v4, p6

    move-object/from16 v7, p13

    move-object v3, v9

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;IZZLjava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "startProcess: done starting proc!"

    invoke-static {v12, v13, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    if-eqz v0, :cond_20

    move-object v15, v2

    goto :goto_f

    :cond_20
    move-object/from16 v15, v16

    :goto_f
    return-object v15
.end method

.method public final startProcessLocked(Lcom/android/server/am/HostingRecord;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Z
    .locals 15

    move-object/from16 v2, p2

    const/4 v13, 0x1

    iput-boolean v13, v2, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v3

    :try_start_0
    iput-boolean v1, v2, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    iput-boolean v1, v2, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    iput-boolean v13, v2, Lcom/android/server/am/ProcessRecord;->mInfant:Z

    iput-boolean v1, v2, Lcom/android/server/am/ProcessRecord;->mTGLCallbackPosted:Z

    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startProcessLocked processName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with non-zero startSeq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-eqz v0, :cond_1

    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startProcessLocked processName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with non-zero pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    iput-object v0, v2, Lcom/android/server/am/ProcessRecord;->mLoggableCompatChanges:[J

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    if-eqz v0, :cond_a

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/util/LongArray;

    invoke-direct {v4}, Landroid/util/LongArray;-><init>()V

    iget-object v5, v0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/compat/CompatChange;

    iget-object v7, v0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v6, v3, v7}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/util/LongArray;->add(J)V

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Landroid/util/LongArray;->toArray()[J

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    iput-object v0, v2, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/util/LongArray;

    iget-object v5, v0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/LongArray;-><init>(I)V

    iget-object v5, v0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/compat/CompatChange;

    invoke-virtual {v6}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v7

    iget v9, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v6}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    invoke-virtual {v6}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v10

    add-int/lit8 v11, v10, -0x1

    :cond_5
    add-int/2addr v11, v13

    if-gtz v11, :cond_6

    goto :goto_2

    :cond_6
    const/16 v10, 0x2710

    if-eq v11, v10, :cond_8

    if-ne v11, v9, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    move v9, v1

    goto :goto_4

    :cond_8
    :goto_3
    move v9, v13

    :goto_4
    iget-object v10, v0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v6, v3, v10}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v9, :cond_4

    invoke-virtual {v4, v7, v8}, Landroid/util/LongArray;->add(J)V

    goto :goto_1

    :cond_9
    invoke-virtual {v4}, Landroid/util/LongArray;->toArray()[J

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    iput-object v0, v2, Lcom/android/server/am/ProcessRecord;->mLoggableCompatChanges:[J

    :cond_a
    iget-wide v3, p0, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    const-wide/16 v5, 0x1

    add-long v10, v3, v5

    iput-wide v10, p0, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    iput-wide v10, v2, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    move/from16 v0, p3

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->mStartUid:I

    move-object/from16 v3, p1

    iput-object v3, v2, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    move-object/from16 v4, p8

    iput-object v4, v2, Lcom/android/server/am/ProcessRecord;->mSeInfo:Ljava/lang/String;

    move-wide/from16 v5, p12

    iput-wide v5, v2, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    move-wide/from16 v7, p14

    iput-wide v7, v2, Lcom/android/server/am/ProcessRecord;->mStartElapsedTime:J

    if-nez p11, :cond_c

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/os/Zygote;->getWrapProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    goto :goto_5

    :cond_b
    move v7, v1

    goto :goto_6

    :cond_c
    :goto_5
    move v7, v13

    :goto_6
    iput-boolean v7, v2, Lcom/android/server/am/ProcessRecord;->mUsingWrapper:Z

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iput-boolean v7, v8, Lcom/android/server/wm/WindowProcessController;->mUsingWrapper:Z

    iget-object v7, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v10, v11, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v8, v8, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    if-eqz v8, :cond_d

    iget-object v14, v7, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    new-instance v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;

    const/4 v12, 0x0

    move-object v1, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v14, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v13

    :cond_d
    :try_start_1
    invoke-virtual/range {p0 .. p13}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    iget v2, v0, Landroid/os/Process$ProcessStartResult;->pid:I

    iget-boolean v0, v0, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x0

    move-object/from16 p3, p0

    move-object/from16 p4, p2

    move/from16 p6, v0

    move/from16 p5, v2

    move/from16 p9, v3

    move-wide/from16 p7, v10

    :try_start_2
    invoke-virtual/range {p3 .. p9}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v2, p4

    goto :goto_8

    :catch_0
    move-exception v0

    move-object/from16 v2, p4

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v2, p2

    :goto_7
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failure starting process "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v1, v2, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v5, "start failure"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 p3, p0

    move-object/from16 p4, v0

    move/from16 p5, v3

    move/from16 p11, v4

    move-object/from16 p12, v5

    move/from16 p9, v6

    move/from16 p10, v7

    move/from16 p6, v8

    move/from16 p7, v9

    move/from16 p8, v10

    invoke-virtual/range {p3 .. p12}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    :goto_8
    iget p0, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-lez p0, :cond_e

    goto :goto_9

    :cond_e
    move v13, v1

    :goto_9
    return v13

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;IZZLjava/lang/String;)Z
    .locals 25

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    const/4 v1, 0x1

    const-string v5, "ActivityManager"

    const-string v6, "1"

    iget-boolean v7, v4, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    if-eqz v7, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    iget v7, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    const/4 v8, 0x0

    if-lez v7, :cond_1

    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v7, v9, :cond_1

    const-string/jumbo v7, "startProcess: removing from pids map"

    invoke-static {v14, v15, v7}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    iget-object v7, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v9, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v7, v9, v4}, Lcom/android/server/am/ActivityManagerService;->removePidLocked(ILcom/android/server/am/ProcessRecord;)Z

    iput-boolean v8, v4, Lcom/android/server/am/ProcessRecord;->mBindMountPending:Z

    iget-object v7, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v9, 0x14

    invoke-virtual {v7, v9, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const-string/jumbo v7, "startProcess: done removing from pids map"

    invoke-static {v14, v15, v7}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    const-wide/16 v9, 0x0

    iput-wide v9, v4, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    :cond_1
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->unlinkDeathRecipient()V

    iput v8, v4, Lcom/android/server/am/ProcessRecord;->mDyingPid:I

    iget-object v7, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v7, "startProcess: starting to update cpu stats"

    invoke-static {v14, v15, v7}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    iget-object v7, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    const-string/jumbo v7, "startProcess: done updating cpu stats"

    invoke-static {v14, v15, v7}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    :try_start_0
    iget v7, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10, v7}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    iget v9, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-boolean v10, v4, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6

    if-nez v10, :cond_7

    :try_start_3
    const-string/jumbo v10, "startProcess: getting gids from package manager"

    invoke-static {v14, v15, v10}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    iget-object v12, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v13, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    const-wide/32 v0, 0x10000000

    invoke-interface {v10, v12, v0, v1, v13}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;JI)[I

    move-result-object v0

    const-class v1, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManagerInternal;

    iget-object v12, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v9, v12}, Landroid/os/storage/StorageManagerInternal;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v12

    iget-object v13, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v9, v13}, Landroid/os/storage/StorageManagerInternal;->hasExternalStorageAccess(ILjava/lang/String;)Z

    move-result v1

    iget-object v13, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->isAppFreezerExemptInstPkg()Z

    move-result v13

    if-eqz v13, :cond_2

    const-string/jumbo v13, "android.permission.INSTALL_PACKAGES"
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v20, v8

    :try_start_4
    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v10, v13, v8, v7}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is exempt from freezer"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    goto :goto_1

    :goto_0
    move-object v1, v5

    goto/16 :goto_1a

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_4

    :catch_2
    move-exception v0

    move/from16 v20, v8

    goto :goto_0

    :catch_3
    move-exception v0

    move/from16 v20, v8

    goto/16 :goto_4

    :cond_2
    move/from16 v20, v8

    :cond_3
    :goto_1
    sget-boolean v7, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v7, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager;->checkFreezerExempt(Lcom/android/server/am/ProcessRecord;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is exempt from freezer by list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    :try_start_5
    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    if-eqz v7, :cond_6

    iget-object v7, v7, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    const/16 v19, 0x1

    add-int/lit8 v7, v7, -0x1

    :goto_2
    if-ltz v7, :cond_6

    iget-object v8, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v10, v4, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v10, v10, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-virtual {v10, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget v13, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    check-cast v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iget-object v8, v8, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget-object v8, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v8, v13, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getPermissionGids(ILjava/lang/String;)[I

    move-result-object v8

    if-eqz v8, :cond_5

    array-length v10, v8

    move/from16 v13, v20

    :goto_3
    if-ge v13, v10, :cond_5

    aget v11, v8, v13

    invoke-static {v0, v11}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    const/16 v19, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_6
    invoke-static {v12, v9, v1, v0}, Lcom/android/server/am/ProcessList;->computeGidsForProcess(IIZ[I)[I

    move-result-object v0

    goto :goto_5

    :goto_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_7
    move/from16 v20, v8

    move/from16 v12, v20

    const/4 v0, 0x0

    :goto_5
    iput v12, v4, Lcom/android/server/am/ProcessRecord;->mMountMode:I

    const-string/jumbo v1, "startProcess: building args"

    invoke-static {v14, v15, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v7, v1, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v8, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    if-nez v8, :cond_8

    goto :goto_7

    :cond_8
    const/4 v10, 0x1

    if-ne v8, v10, :cond_9

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mTopComponent:Landroid/content/ComponentName;

    if-eqz v7, :cond_9

    iget-object v10, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_6

    :cond_9
    const/4 v7, 0x2

    if-ne v8, v7, :cond_a

    iget-object v1, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    :goto_6
    move/from16 v9, v20

    :cond_a
    :goto_7
    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v18, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_8

    :cond_b
    move/from16 v1, v20

    :goto_8
    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isProfileableByShell()Z

    move-result v7

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isProfileable()Z

    move-result v8

    iget-boolean v10, v4, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v10, :cond_d

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    if-eqz v10, :cond_d

    iget v11, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v18, 0x2

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_c

    const/4 v11, 0x1

    goto :goto_9

    :cond_c
    move/from16 v11, v20

    :goto_9
    or-int/2addr v1, v11

    invoke-virtual {v10}, Landroid/content/pm/ApplicationInfo;->isProfileableByShell()Z

    move-result v11

    or-int/2addr v7, v11

    invoke-virtual {v10}, Landroid/content/pm/ApplicationInfo;->isProfileable()Z

    move-result v10

    or-int/2addr v8, v10

    :cond_d
    if-eqz v1, :cond_f

    iget-object v10, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "art_verifier_verify_debuggable"

    const/4 v13, 0x1

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ": ART verification disabled"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v10, 0x2000303

    goto :goto_a

    :cond_e
    const v10, 0x2000103

    goto :goto_a

    :cond_f
    move/from16 v10, v20

    :goto_a
    iget-object v11, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v11, v11, 0x4000

    if-nez v11, :cond_10

    iget-object v11, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v11, v11, Lcom/android/server/am/ActivityManagerService;->mSafeMode:Z

    if-eqz v11, :cond_11

    :cond_10
    or-int/lit8 v10, v10, 0x8

    :cond_11
    if-eqz v7, :cond_12

    const v7, 0x8000

    or-int/2addr v10, v7

    :cond_12
    if-eqz v8, :cond_13

    const/high16 v7, 0x1000000

    or-int/2addr v10, v7

    :cond_13
    const-string/jumbo v7, "debug.checkjni"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    const/16 v18, 0x2

    or-int/lit8 v10, v10, 0x2

    :cond_14
    const-string/jumbo v7, "debug.generate-debug-info"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    const-string/jumbo v11, "true"

    if-nez v8, :cond_15

    :try_start_6
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    :cond_15
    or-int/lit8 v10, v10, 0x20

    :cond_16
    const-string/jumbo v7, "dalvik.vm.minidebuginfo"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    :cond_17
    or-int/lit16 v10, v10, 0x800

    :cond_18
    const-string/jumbo v7, "debug.jni.logging"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    or-int/lit8 v10, v10, 0x10

    :cond_19
    const-string/jumbo v7, "debug.assert"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    or-int/lit8 v10, v10, 0x4

    :cond_1a
    const-string/jumbo v7, "debug.ignoreappsignalhandler"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/high16 v6, 0x20000

    or-int/2addr v10, v6

    :cond_1b
    iget-object v6, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    if-eqz v6, :cond_1c

    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    or-int/lit16 v10, v10, 0xe0

    iget-object v6, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    goto :goto_b

    :cond_1c
    const/4 v7, 0x0

    :goto_b
    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isEmbeddedDexUsed()Z

    move-result v6

    if-nez v6, :cond_1d

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    if-eqz v6, :cond_1e

    iget-boolean v6, v6, Landroid/content/pm/ProcessInfo;->useEmbeddedDex:Z

    if-eqz v6, :cond_1e

    :cond_1d
    or-int/lit16 v10, v10, 0x400

    :cond_1e
    if-nez p4, :cond_20

    iget-object v6, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mBlacklistDisabled:Z

    if-nez v6, :cond_20

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    iget v8, v8, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mPolicy:I

    invoke-virtual {v6, v8}, Landroid/content/pm/ApplicationInfo;->maybeUpdateHiddenApiEnforcementPolicy(I)V

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v6

    sget v8, Lcom/android/internal/os/Zygote;->API_ENFORCEMENT_POLICY_SHIFT:I

    shl-int v8, v6, v8

    and-int/lit16 v11, v8, 0x3000

    if-ne v11, v8, :cond_1f

    or-int/2addr v10, v8

    if-eqz p5, :cond_20

    const/high16 v6, 0x40000

    or-int/2addr v10, v6

    goto :goto_c

    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid API policy: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    :goto_c
    const-string/jumbo v6, "persist.device_config.runtime_native.use_app_image_startup_cache"

    const-string v8, ""

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_21

    const-string/jumbo v8, "false"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    const/high16 v6, 0x10000

    or-int/2addr v10, v6

    :cond_21
    sget v6, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v6}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v21

    const-wide/16 v23, 0x4000

    cmp-long v6, v21, v23

    if-nez v6, :cond_22

    iget-object v6, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->isPageSizeCompatEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/high16 v6, 0x4000000

    or-int/2addr v10, v6

    :cond_22
    if-eqz v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/wrap.sh"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_23

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/system/bin/logwrapper "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v0

    goto :goto_e

    :cond_23
    move-object v1, v7

    :goto_d
    :try_start_8
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v13, v1

    goto :goto_f

    :goto_e
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    :cond_24
    move-object v13, v7

    :goto_f
    if-eqz p6, :cond_25

    move-object/from16 v1, p6

    goto :goto_10

    :cond_25
    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    :goto_10
    if-nez v1, :cond_26

    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v1, v1, v20

    :cond_26
    move-object v11, v1

    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v1, :cond_27

    invoke-static {v11}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_27
    move-object v1, v7

    :goto_11
    iget v6, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    const/16 v8, 0x4d

    if-ne v6, v8, :cond_2b

    :try_start_9
    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_5

    :try_start_a
    sget-object v8, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->LOG_DIR:Ljava/io/File;

    if-nez v6, :cond_28

    :goto_12
    move/from16 v6, v20

    goto :goto_13

    :cond_28
    const-string/jumbo v8, "com.samsung.android.app.mobiledoctor"

    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_29

    goto :goto_12

    :cond_29
    const-class v7, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageManagerInternal;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    move-result v6

    :goto_13
    if-eqz v6, :cond_2b

    if-nez v0, :cond_2a

    move/from16 v8, v20

    const/16 v21, 0x0

    goto :goto_14

    :cond_2a
    array-length v6, v0

    const/16 v19, 0x1

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [I

    array-length v7, v0
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4

    move/from16 v8, v20

    :try_start_b
    invoke-static {v0, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    const-string/jumbo v7, "radio"

    invoke-static {v7}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v0

    move-object/from16 v21, v6

    :goto_14
    move-object/from16 v6, v21

    goto :goto_17

    :catch_4
    move-exception v0

    move/from16 v8, v20

    :goto_15
    move-object v1, v5

    move/from16 v20, v8

    goto/16 :goto_1a

    :cond_2b
    move/from16 v8, v20

    goto :goto_16

    :catch_5
    move-exception v0

    move/from16 v8, v20

    goto/16 :goto_0

    :goto_16
    move-object v6, v0

    :goto_17
    iput-object v6, v4, Lcom/android/server/am/ProcessRecord;->mGids:[I

    iput-object v11, v4, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iput-object v11, v0, Lcom/android/server/wm/WindowProcessController;->mRequiredAbi:Ljava/lang/String;

    iput-object v1, v4, Lcom/android/server/am/ProcessRecord;->mInstructionSet:Ljava/lang/String;

    iget-object v0, v3, Lcom/android/server/am/HostingRecord;->mDefiningPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2c

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v7}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iget-object v7, v3, Lcom/android/server/am/HostingRecord;->mDefiningPackageName:Ljava/lang/String;

    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_18

    :catch_6
    move-exception v0

    goto :goto_15

    :cond_2c
    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    :goto_18
    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_6

    :try_start_c
    iget-object v8, v2, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-static {v0, v7, v1, v8}, Lcom/android/internal/os/Zygote;->getMemorySafetyRuntimeFlags(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Ljava/lang/String;Lcom/android/internal/compat/IPlatformCompat;)I

    move-result v0

    or-int v7, v10, v0

    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string/jumbo v0, "SELinux tag not defined"

    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v1

    const-string/jumbo v1, "SELinux tag not defined for "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (uid "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v0, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    :catch_7
    move-exception v0

    move-object v1, v5

    const/16 v20, 0x0

    goto :goto_1a

    :cond_2d
    move-object/from16 v18, v1

    :goto_19
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->updateSeInfo(Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;

    move-result-object v10
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_7

    move/from16 v8, p3

    move-object v1, v5

    move v5, v9

    move v9, v12

    move-object/from16 v12, v18

    const/16 v20, 0x0

    :try_start_d
    invoke-virtual/range {v2 .. v17}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/HostingRecord;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result v0

    return v0

    :catch_8
    move-exception v0

    goto :goto_1a

    :catch_9
    move-exception v0

    move-object v1, v5

    move/from16 v20, v8

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_8

    :goto_1a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Failure starting process "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    iget v12, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string/jumbo v13, "start failure"

    move-object v4, v0

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    return v20
.end method

.method public final updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V
    .locals 9

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v1

    if-nez v1, :cond_14

    iget-boolean v1, v0, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    if-nez v1, :cond_14

    iget-boolean v1, v0, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    if-nez v1, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v1, v0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_6

    iget v0, v0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    move v4, v0

    move v0, p4

    :goto_0
    if-lt p4, p3, :cond_5

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget v7, v6, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    iget v6, v6, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v8, p1, :cond_4

    if-ne v7, v1, :cond_4

    if-ne p4, v0, :cond_1

    if-lt v6, v4, :cond_1

    :goto_1
    add-int/lit8 v0, v0, -0x1

    move v4, v6

    goto :goto_4

    :cond_1
    move v7, p2

    :goto_2
    if-le v7, v0, :cond_3

    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget v8, v8, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    if-gt v6, v8, :cond_2

    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    move v7, v2

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_3
    move v7, v3

    :goto_3
    if-nez v7, :cond_4

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    :goto_4
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_5
    move p4, v0

    :cond_6
    move p2, p4

    :goto_5
    if-lt p4, p3, :cond_14

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget v4, v1, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, p1, :cond_13

    if-ge p4, p2, :cond_e

    move v5, v3

    move v6, v5

    move v7, v6

    :goto_6
    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v8, p1, :cond_e

    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p4, p4, -0x1

    if-ge p4, p3, :cond_7

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v8

    if-nez v8, :cond_b

    iget-boolean v8, v1, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    if-eqz v8, :cond_8

    goto :goto_7

    :cond_8
    iget-boolean v8, v1, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    if-eqz v8, :cond_d

    if-eqz v5, :cond_a

    if-eqz v6, :cond_e

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v6, v8, :cond_9

    goto :goto_9

    :cond_9
    if-eqz v7, :cond_e

    if-eq v7, v4, :cond_d

    goto :goto_9

    :cond_a
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move v5, v2

    move v7, v4

    goto :goto_8

    :cond_b
    :goto_7
    if-eqz v5, :cond_c

    goto :goto_9

    :cond_c
    move v5, v2

    :cond_d
    :goto_8
    add-int/lit8 p2, p2, -0x1

    goto :goto_6

    :cond_e
    :goto_9
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p3, :cond_10

    iget-object p4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/ProcessRecord;

    iget-object p4, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p4, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p4, p1, :cond_f

    goto :goto_a

    :cond_f
    goto :goto_9

    :cond_10
    :goto_a
    if-lt p2, p3, :cond_12

    iget-object p4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/ProcessRecord;

    iget-object p4, p4, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget p4, p4, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    :cond_11
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p3, :cond_12

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget v1, v1, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p1, :cond_12

    if-eq v1, p4, :cond_11

    :cond_12
    move p4, p2

    goto/16 :goto_5

    :cond_13
    add-int/lit8 p4, p4, -0x1

    goto/16 :goto_5

    :cond_14
    :goto_b
    return-void
.end method

.method public final updateLruProcessLSP(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v1, p2

    const/4 v7, -0x1

    iget v2, v0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const/4 v8, 0x1

    add-int/2addr v2, v8

    iput v2, v0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v9, v6, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iput-wide v2, v6, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    const/4 v10, 0x0

    if-eqz p3, :cond_3

    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-boolean v5, v6, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    const-wide/16 v11, -0x1

    if-eqz v5, :cond_0

    iput-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    iput-wide v11, v6, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    :cond_0
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-nez v5, :cond_1

    sget-boolean v5, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    sget-object v5, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    iput-object v5, v0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    :cond_1
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-eqz v5, :cond_2

    iget-object v13, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v14, v6, Lcom/android/server/am/ProcessRecord;->userId:I

    iget-object v5, v5, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14, v13}, Lcom/android/server/am/BGProtectManager;->appIsPickedProcess(ILjava/lang/String;)I

    move-result v5

    if-lez v5, :cond_2

    iput v8, v6, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    goto :goto_0

    :cond_2
    iput v7, v6, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    iput-wide v11, v6, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    :goto_0
    if-lez v4, :cond_4

    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    sub-int/2addr v4, v8

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_4

    goto/16 :goto_e

    :cond_3
    iget v4, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-lez v4, :cond_4

    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    sub-int/2addr v4, v8

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_4

    goto/16 :goto_e

    :cond_4
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v4

    iget-boolean v5, v6, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-eqz v5, :cond_5

    if-ltz v4, :cond_5

    goto/16 :goto_e

    :cond_5
    if-ltz v4, :cond_8

    iget v5, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v4, v5, :cond_6

    sub-int/2addr v5, v8

    iput v5, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    :cond_6
    iget v5, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ge v4, v5, :cond_7

    sub-int/2addr v5, v8

    iput v5, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    :cond_7
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_8
    if-eqz p3, :cond_d

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v4, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v5

    if-nez v5, :cond_c

    iget-boolean v5, v9, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    if-nez v5, :cond_c

    iget v5, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr v1, v8

    if-ge v5, v1, :cond_c

    :goto_1
    iget v5, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-le v1, v5, :cond_a

    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v11, :cond_9

    goto :goto_2

    :cond_9
    add-int/2addr v1, v7

    goto :goto_1

    :cond_a
    :goto_2
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v1, -0x1

    iget v11, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v5, v11, :cond_b

    move v5, v11

    :cond_b
    invoke-virtual {v0, v6, v1, v11, v5}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V

    goto :goto_3

    :cond_c
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v5, v1, -0x1

    :goto_3
    move v12, v5

    :goto_4
    move v11, v4

    goto :goto_6

    :cond_d
    iget v5, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-eqz v1, :cond_f

    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    if-gt v1, v4, :cond_e

    goto :goto_5

    :cond_e
    move v4, v1

    :goto_5
    if-ltz v4, :cond_f

    if-le v5, v4, :cond_f

    move v5, v4

    :cond_f
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v5, -0x1

    iget v1, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    iget v1, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    add-int/lit8 v11, v1, 0x1

    iput v11, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-le v5, v8, :cond_10

    invoke-virtual {v0, v6, v1, v10, v4}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V

    :cond_10
    move v12, v7

    goto :goto_4

    :goto_6
    iget v1, v0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    iput v1, v6, Lcom/android/server/am/ProcessRecord;->mLruSeq:I

    new-instance v13, Landroid/util/SparseBooleanArray;

    iget-object v1, v9, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    iget-object v4, v6, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v13, v4}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iget-object v1, v9, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v8

    move v14, v1

    :goto_7
    if-ltz v14, :cond_15

    invoke-virtual {v9, v14}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v5

    iget-object v1, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-boolean v4, v5, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v4, :cond_13

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v1, :cond_13

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_13

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->mLruSeq:I

    iget v4, v0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v1, v4, :cond_13

    move/from16 p2, v11

    const-wide v10, 0x440000130L

    invoke-virtual {v5, v10, v11}, Lcom/android/server/am/ConnectionRecord;->hasFlag(J)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v1, :cond_14

    iget-object v1, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    if-eqz v4, :cond_12

    if-ltz v12, :cond_11

    const-string/jumbo v4, "service connection"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->offerLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v1

    invoke-virtual {v13, v1, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    goto :goto_8

    :cond_12
    const-string/jumbo v4, "service connection"

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->offerLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v1

    const/4 v15, 0x0

    invoke-virtual {v13, v1, v15}, Landroid/util/SparseBooleanArray;->append(IZ)V

    goto :goto_8

    :cond_13
    move/from16 p2, v11

    :cond_14
    :goto_8
    add-int/2addr v14, v7

    move/from16 v11, p2

    const/4 v10, 0x0

    goto :goto_7

    :cond_15
    move/from16 p2, v11

    iget-object v9, v6, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-object v1, v9, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v8

    move v10, v1

    :goto_9
    if-ltz v10, :cond_17

    iget-object v1, v9, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderConnection;

    iget-object v5, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v1, v5, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_16

    iget v4, v1, Lcom/android/server/am/ProcessRecord;->mLruSeq:I

    iget v11, v0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v4, v11, :cond_16

    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v1, :cond_16

    iget-object v1, v5, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v4, "provider reference"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->offerLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v1

    const/4 v15, 0x0

    invoke-virtual {v13, v1, v15}, Landroid/util/SparseBooleanArray;->append(IZ)V

    goto :goto_a

    :cond_16
    const/4 v15, 0x0

    :goto_a
    add-int/2addr v10, v7

    move-object/from16 v6, p1

    goto :goto_9

    :cond_17
    invoke-virtual {v13}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    sub-int/2addr v1, v8

    move/from16 v11, p2

    :goto_b
    if-ltz v1, :cond_1c

    invoke-virtual {v13, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-gez v2, :cond_18

    goto :goto_e

    :cond_18
    invoke-virtual {v13, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_19

    move v4, v12

    goto :goto_c

    :cond_19
    move v4, v11

    :goto_c
    if-lt v2, v4, :cond_1a

    goto :goto_d

    :cond_1a
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    add-int/2addr v4, v7

    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v5, v0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    iput v5, v2, Lcom/android/server/am/ProcessRecord;->mLruSeq:I

    if-eqz v3, :cond_1b

    move v12, v4

    goto :goto_d

    :cond_1b
    move v11, v4

    :goto_d
    add-int/2addr v1, v7

    goto :goto_b

    :cond_1c
    :goto_e
    return-void
.end method

.method public final updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez p3, :cond_2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget p3, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-nez p3, :cond_3

    iget-boolean p3, p1, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    if-nez p3, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter p3

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ProcessList;->updateLruProcessLSP(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)V

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final updateOomLevels(IIZ)V
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-wide v2, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v4, 0x15e

    sub-long v4, v2, v4

    long-to-float v4, v4

    const/high16 v5, 0x43af0000    # 350.0f

    div-float/2addr v4, v5

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v5

    if-nez v5, :cond_1

    const-wide/16 v5, 0x600

    cmp-long v5, v2, v5

    const v6, 0xfa000

    if-gez v5, :cond_0

    mul-int v5, p1, p2

    if-lt v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x5dc00

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v4, 0x12c

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const v3, 0x44b54000    # 1450.0f

    div-float v4, v2, v3

    const v2, 0x25800

    const v6, 0x1fa400

    :goto_1
    mul-int v3, p1, p2

    int-to-float v5, v3

    int-to-float v7, v2

    sub-float/2addr v5, v7

    sub-int/2addr v6, v2

    int-to-float v2, v6

    div-float/2addr v5, v2

    cmpl-float v2, v4, v5

    if-lez v2, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    const/4 v2, 0x0

    cmpg-float v5, v4, v2

    if-gez v5, :cond_3

    :goto_3
    move v4, v2

    goto :goto_4

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v2

    if-lez v5, :cond_4

    goto :goto_3

    :cond_4
    :goto_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10e00ef

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00ee

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sget v6, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_5

    move v4, v6

    :cond_5
    sget-object v6, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v6, v6

    const/4 v7, 0x0

    if-lez v6, :cond_6

    move v6, v1

    goto :goto_5

    :cond_6
    move v6, v7

    :goto_5
    move v8, v7

    :goto_6
    iget-object v9, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v10, v9

    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    const/4 v12, 0x2

    const/4 v13, 0x4

    if-ge v8, v10, :cond_9

    iget-object v9, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    aget v9, v9, v8

    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    aget v10, v10, v8

    if-eqz v6, :cond_8

    if-ne v8, v13, :cond_7

    mul-int/lit8 v10, v10, 0x3

    div-int/2addr v10, v12

    goto :goto_7

    :cond_7
    const/4 v12, 0x5

    if-ne v8, v12, :cond_8

    mul-int/lit8 v10, v10, 0x7

    div-int/2addr v10, v13

    :cond_8
    :goto_7
    int-to-float v12, v9

    sub-int/2addr v10, v9

    int-to-float v9, v10

    mul-float/2addr v9, v4

    add-float/2addr v9, v12

    float-to-int v9, v9

    aput v9, v11, v8

    add-int/2addr v8, v1

    goto :goto_6

    :cond_9
    if-ltz v5, :cond_a

    move v4, v7

    :goto_8
    array-length v6, v9

    if-ge v4, v6, :cond_a

    int-to-float v6, v5

    aget v8, v11, v4

    int-to-float v8, v8

    mul-float/2addr v6, v8

    array-length v8, v9

    sub-int/2addr v8, v1

    aget v8, v11, v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    float-to-int v6, v6

    aput v6, v11, v4

    add-int/2addr v4, v1

    goto :goto_8

    :cond_a
    if-eqz v2, :cond_c

    move v4, v7

    :goto_9
    array-length v5, v9

    if-ge v4, v5, :cond_c

    aget v5, v11, v4

    int-to-float v6, v2

    int-to-float v8, v5

    mul-float/2addr v6, v8

    array-length v8, v9

    sub-int/2addr v8, v1

    aget v8, v11, v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    float-to-int v6, v6

    add-int/2addr v5, v6

    aput v5, v11, v4

    if-gez v5, :cond_b

    aput v7, v11, v4

    :cond_b
    add-int/2addr v4, v1

    goto :goto_9

    :cond_c
    const/16 v2, 0x3e7

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v4

    const-wide/16 v14, 0x400

    div-long/2addr v4, v14

    const-wide/16 v16, 0x3

    div-long v4, v4, v16

    iput-wide v4, v0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    mul-int/lit8 v3, v3, 0xc

    div-int/lit16 v3, v3, 0x400

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e00c4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00c3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-ltz v4, :cond_d

    move v3, v4

    :cond_d
    if-eqz v2, :cond_e

    add-int/2addr v3, v2

    if-gez v3, :cond_e

    move v3, v7

    :cond_e
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-nez v2, :cond_f

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    iput-object v2, v0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    :cond_f
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    if-nez v2, :cond_10

    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    iget-object v2, v2, Lcom/android/server/am/DynamicHiddenApp;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    iput-object v2, v0, Lcom/android/server/am/ProcessList;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    :cond_10
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    iget v4, v2, Lcom/android/server/bgslotmanager/CustomEFKManager;->addBonusEFK:I

    if-ne v4, v1, :cond_11

    sget-wide v4, Lcom/android/server/bgslotmanager/CustomEFKManager;->mTotalMemMb:J

    mul-long/2addr v4, v14

    long-to-double v4, v4

    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v4, v14

    double-to-int v2, v4

    goto :goto_a

    :cond_11
    if-ne v4, v12, :cond_12

    iget v2, v2, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_BonusEFK:I

    goto :goto_a

    :cond_12
    move v2, v7

    :goto_a
    add-int/2addr v3, v2

    const-string/jumbo v2, "none"

    sget-object v4, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateOomLevels using LMKArray "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    const-string v6, "ActivityManager"

    invoke-static {v4, v5, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    move v4, v7

    :goto_b
    :try_start_0
    array-length v5, v2

    if-ge v4, v5, :cond_13

    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/2addr v5, v13

    aput v5, v11, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v4, v1

    goto :goto_b

    :catch_0
    const-string/jumbo v2, "updateOomLevels, LMKArray NumberFormatException "

    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    if-eqz p3, :cond_16

    array-length v2, v9

    mul-int/2addr v2, v12

    add-int/2addr v2, v1

    mul-int/2addr v2, v13

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move v4, v7

    :goto_c
    array-length v5, v9

    if-ge v4, v5, :cond_14

    aget v5, v11, v4

    mul-int/lit16 v5, v5, 0x400

    sget v6, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    div-int/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    aget v5, v9, v4

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/2addr v4, v1

    goto :goto_c

    :cond_14
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    const-string/jumbo v4, "sys.sysctl.watermark_boost_factor"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    iput v3, v2, Lcom/android/server/bgslotmanager/CustomEFKManager;->origin_EFK:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "sys.sysctl.origin_extra_free_kbytes"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    sget-boolean v2, Lcom/android/server/bgslotmanager/CustomEFKManager;->APP_EFK_DECREASE_BOOST_ENABLE:Z

    if-nez v2, :cond_15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v20, v3

    goto :goto_d

    :cond_15
    iput-boolean v1, v15, Lcom/android/server/bgslotmanager/CustomEFKManager;->isBlockDecEFK:Z

    new-instance v14, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;

    iget v2, v15, Lcom/android/server/bgslotmanager/CustomEFKManager;->vWatermarkScaleGetTime:I

    int-to-long v4, v2

    iget v2, v15, Lcom/android/server/bgslotmanager/CustomEFKManager;->vWatermarkScaleGetPerTickTime:I

    int-to-long v6, v2

    move/from16 v20, v3

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    invoke-direct/range {v14 .. v20}, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;-><init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJI)V

    invoke-virtual {v14}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :goto_d
    const-string/jumbo v2, "sys.sysctl.boot_extra_free_kbytes"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, v0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    :cond_16
    return-void
.end method

.method public updateSeInfo(Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getProcessListSettingsListener()Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, v1, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mSdkSandboxApplyRestrictionsNext:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    const-string v0, ":isSdkSandboxNext"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/Flags;->selinuxSdkSandboxAudit()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getProcessListSettingsListener()Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    move-result-object p0

    iget-object v1, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-boolean p0, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mSdkSandboxApplyRestrictionsAudit:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const-string v0, ":isSdkSandboxAudit"

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/Flags;->selinuxInputSelector()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, ""

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    :goto_1
    invoke-static {p0, p1, v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeProcessesToProtoLSP(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v4, :cond_2

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_0

    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v11, v6}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    goto :goto_2

    :cond_0
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    const-wide v12, 0x20b00000001L

    invoke-virtual {v10, v5, v12, v13, v11}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    iget-boolean v10, v10, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-eqz v10, :cond_1

    add-int/lit8 v8, v8, 0x1

    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_5

    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_4

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v4, v6}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const-wide v9, 0x20b00000002L

    invoke-virtual {v3, v5, v9, v10, v4}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v6}, Lcom/android/server/am/ActivityManagerService;->getAppId(Ljava/lang/String;)I

    move-result v2

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    const-wide v3, 0x20b00000004L

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveUids;->dumpProto(IJLandroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v15, v8

    const-wide v9, 0x10500000001L

    if-lez v1, :cond_16

    const-wide v11, 0x10b00000006L

    invoke-virtual {v5, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v5, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v4, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int v4, v1, v4

    const-wide v13, 0x10500000002L

    invoke-virtual {v5, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v4, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v1, v4

    const-wide v9, 0x10500000003L

    invoke-virtual {v5, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-static {v6, v4}, Lcom/android/server/am/ProcessList;->sortProcessOomList(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    move/from16 v23, v2

    move-wide v1, v11

    move/from16 v20, v15

    goto/16 :goto_d

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v3, 0x1

    sub-int/2addr v10, v3

    :goto_5
    if-ltz v10, :cond_15

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v13, v7, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    move-object v14, v4

    const-wide v3, 0x20b00000004L

    invoke-virtual {v5, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    move-object/from16 v19, v14

    iget v14, v8, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    move/from16 v20, v15

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object v14

    move/from16 v18, v15

    iget-boolean v15, v7, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    move-wide/from16 v21, v11

    const-wide v11, 0x10800000001L

    invoke-virtual {v5, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int/2addr v11, v12

    move-object v12, v9

    move v15, v10

    const-wide v9, 0x10500000002L

    invoke-virtual {v5, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10900000003L

    invoke-virtual {v5, v9, v10, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget v9, v8, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    if-eqz v9, :cond_a

    const/4 v10, 0x2

    if-eq v9, v10, :cond_9

    const/4 v11, 0x3

    if-eq v9, v11, :cond_8

    const/4 v10, 0x4

    if-eq v9, v10, :cond_7

    const/4 v9, -0x1

    const/4 v10, -0x1

    goto :goto_6

    :cond_7
    move v10, v11

    :cond_8
    const/4 v9, -0x1

    goto :goto_6

    :cond_9
    const/4 v9, -0x1

    const/4 v10, 0x1

    goto :goto_6

    :cond_a
    const/4 v9, -0x1

    const/4 v10, 0x0

    :goto_6
    if-eq v10, v9, :cond_b

    move-object v9, v12

    const-wide v11, 0x10e00000004L

    invoke-virtual {v5, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_7

    :cond_b
    move-object v9, v12

    :goto_7
    iget-boolean v10, v8, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    if-eqz v10, :cond_c

    const-wide v10, 0x10800000005L

    const/4 v12, 0x1

    invoke-virtual {v5, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    goto :goto_8

    :cond_c
    const/4 v12, 0x1

    iget-boolean v10, v13, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    if-eqz v10, :cond_d

    const-wide v10, 0x10800000006L

    invoke-virtual {v5, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    :cond_d
    :goto_8
    iget v10, v8, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    invoke-static {v10}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v10

    move-object v11, v13

    const-wide v12, 0x10e00000007L

    invoke-virtual {v5, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v10, v7, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget v10, v10, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    const-wide v12, 0x10500000008L

    invoke-virtual {v5, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v12, 0x10b00000009L

    const/4 v10, -0x1

    invoke-virtual {v7, v5, v12, v13, v10}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    iget-object v10, v8, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    const-wide v12, 0x1090000000aL

    invoke-virtual {v5, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v10, v8, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    if-nez v10, :cond_e

    iget-object v10, v8, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    if-eqz v10, :cond_12

    :cond_e
    iget-object v10, v8, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    instance-of v14, v10, Landroid/content/ComponentName;

    if-eqz v14, :cond_f

    check-cast v10, Landroid/content/ComponentName;

    const-wide v12, 0x10b0000000bL

    invoke-virtual {v10, v5, v12, v13}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_9

    :cond_f
    if-eqz v10, :cond_10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-wide v12, 0x1090000000cL

    invoke-virtual {v5, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_10
    :goto_9
    iget-object v10, v8, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    instance-of v12, v10, Lcom/android/server/am/ProcessRecord;

    if-eqz v12, :cond_11

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    const-wide v12, 0x10b0000000dL

    const/4 v14, -0x1

    invoke-virtual {v10, v5, v12, v13, v14}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    goto :goto_a

    :cond_11
    if-eqz v10, :cond_12

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-wide v12, 0x1090000000eL

    invoke-virtual {v5, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_12
    :goto_a
    const-wide v12, 0x10b0000000fL

    move-object v14, v9

    invoke-virtual {v5, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    iget v12, v8, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    move-object/from16 v25, v14

    const-wide v13, 0x10500000001L

    invoke-virtual {v5, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v12, v8, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    const-wide v13, 0x10500000002L

    invoke-virtual {v5, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v12, v8, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    const-wide v13, 0x10500000003L

    invoke-virtual {v5, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v12, v8, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    const-wide v13, 0x10500000004L

    invoke-virtual {v5, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v12, v8, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    const-wide v13, 0x10500000005L

    invoke-virtual {v5, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v12, v8, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    invoke-static {v12}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v12

    const-wide v13, 0x10e00000007L

    invoke-virtual {v5, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v12, v8, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    invoke-static {v12}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v12

    const-wide v13, 0x10e00000008L

    invoke-virtual {v5, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v12, v7, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-wide v12, v12, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    const-wide/16 v23, 0x400

    mul-long v12, v12, v23

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13, v14}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v12

    const-wide v13, 0x10900000009L

    invoke-virtual {v5, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v12, v7, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-wide v12, v12, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    mul-long v12, v12, v23

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13, v14}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v12

    const-wide v13, 0x1090000000aL

    invoke-virtual {v5, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v12, v7, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-wide v12, v12, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    mul-long v12, v12, v23

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13, v14}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v12

    const-wide v13, 0x1090000000bL

    invoke-virtual {v5, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v12, 0x1080000000cL

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v14

    invoke-virtual {v5, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v12, v8, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/16 v13, 0x13

    if-lt v12, v13, :cond_13

    const/4 v12, 0x1

    goto :goto_b

    :cond_13
    const/4 v12, 0x0

    :goto_b
    const-wide v13, 0x1080000000dL

    invoke-virtual {v5, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v11, v11, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    const-wide v12, 0x1080000000eL

    invoke-virtual {v5, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v8, v8, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    const/16 v11, 0xa

    if-lt v8, v11, :cond_14

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    iget-wide v13, v1, Lcom/android/server/am/ActivityManagerService;->mLastPowerCheckUptime:J

    sub-long v13, v16, v13

    const-wide/16 v23, 0x0

    cmp-long v8, v11, v23

    if-eqz v8, :cond_14

    cmp-long v8, v13, v23

    if-lez v8, :cond_14

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    sub-long/2addr v7, v11

    const-wide v11, 0x10b0000000fL

    invoke-virtual {v5, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    move-object/from16 v24, v1

    move/from16 v23, v2

    const-wide v1, 0x10300000001L

    invoke-virtual {v5, v1, v2, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000002L

    invoke-virtual {v5, v1, v2, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    long-to-double v7, v7

    mul-double/2addr v7, v1

    long-to-double v1, v13

    div-double/2addr v7, v1

    const-wide v1, 0x10200000003L

    invoke-virtual {v5, v1, v2, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    invoke-virtual {v5, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_c

    :cond_14
    move-object/from16 v24, v1

    move/from16 v23, v2

    :goto_c
    invoke-virtual {v5, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v5, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v10, v15, -0x1

    move-object/from16 v4, v19

    move/from16 v15, v20

    move-wide/from16 v11, v21

    move/from16 v2, v23

    move-object/from16 v1, v24

    move-object/from16 v9, v25

    const/4 v3, 0x1

    const-wide v13, 0x10500000002L

    goto/16 :goto_5

    :cond_15
    move/from16 v23, v2

    move/from16 v20, v15

    move-wide v1, v11

    :goto_d
    invoke-virtual {v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_e

    :cond_16
    move/from16 v23, v2

    move/from16 v20, v15

    :goto_e
    iget-object v7, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1c

    iget-object v2, v7, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v6, :cond_17

    iget-object v3, v2, Lcom/android/server/am/ActiveInstrumentation;->mClass:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    iget-object v3, v2, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    const/4 v4, 0x0

    goto/16 :goto_13

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v3, 0x20b00000003L

    invoke-virtual {v5, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    iget-object v10, v2, Lcom/android/server/am/ActiveInstrumentation;->mClass:Landroid/content/ComponentName;

    const-wide v11, 0x10b00000001L

    invoke-virtual {v10, v5, v11, v12}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v10, 0x10800000002L

    iget-boolean v12, v2, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    invoke-virtual {v5, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/4 v10, 0x0

    :goto_10
    iget-object v11, v2, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_18

    iget-object v11, v2, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    const/4 v14, -0x1

    invoke-virtual {v11, v5, v3, v4, v14}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_18
    iget-object v3, v2, Lcom/android/server/am/ActiveInstrumentation;->mTargetProcesses:[Ljava/lang/String;

    array-length v4, v3

    const/4 v10, 0x0

    :goto_11
    if-ge v10, v4, :cond_19

    aget-object v11, v3, v10

    const-wide v12, 0x20900000004L

    invoke-virtual {v5, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_19
    iget-object v3, v2, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1a

    const-wide v10, 0x10b00000005L

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v10, v11, v4}, Landroid/content/pm/ApplicationInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    goto :goto_12

    :cond_1a
    const/4 v4, 0x0

    :goto_12
    const-wide v10, 0x10900000006L

    iget-object v3, v2, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    invoke-virtual {v5, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/am/ActiveInstrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    invoke-interface {v3}, Landroid/app/IInstrumentationWatcher;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide v10, 0x10900000007L

    invoke-virtual {v5, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/am/ActiveInstrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v3}, Landroid/app/IUiAutomationConnection;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide v10, 0x10900000008L

    invoke-virtual {v5, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v2, v2, Lcom/android/server/am/ActiveInstrumentation;->mArguments:Landroid/os/Bundle;

    if-eqz v2, :cond_1b

    const-wide v10, 0x10b0000000aL

    invoke-virtual {v2, v5, v10, v11}, Landroid/os/Bundle;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_1b
    invoke-virtual {v5, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_f

    :cond_1c
    const/4 v4, 0x0

    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mUidObserverController:Lcom/android/server/am/UidObserverController;

    move/from16 v2, v23

    invoke-virtual {v0, v5, v6, v2}, Lcom/android/server/am/UidObserverController;->dumpValidateUidsProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;I)V

    if-eqz v6, :cond_1f

    iget-object v1, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v2, v4

    :goto_14
    if-ge v2, v0, :cond_1e

    iget-object v3, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v8, v6}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1d

    goto :goto_15

    :cond_1d
    const-wide v8, 0x20b00000007L

    const/4 v14, -0x1

    invoke-virtual {v3, v5, v8, v9, v14}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :catchall_0
    move-exception v0

    goto :goto_16

    :cond_1e
    monitor-exit v1

    goto :goto_17

    :goto_16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1f
    :goto_17
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mImportantProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-wide v1, 0x10900000002L

    if-lez v0, :cond_24

    iget-object v3, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v3

    :try_start_1
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mImportantProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v8, v4

    :goto_18
    if-ge v8, v0, :cond_23

    iget-object v9, v7, Lcom/android/server/am/ActivityManagerService;->mImportantProcesses:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityManagerService$12;

    iget-object v10, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget v11, v9, Lcom/android/server/am/ActivityManagerService$12;->pid:I

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v10

    if-eqz v6, :cond_20

    if-eqz v10, :cond_22

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v10, v6}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_20

    goto :goto_19

    :catchall_1
    move-exception v0

    goto :goto_1a

    :cond_20
    const-wide v10, 0x20b00000008L

    invoke-virtual {v5, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    iget v12, v9, Lcom/android/server/am/ActivityManagerService$12;->pid:I

    const-wide v13, 0x10500000001L

    invoke-virtual {v5, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v12, v9, Lcom/android/server/am/ActivityManagerService$12;->token:Landroid/os/IBinder;

    if-eqz v12, :cond_21

    invoke-interface {v12}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v1, v2, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_21
    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService$12;->reason:Ljava/lang/String;

    const-wide v12, 0x10900000003L

    invoke-virtual {v5, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v5, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_22
    :goto_19
    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    :cond_23
    monitor-exit v3

    goto :goto_1b

    :goto_1a
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_24
    :goto_1b
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v4

    :goto_1c
    if-ge v3, v0, :cond_26

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_25

    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_25

    goto :goto_1d

    :cond_25
    const-wide v9, 0x20b00000009L

    const/4 v14, -0x1

    invoke-virtual {v8, v5, v9, v10, v14}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_26
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v4

    :goto_1e
    if-ge v3, v0, :cond_28

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v8, v8, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_27

    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_27

    goto :goto_1f

    :cond_27
    const-wide v9, 0x20b0000000aL

    const/4 v14, -0x1

    invoke-virtual {v8, v5, v9, v10, v14}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_28
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v4

    :goto_20
    if-ge v3, v0, :cond_2a

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_29

    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_29

    goto :goto_21

    :cond_29
    const-wide v9, 0x20b0000000bL

    const/4 v14, -0x1

    invoke-virtual {v8, v5, v9, v10, v14}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_2a
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/AppProfiler;->writeProcessesToGcToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/AppErrors;->dumpDebugLPr(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v3, v7, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-boolean v8, v8, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    invoke-virtual {v0, v5, v6, v3, v8}, Lcom/android/server/wm/ActivityTaskManagerInternal;->writeProcessesToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IZ)V

    if-nez v6, :cond_2b

    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, v5}, Lcom/android/server/am/UserController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    :cond_2b
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mUidObserverController:Lcom/android/server/am/UidObserverController;

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/UidObserverController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleAllowlist:[I

    array-length v3, v0

    move v8, v4

    :goto_22
    if-ge v8, v3, :cond_2c

    aget v9, v0, v8

    const-wide v10, 0x20500000018L

    invoke-virtual {v5, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    :cond_2c
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleTempAllowlist:[I

    array-length v3, v0

    move v8, v4

    :goto_23
    if-ge v8, v3, :cond_2d

    aget v9, v0, v8

    const-wide v10, 0x20500000019L

    invoke-virtual {v5, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    :cond_2d
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mPendingTempAllowlist:Lcom/android/server/am/PendingTempAllowlists;

    invoke-virtual {v0}, Lcom/android/server/am/PendingTempAllowlists;->size()I

    move-result v0

    if-lez v0, :cond_2e

    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mPendingTempAllowlist:Lcom/android/server/am/PendingTempAllowlists;

    invoke-virtual {v0}, Lcom/android/server/am/PendingTempAllowlists;->size()I

    move-result v0

    :goto_24
    if-ge v4, v0, :cond_2e

    iget-object v3, v7, Lcom/android/server/am/ActivityManagerService;->mPendingTempAllowlist:Lcom/android/server/am/PendingTempAllowlists;

    invoke-virtual {v3, v4}, Lcom/android/server/am/PendingTempAllowlists;->valueAt(I)Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v8, 0x20b0000001aL

    invoke-virtual {v5, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    iget v10, v3, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->targetUid:I

    const-wide v13, 0x10500000001L

    invoke-virtual {v5, v13, v14, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v10, v3, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->duration:J

    const-wide v13, 0x10300000002L

    invoke-virtual {v5, v13, v14, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v10, v3, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->tag:Ljava/lang/String;

    const-wide v11, 0x10900000003L

    invoke-virtual {v5, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget v10, v3, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->type:I

    const-wide v11, 0x10500000004L

    invoke-virtual {v5, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v10, v3, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->reasonCode:I

    const-wide v11, 0x10500000005L

    invoke-virtual {v5, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v11, 0x10500000006L

    iget v3, v3, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->callingUid:I

    invoke-virtual {v5, v11, v12, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v5, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_2e
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mDebugApp:Ljava/lang/String;

    const-wide v3, 0x10900000001L

    if-nez v0, :cond_2f

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mOrigDebugApp:Ljava/lang/String;

    if-nez v8, :cond_2f

    iget-boolean v8, v7, Lcom/android/server/am/ActivityManagerService;->mDebugTransient:Z

    if-nez v8, :cond_2f

    iget-boolean v8, v7, Lcom/android/server/am/ActivityManagerService;->mOrigWaitForDebugger:Z

    if-eqz v8, :cond_31

    :cond_2f
    if-eqz v6, :cond_30

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mOrigDebugApp:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_30
    const-wide v8, 0x10b0000001eL

    invoke-virtual {v5, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v5, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mOrigDebugApp:Ljava/lang/String;

    invoke-virtual {v5, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10800000003L

    iget-boolean v2, v7, Lcom/android/server/am/ActivityManagerService;->mDebugTransient:Z

    invoke-virtual {v5, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000004L

    iget-boolean v2, v7, Lcom/android/server/am/ActivityManagerService;->mOrigWaitForDebugger:Z

    invoke-virtual {v5, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v5, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_31
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0, v5}, Lcom/android/server/am/AppProfiler;->writeMemWatchProcessToProtoLPf(Landroid/util/proto/ProtoOutputStream;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mTrackAllocationApp:Ljava/lang/String;

    if-eqz v0, :cond_33

    if-eqz v6, :cond_32

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_32
    const-wide v0, 0x10900000021L

    iget-object v2, v7, Lcom/android/server/am/ActivityManagerService;->mTrackAllocationApp:Ljava/lang/String;

    invoke-virtual {v5, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_33
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    iget-object v2, v1, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileApp:Ljava/lang/String;

    if-nez v2, :cond_34

    iget-object v8, v1, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-nez v8, :cond_34

    iget-object v8, v1, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v8, :cond_37

    iget-object v9, v8, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-nez v9, :cond_34

    iget-object v8, v8, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v8, :cond_37

    :cond_34
    if-eqz v6, :cond_35

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    :cond_35
    const-wide v8, 0x10b00000022L

    invoke-virtual {v5, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    iget-object v2, v1, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileApp:Ljava/lang/String;

    invoke-virtual {v5, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    const-wide v3, 0x10b00000002L

    const/4 v14, -0x1

    invoke-virtual {v2, v5, v3, v4, v14}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    iget-object v1, v1, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v1, :cond_36

    const-wide v2, 0x10b00000003L

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/ProfilerInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget v0, v0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    const-wide v13, 0x10500000004L

    invoke-virtual {v5, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_36
    invoke-virtual {v5, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_37
    if-eqz v6, :cond_38

    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_38
    const-wide v0, 0x10900000023L

    iget-object v2, v7, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    invoke-virtual {v5, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_39
    if-nez v6, :cond_3a

    const-wide v0, 0x10800000024L

    iget-boolean v2, v7, Lcom/android/server/am/ActivityManagerService;->mAlwaysFinishActivities:Z

    invoke-virtual {v5, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10500000026L

    move/from16 v15, v20

    invoke-virtual {v5, v0, v1, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10800000027L

    iget-boolean v2, v7, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    invoke-virtual {v5, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000028L

    iget-boolean v2, v7, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    invoke-virtual {v5, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000029L

    iget-boolean v2, v7, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    invoke-virtual {v5, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1050000002aL

    iget v2, v7, Lcom/android/server/am/ActivityManagerService;->mFactoryTest:I

    invoke-virtual {v5, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x1080000002bL

    iget-boolean v2, v7, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    invoke-virtual {v5, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000002cL

    iget-boolean v2, v7, Lcom/android/server/am/ActivityManagerService;->mCallFinishBooting:Z

    invoke-virtual {v5, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000002dL

    iget-boolean v2, v7, Lcom/android/server/am/ActivityManagerService;->mBootAnimationComplete:Z

    invoke-virtual {v5, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1030000002eL

    iget-wide v2, v7, Lcom/android/server/am/ActivityManagerService;->mLastPowerCheckUptime:J

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const-wide v2, 0x10500000031L

    invoke-virtual {v5, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v1, v1, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-wide v2, 0x10500000032L

    invoke-virtual {v5, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000033L

    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    invoke-virtual {v5, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000035L

    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    invoke-virtual {v5, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000036L

    iget v0, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    invoke-virtual {v5, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-boolean v1, v0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    const-wide v2, 0x10800000037L

    invoke-virtual {v5, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10500000038L

    iget v3, v0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    invoke-virtual {v5, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000039L

    iget v0, v0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    invoke-virtual {v5, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide v1, 0x10b0000003aL

    iget-wide v3, v7, Lcom/android/server/am/ActivityManagerService;->mLastIdleTime:J

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    move-wide/from16 v26, v5

    move-object v5, v0

    move-wide/from16 v0, v26

    iget-object v2, v7, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/AppProfiler;->getLowRamTimeSinceIdleLPr(J)J

    move-result-wide v0

    const-wide v2, 0x1030000003bL

    invoke-virtual {v5, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_3a
    return-void

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method
