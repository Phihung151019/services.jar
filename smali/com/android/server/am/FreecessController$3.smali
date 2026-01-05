.class public final Lcom/android/server/am/FreecessController$3;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/FreecessController;

.field public final synthetic val$startTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessController;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/FreecessController$3;->this$0:Lcom/android/server/am/FreecessController;

    iput-wide p2, p0, Lcom/android/server/am/FreecessController$3;->val$startTime:J

    const-string/jumbo p1, "MARsWatchdogUnfreezer"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const-string v0, "FreecessController"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController$3;->this$0:Lcom/android/server/am/FreecessController;

    iget-object v1, v1, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Lcom/android/server/am/FreecessController$UidPidMap;

    iget-object v1, v1, Lcom/android/server/am/FreecessController$UidPidMap;->mUidPidMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/server/am/FreecessController$3;->val$startTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1388

    cmp-long v7, v7, v9

    if-ltz v7, :cond_1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/server/am/FreecessController$3;->this$0:Lcom/android/server/am/FreecessController;

    invoke-virtual {v7, v6, v3}, Lcom/android/server/am/FreecessController;->releaseFreezedAppPid(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-boolean v1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    const-string v1, "Error occurred while handleResetAllPreAction: "

    invoke-static {p0, v1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    const-string p0, "!@*** unFreezeAllPackages for watchdog : End thread for preaction unfreezing!!!"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
