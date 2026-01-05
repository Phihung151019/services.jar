.class public final Lcom/android/server/am/OomAdjusterModernImpl;
.super Lcom/android/server/am/OomAdjuster;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final ADJ_SLOT_VALUES:[I


# instance fields
.field public final mComputeConnectionIgnoringReachableClientsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;

.field public final mComputeConnectionsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;

.field public final mComputeHostConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;

.field public final mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

.field public final mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

.field public final mReachableCollectingConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;

.field public final mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/OomAdjusterModernImpl;->ADJ_SLOT_VALUES:[I

    return-void

    :array_0
    .array-data 4
        -0x3e8
        -0x384
        -0x320
        -0x2bc
        0x0
        0x32
        0x64
        0xc8
        0xe1
        0xfa
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
        0x3e9
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/ProcessStateController$GlobalState;Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/OomAdjuster$Injector;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/OomAdjuster;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/ProcessStateController$GlobalState;Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/OomAdjuster$Injector;)V

    new-instance p1, Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;->mReachables:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mReachableCollectingConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;

    new-instance p1, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;I)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeConnectionIgnoringReachableClientsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;

    new-instance p1, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;I)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeHostConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;

    new-instance p1, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;

    invoke-direct {p1, p0}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeConnectionsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;

    new-instance p1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    const/16 p3, 0x15

    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;II)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    new-instance p1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    const/4 p2, 0x1

    const/16 p3, 0x12

    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;II)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    new-instance p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    return-void
.end method

