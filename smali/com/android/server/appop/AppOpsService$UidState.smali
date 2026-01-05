.class final Lcom/android/server/appop/AppOpsService$UidState;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final pkgOps:Landroid/util/ArrayMap;

.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    iput p2, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v2, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-interface {v1, v2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removeUid(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removePackage(ILjava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;J)V
    .locals 5

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    iget p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const/16 v2, 0x2bc

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    const-string v3, "    state="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eq v1, v2, :cond_0

    const-string v1, "    pendingState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    iget-object v3, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    const-string v4, "    capability="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p1, v1}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    if-eq v1, v3, :cond_1

    const-string v1, "    pendingCapability="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p1, v3}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_1
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    const-string v3, "    appWidgetVisible="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    if-eq v1, v2, :cond_2

    const-string v1, "    pendingAppWidgetVisible="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_2
    iget-object v0, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-eqz p0, :cond_3

    const-string p0, "    pendingStateCommitTime="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v3, v4, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_3
    return-void
.end method

.method public final evalMode(II)I
    .locals 1

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    move-result-object v0

    iget p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    check-cast v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->evalMode(III)I

    move-result p0

    return p0
.end method

.method public final getState()I
    .locals 2

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    iget p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {v0, p0}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->updateUidPendingStateIfNeeded(I)V

    iget-object v0, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    const/16 v1, 0x2bc

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method
