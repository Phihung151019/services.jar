.class public final Lcom/android/server/am/BroadcastHistory;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final MAX_ABORTED_BROADCAST_HISTORY:I


# instance fields
.field public final MAX_BROADCAST_HISTORY:I

.field public final MAX_BROADCAST_SUMMARY_HISTORY:I

.field public final mAbortedBroadcastHistory:[Ljava/lang/String;

.field public mAbortedHistoryNext:I

.field public mBCBrHistoryRef:Ljava/lang/ref/SoftReference;

.field public final mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

.field public final mBroadcastSummaryHistory:[Landroid/content/Intent;

.field public final mBroadcastSummaryHistoryToString:[Ljava/lang/String;

.field public final mFrozenBroadcasts:Ljava/util/ArrayList;

.field public mHistoryNext:I

.field public final mPendingBroadcastCountsPerUid:Landroid/util/SparseArray;

.field public final mPendingBroadcasts:Ljava/util/ArrayList;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mSummaryHistoryDispatchTime:[J

.field public final mSummaryHistoryEnqueueTime:[J

.field public final mSummaryHistoryFinishTime:[J

.field public mSummaryHistoryNext:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_ABORTED_BROADCAST:I

    sget v0, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_ABORTED_BROADCAST:I

    sput v0, Lcom/android/server/am/BroadcastHistory;->MAX_ABORTED_BROADCAST_HISTORY:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastConstants;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mFrozenBroadcasts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->mAbortedHistoryNext:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcastCountsPerUid:Landroid/util/SparseArray;

    iget v0, p2, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_COMPLETE_SIZE:I

    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_HISTORY:I

    iget p2, p2, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_SUMMARY_SIZE:I

    iput p2, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    new-array v0, v0, [Lcom/android/server/am/BroadcastRecord;

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    new-array v0, p2, [Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    new-array v0, p2, [J

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    new-array v0, p2, [J

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    new-array v0, p2, [J

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    sget p2, Lcom/android/server/am/BroadcastHistory;->MAX_ABORTED_BROADCAST_HISTORY:I

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastHistory;->mAbortedBroadcastHistory:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/BroadcastHistory;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method public static dumpBroadcastList(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 5

    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " broadcasts:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "    <empty>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    if-eqz p3, :cond_1

    iget-object v4, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  broadcast #"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3, p0, p1}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V

    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_2
    if-nez v1, :cond_4

    const-string p1, "    <no-matches>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static ringAdvance(III)I
    .locals 0

    add-int/2addr p0, p1

    if-gez p0, :cond_0

    add-int/lit8 p2, p2, -0x1

    return p2

    :cond_0
    if-lt p0, p2, :cond_1

    const/4 p0, 0x0

    :cond_1
    return p0
.end method


# virtual methods
.method public final updatePendingBroadcastCounterAndLogToTrace(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcastCountsPerUid:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcastCountsPerUid:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v1, "null"

    :cond_1
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    add-int/2addr v2, p2

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcastCountsPerUid:Landroid/util/SparseArray;

    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    const-string p2, "/"

    invoke-static {v1, p2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p1, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Broadcasts pending per uid"

    const-wide/16 v0, 0x40

    invoke-static {v0, v1, p2, p1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const-string p1, "Broadcasts pending"

    invoke-static {v0, v1, p1, p0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    return-void
.end method
