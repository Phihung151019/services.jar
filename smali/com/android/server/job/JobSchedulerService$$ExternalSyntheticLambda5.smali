.class public final synthetic Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->$r8$classId:I

    iput p1, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->$r8$classId:I

    iget p0, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->f$0:I

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    packed-switch v3, :pswitch_data_0

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq v0, p0, :cond_1

    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :pswitch_0
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eq p0, v0, :cond_3

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v0, p0, :cond_3

    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    if-ne p1, p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1

    :pswitch_1
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eq p0, v0, :cond_5

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v0, p0, :cond_5

    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    if-ne p1, p0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :cond_5
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
