.class public final synthetic Lcom/android/server/blob/BlobStoreIdleJobService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/blob/BlobStoreIdleJobService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreIdleJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/BlobStoreIdleJobService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/blob/BlobStoreIdleJobService;

    iput-object p2, p0, Lcom/android/server/blob/BlobStoreIdleJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/blob/BlobStoreIdleJobService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/blob/BlobStoreIdleJobService;

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreIdleJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    sget v1, Lcom/android/server/blob/BlobStoreIdleJobService;->$r8$clinit:I

    const-class v1, Lcom/android/server/blob/BlobStoreManagerService$LocalService;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/blob/BlobStoreManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/blob/BlobStoreManagerService$LocalService;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    iget-object v2, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/blob/BlobStoreManagerService;->handleIdleMaintenanceLocked()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
