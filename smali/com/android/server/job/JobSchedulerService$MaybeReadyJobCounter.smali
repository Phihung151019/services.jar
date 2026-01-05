.class public final Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mBeginTime:J

.field public mDeferedCount:I

.field public mNetworkJobGroupCount:I

.field public mOperationCount:I

.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mBeginTime:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mOperationCount:I

    iput p1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mDeferedCount:I

    iput p1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mNetworkJobGroupCount:I

    return-void
.end method
