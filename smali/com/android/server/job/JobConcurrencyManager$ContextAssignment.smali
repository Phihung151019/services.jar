.class final Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public context:Lcom/android/server/job/JobServiceContext;

.field public newJob:Lcom/android/server/job/controllers/JobStatus;

.field public newWorkType:I

.field public preemptReason:Ljava/lang/String;

.field public preemptReasonCode:I

.field public preferredUid:I

.field public shouldStopJobReason:Ljava/lang/String;

.field public timeUntilStoppableMs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preferredUid:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReasonCode:I

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preferredUid:I

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReason:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReasonCode:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->timeUntilStoppableMs:J

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->shouldStopJobReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    return-void
.end method
