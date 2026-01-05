.class public abstract Lcom/android/server/job/restrictions/JobRestriction;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mInternalReason:I

.field public final mPendingReason:I

.field public final mService:Lcom/android/server/job/JobSchedulerService;

.field public final mStopReason:I


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    iput p3, p0, Lcom/android/server/job/restrictions/JobRestriction;->mPendingReason:I

    iput p2, p0, Lcom/android/server/job/restrictions/JobRestriction;->mStopReason:I

    iput p4, p0, Lcom/android/server/job/restrictions/JobRestriction;->mInternalReason:I

    return-void
.end method


# virtual methods
.method public abstract dumpConstants(Landroid/util/IndentingPrintWriter;)V
.end method

.method public final getInternalReason()I
    .locals 0

    iget p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mInternalReason:I

    return p0
.end method

.method public abstract isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z
.end method

.method public onSystemServicesReady()V
    .locals 0

    return-void
.end method
