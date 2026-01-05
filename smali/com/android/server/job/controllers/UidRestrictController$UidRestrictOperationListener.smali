.class public final Lcom/android/server/job/controllers/UidRestrictController$UidRestrictOperationListener;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/UidRestrictController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/UidRestrictController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/controllers/UidRestrictController$UidRestrictOperationListener;->this$0:Lcom/android/server/job/controllers/UidRestrictController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/server/job/controllers/UidRestrictController$UidRestrictOperationListener;->onReceiveInternal(Landroid/content/Intent;)V

    return-void
.end method

.method public onReceiveInternal(Landroid/content/Intent;)V
    .locals 5

    const-string/jumbo v0, "Pending jobs: u="

    iget-object v1, p0, Lcom/android/server/job/controllers/UidRestrictController$UidRestrictOperationListener;->this$0:Lcom/android/server/job/controllers/UidRestrictController;

    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v2, "android.intent.ACTION_JOB_RESTRICT_UID"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "uid"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "restrict"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-lez v2, :cond_1

    sget-boolean v3, Lcom/android/server/job/controllers/UidRestrictController;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "JobScheduler.UidRestrict"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", restrict="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/job/controllers/UidRestrictController$UidRestrictOperationListener;->this$0:Lcom/android/server/job/controllers/UidRestrictController;

    invoke-virtual {p0, v2, p1}, Lcom/android/server/job/controllers/UidRestrictController;->setUidRestrictedLocked(IZ)V

    :cond_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