.method public static forEachConnectionLSP(Lcom/android/server/am/ProcessRecord;Ljava/util/function/BiConsumer;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v1, v0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/16 v2, -0x384

    const/4 v3, 0x2

    if-ltz v1, :cond_5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v5

    iget-object v6, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v6, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v5, :cond_0

    iget-object v5, v7, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    goto :goto_1

    :cond_0
    iget-object v5, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    :goto_1
    if-eqz v5, :cond_4

    if-eq v5, p0, :cond_4

    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v8, v7, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    if-lt v8, v2, :cond_1

    if-ltz v8, :cond_4

    :cond_1
    iget v2, v7, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    if-gtz v2, :cond_2

    iget v2, v7, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    if-lez v2, :cond_2

    iget v2, v7, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    if-le v2, v3, :cond_4

    :cond_2
    iget-boolean v2, v5, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v2, :cond_3

    iget-object v2, v6, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    iget-object v1, v0, Lcom/android/server/am/ProcessServiceRecord;->mSdkSandboxConnections:Landroid/util/ArraySet;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    add-int/lit8 v1, v1, -0x1

    :goto_4
    if-ltz v1, :cond_b

    iget-object v4, v0, Lcom/android/server/am/ProcessServiceRecord;->mSdkSandboxConnections:Landroid/util/ArraySet;

    if-eqz v4, :cond_7

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_5
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_a

    if-eq v5, p0, :cond_a

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v7, v6, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    if-lt v7, v2, :cond_8

    if-ltz v7, :cond_a

    :cond_8
    iget v7, v6, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    if-gtz v7, :cond_9

    iget v7, v6, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    if-lez v7, :cond_9

    iget v6, v6, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    if-gt v6, v3, :cond_9

    goto :goto_6

    :cond_9
    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    :goto_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-object v1, v0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-ltz v1, :cond_f

    iget-object v4, v0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ContentProviderConnection;

    iget-object v5, v4, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v5, v5, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_e

    if-eq v5, p0, :cond_e

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v7, v6, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    if-lt v7, v2, :cond_c

    if-ltz v7, :cond_e

    :cond_c
    iget v7, v6, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    if-gtz v7, :cond_d

    iget v7, v6, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    if-lez v7, :cond_d

    iget v6, v6, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    if-gt v6, v3, :cond_d

    goto :goto_8

    :cond_d
    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    :goto_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_f
    return-void
.end method


# virtual methods
.method public final computeConnectionsLSP()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->poll()Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeConnectionsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;

    iget-object v3, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    if-eqz v1, :cond_0

    iput-object v1, v3, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;->accept(Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)V

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->poll()Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {p0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->poll()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    iput-object v0, v3, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;->accept(Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)V

    invoke-virtual {p0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->poll()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final getInitialAdj(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    const/16 p0, 0x3e9

    return p0
.end method

.method public final getInitialCapability(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getInitialIsCurBoundByNonBgRestrictedApp(Lcom/android/server/am/ProcessRecord;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getInitialProcState(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final onProcessEndLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->unlink(Lcom/android/server/am/ProcessRecord;)V

    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->unlink(Lcom/android/server/am/ProcessRecord;)V

    :cond_0
    return-void
.end method

.method public final onProcessOomAdjChanged(ILcom/android/server/am/ProcessRecord;)V
    .locals 1

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/ProcessRecord;)V

    :cond_0
    return-void
.end method

.method public final onProcessStateChanged(ILcom/android/server/am/ProcessRecord;)V
    .locals 1

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/ProcessRecord;)V

    :cond_0
    return-void
.end method

.method public final partialUpdateLSP(ILandroid/util/ArraySet;)V
    .locals 26

    move-object/from16 v0, p0

    const/4 v11, 0x1

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    sub-long v16, v12, v2

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    iget-object v3, v2, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    iget-object v3, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    iput-object v1, v3, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mTopApp:Lcom/android/server/am/ProcessRecord;

    iput-wide v12, v3, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mNow:J

    move/from16 v4, p1

    iput v4, v3, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mOomAdjReason:I

    iput-object v2, v3, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mUids:Lcom/android/server/am/ActiveUids;

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mFullUpdate:Z

    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/2addr v3, v11

    iput v3, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v6

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_0

    move-object/from16 v8, p2

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iput-boolean v11, v10, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v7, v11

    goto :goto_0

    :cond_0
    move-object/from16 v8, p2

    iget-object v6, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mReachableCollectingConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;

    iput-object v3, v6, Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;->mReachables:Ljava/util/ArrayList;

    move v7, v5

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    invoke-static {v9, v6}, Lcom/android/server/am/OomAdjusterModernImpl;->forEachConnectionLSP(Lcom/android/server/am/ProcessRecord;Ljava/util/function/BiConsumer;)V

    add-int/2addr v7, v11

    goto :goto_1

    :cond_1
    iget-object v6, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v6}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    iget-object v6, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v5

    :goto_2
    if-ge v8, v7, :cond_a

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v10, v10, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    iput-object v9, v6, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    move-object v10, v3

    iget-object v3, v6, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mTopApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v2

    iget-wide v1, v6, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mNow:J

    move-wide/from16 v19, v1

    move-object v1, v9

    iget v9, v6, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mOomAdjReason:I

    move v2, v8

    const/4 v8, 0x0

    move-object/from16 v21, v10

    const/4 v10, 0x0

    move/from16 v22, v2

    const/16 v2, 0x3e9

    const/4 v4, 0x0

    move/from16 v23, v7

    const/4 v7, 0x0

    move/from16 v24, v11

    move-object/from16 v25, v18

    move-object v11, v6

    move-wide/from16 v5, v19

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    iget-object v2, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeConnectionIgnoringReachableClientsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;

    iput-object v11, v2, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->args:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v4, v3, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_3
    if-ltz v4, :cond_7

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_4
    if-ltz v6, :cond_6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_5
    if-ltz v8, :cond_5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ConnectionRecord;

    iget-boolean v10, v1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v10, :cond_2

    iget-object v10, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_2

    goto :goto_6

    :cond_2
    iget-object v10, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    :goto_6
    if-eqz v10, :cond_4

    if-ne v10, v1, :cond_3

    goto :goto_7

    :cond_3
    invoke-virtual {v2, v9, v10}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_7
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_7
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-object v4, v3, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_8
    if-ltz v4, :cond_9

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v5

    iget-object v6, v5, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_9
    if-ltz v6, :cond_8

    iget-object v7, v5, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ContentProviderConnection;

    iget-object v8, v7, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v7, v8}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    :cond_9
    iget-object v2, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v2, v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/ProcessRecord;)V

    add-int/lit8 v8, v22, 0x1

    move/from16 v4, p1

    move-object v6, v11

    move-object/from16 v3, v21

    move/from16 v7, v23

    move/from16 v11, v24

    move-object/from16 v2, v25

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_a
    move-object/from16 v25, v2

    move-object/from16 v21, v3

    move/from16 v24, v11

    iget-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl;->computeConnectionsLSP()V

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v1, :cond_d

    move-object/from16 v10, v21

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v4, v3, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    iget v3, v3, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    const/16 v4, 0x2bc

    if-gt v4, v3, :cond_b

    sget v6, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    :cond_b
    const/16 v4, 0x3e9

    if-ge v3, v4, :cond_c

    goto :goto_b

    :cond_c
    move/from16 v2, v24

    :goto_b
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v21, v10

    goto :goto_a

    :cond_d
    if-eqz v2, :cond_e

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjuster;->applyLruAdjust(Ljava/util/ArrayList;)V

    :cond_e
    move-object/from16 v2, v25

    iget-object v1, v2, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v1, :cond_12

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    const/16 v4, 0x13

    iput v4, v3, Lcom/android/server/am/UidRecord;->mCurProcState:I

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    iput v4, v3, Lcom/android/server/am/UidRecord;->mCurCapability:I

    iget-object v6, v3, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_d
    if-ltz v6, :cond_11

    invoke-virtual {v3, v6}, Lcom/android/server/am/UidRecord;->getProcessRecordByIndex(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v7

    iget-boolean v8, v7, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez v8, :cond_10

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v8, :cond_10

    iget-boolean v8, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v8, :cond_f

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-gtz v8, :cond_f

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    if-nez v8, :cond_f

    goto :goto_e

    :cond_f
    invoke-static {v7}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    :cond_10
    :goto_e
    add-int/lit8 v6, v6, -0x1

    goto :goto_d

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_12
    const/4 v9, 0x0

    move/from16 v1, p1

    move-wide v3, v12

    move-wide v5, v14

    move-wide/from16 v7, v16

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/OomAdjuster;->postUpdateOomAdjInnerLSP(ILcom/android/server/am/ActiveUids;JJJZ)V

    return-void
.end method

.method public final performUpdateOomAdjLSP(I)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v2

    iput v2, v0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v1, v0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    invoke-static {v1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v11, 0x40

    invoke-static {v11, v12, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v2, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    sub-long v15, v5, v7

    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v2, v0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iget-object v7, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v7}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    iget-object v7, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v7}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v7, v7, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v4

    :goto_0
    if-ltz v8, :cond_1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v4, v10, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    iget-object v4, v9, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    if-eqz v4, :cond_0

    const/16 v10, 0x13

    iput v10, v4, Lcom/android/server/am/UidRecord;->mCurProcState:I

    iput-boolean v2, v4, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    iput v2, v4, Lcom/android/server/am/UidRecord;->mCurCapability:I

    :cond_0
    move v4, v8

    const/4 v8, 0x0

    const/4 v10, 0x0

    move/from16 v17, v2

    const/16 v2, 0x3e9

    move/from16 v18, v4

    const/4 v4, 0x1

    move-object/from16 v19, v7

    const/4 v7, 0x0

    move-object/from16 v20, v9

    move v9, v1

    move-object/from16 v1, v20

    move-wide/from16 v20, v11

    const/4 v11, 0x1

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    move/from16 v22, v9

    move-object v9, v1

    move/from16 v1, v22

    iget-object v2, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v2, v9}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/ProcessRecord;)V

    add-int/lit8 v8, v18, -0x1

    move v4, v11

    move/from16 v2, v17

    move-object/from16 v7, v19

    move-wide/from16 v11, v20

    goto :goto_0

    :cond_1
    move-wide/from16 v20, v11

    move v11, v4

    iget-object v2, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v2}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    iget-object v2, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    iput-object v3, v2, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mTopApp:Lcom/android/server/am/ProcessRecord;

    iput-wide v5, v2, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mNow:J

    iput v1, v2, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mOomAdjReason:I

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mUids:Lcom/android/server/am/ActiveUids;

    iput-boolean v11, v2, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mFullUpdate:Z

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl;->computeConnectionsLSP()V

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/android/server/am/OomAdjuster;->applyLruAdjust(Ljava/util/ArrayList;)V

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    const/4 v9, 0x1

    move-wide v3, v5

    move-wide v5, v13

    move-wide v7, v15

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/OomAdjuster;->postUpdateOomAdjInnerLSP(ILcom/android/server/am/ActiveUids;JJJZ)V

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final performUpdateOomAdjLSP(ILcom/android/server/am/ProcessRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterModernImpl;->performUpdateOomAdjPendingTargetsLocked(I)V

    return-void
.end method

.method public final performUpdateOomAdjPendingTargetsLocked(I)V
    .locals 4

    iput p1, p0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->enqueuePendingTopAppIfNecessaryLSP()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    invoke-static {p1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/OomAdjusterModernImpl;->partialUpdateLSP(ILandroid/util/ArraySet;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public resetInternal()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {p0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    return-void
.end method
