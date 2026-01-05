.class public final Lcom/android/server/appop/AppOpsService$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appop/AppOpsService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/appop/AppOpsService$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$1;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/appop/AppOpsService$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$1;->this$0:Lcom/android/server/appop/AppOpsService;

    sget-boolean v2, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService;->getPackageListAndResample()Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$1;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/16 v4, 0xa5

    if-ge v0, v4, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->shouldCollectNotes(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    const-wide/16 v5, 0x7

    sget-object v7, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    invoke-virtual {v0, v3}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setOpNames(Ljava/util/List;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v0

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v0

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/server/appop/AppOpsService$10;

    invoke-direct {v4, p0, v2}, Lcom/android/server/appop/AppOpsService$10;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)V

    invoke-virtual {v1, v0, v3, v4}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$1;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$1;->this$0:Lcom/android/server/appop/AppOpsService;

    iput-boolean v0, v2, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    iput-boolean v0, v2, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    new-instance v0, Lcom/android/server/appop/AppOpsService$1$1;

    invoke-direct {v0, p0}, Lcom/android/server/appop/AppOpsService$1$1;-><init>(Lcom/android/server/appop/AppOpsService$1;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
