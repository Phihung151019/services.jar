.class public final synthetic Lcom/android/server/input/BatteryController$ListenerRecord$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/BatteryController$ListenerRecord;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/BatteryController$ListenerRecord;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/BatteryController$ListenerRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/BatteryController$ListenerRecord;

    iput p2, p0, Lcom/android/server/input/BatteryController$ListenerRecord$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/input/BatteryController$ListenerRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/BatteryController$ListenerRecord;

    iget p0, p0, Lcom/android/server/input/BatteryController$ListenerRecord$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, v0, Lcom/android/server/input/BatteryController$ListenerRecord;->this$0:Lcom/android/server/input/BatteryController;

    const-string/jumbo v1, "Removing battery listener for pid "

    iget-object v2, v0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/BatteryController$ListenerRecord;

    if-nez v3, :cond_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-boolean v4, Lcom/android/server/input/BatteryController;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "BatteryController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " because the process died"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, v3, Lcom/android/server/input/BatteryController$ListenerRecord;->mMonitoredDevices:Ljava/util/Set;

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/android/server/input/BatteryController;->unregisterRecordLocked(Lcom/android/server/input/BatteryController$ListenerRecord;I)V

    goto :goto_0

    :cond_2
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
