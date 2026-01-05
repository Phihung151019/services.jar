.class public final Lcom/android/server/enterprise/plm/impl/ConnectionHelper;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBindCounter:I

.field public final mBindRetryRunnable:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;

.field public mBinder:Landroid/os/IBinder;

.field public final mClassName:Ljava/lang/String;

.field public final mConnection:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;

.field public final mConnectionStateListener:Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;

.field public final mContext:Landroid/content/Context;

.field public mHasCallbacks:Z

.field public final mPackageName:Ljava/lang/String;

.field public mProcessId:I


# direct methods
.method public static -$$Nest$mgetPidFromPackageName(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Ljava/lang/String;)I
    .locals 2

    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ":"

    invoke-static {p1, p0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    const-string v1, "ConnectionHelper"

    invoke-static {p0, p1, v1}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;-><init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mConnection:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;

    new-instance v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;-><init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindRetryRunnable:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;

    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mClassName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mConnectionStateListener:Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mProcessId:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindCounter:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mHasCallbacks:Z

    return-void
.end method


# virtual methods
.method public final resetBindTimer(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reset bind timer for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, " with "

    goto :goto_0

    :cond_0
    const-string v1, " without "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "counter reset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mHasCallbacks:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindRetryRunnable:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mHasCallbacks:Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method
