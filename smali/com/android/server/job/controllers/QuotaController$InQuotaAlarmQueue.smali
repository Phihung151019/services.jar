.class public final Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;
.super Lcom/android/server/utils/AlarmQueue;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/QuotaController;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 8

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;->this$0:Lcom/android/server/job/controllers/QuotaController;

    const/4 v5, 0x0

    const-wide/32 v6, 0xea60

    const-string v3, "*job.quota_check*"

    const-string v4, "In quota"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method


# virtual methods
.method public final isForUser(ILjava/lang/Object;)Z
    .locals 0

    check-cast p2, Landroid/content/pm/UserPackage;

    iget p0, p2, Landroid/content/pm/UserPackage;->userId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final processExpiredAlarms(Landroid/util/ArraySet;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserPackage;

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v3, v3, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    iget v4, v2, Landroid/content/pm/UserPackage;->userId:I

    iget-object v2, v2, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
