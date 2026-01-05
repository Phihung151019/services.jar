.class public final synthetic Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda10;->f$0:I

    iput-object p2, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda10;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda10;->f$0:I

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda10;->f$2:Ljava/lang/String;

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    if-ne v2, v0, :cond_1

    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
