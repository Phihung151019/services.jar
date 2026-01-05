.class public final Lcom/android/server/job/JobPackageTracker$PackageEntry;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public activeCount:I

.field public activeNesting:I

.field public activeStartTime:J

.field public activeTopCount:I

.field public activeTopNesting:I

.field public activeTopStartTime:J

.field public hadActive:Z

.field public hadActiveTop:Z

.field public hadPending:Z

.field public pastActiveTime:J

.field public pastActiveTopTime:J

.field public pastPendingTime:J

.field public pendingCount:I

.field public pendingNesting:I

.field public pendingStartTime:J

.field public final stopReasons:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public final getActiveTime(J)J
    .locals 4

    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget v2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    sub-long/2addr p1, v2

    add-long/2addr p1, v0

    return-wide p1

    :cond_0
    return-wide v0
.end method

.method public final getPendingTime(J)J
    .locals 4

    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget v2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    sub-long/2addr p1, v2

    add-long/2addr p1, v0

    return-wide p1

    :cond_0
    return-wide v0
.end method
