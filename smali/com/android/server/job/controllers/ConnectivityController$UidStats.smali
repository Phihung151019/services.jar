.class public final Lcom/android/server/job/controllers/ConnectivityController$UidStats;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public baseBias:I

.field public earliestEJEnqueueTime:J

.field public earliestEnqueueTime:J

.field public earliestUIJEnqueueTime:J

.field public lastUpdatedElapsed:J

.field public numEJs:I

.field public numReadyWithConnectivity:I

.field public numRegular:I

.field public numRequestedNetworkAvailable:I

.field public numUIJs:I

.field public final runningJobs:Landroid/util/ArraySet;

.field public final uid:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    iput p1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    return-void
.end method
