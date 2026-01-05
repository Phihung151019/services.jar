.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/ActivityManager$UidFrozenStateChangedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/alarm/AlarmManagerService;

    return-void
.end method


# virtual methods
.method public final onUidFrozenStateChanged([I[I)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/alarm/AlarmManagerService;

    sget-object v2, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    array-length v2, p2

    array-length v3, p1

    if-eq v3, v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Got different length arrays in frozen state callback! uids.length: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " frozenStates.length: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AlarmManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_3

    aget v5, p2, v4

    if-eq v5, v0, :cond_1

    goto :goto_1

    :cond_1
    const-wide/32 v5, 0xfce9184

    aget v7, p1, v4

    invoke-static {v5, v6, v7}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    aget v5, p1, v4

    invoke-virtual {v3, v5}, Landroid/util/IntArray;->add(I)V

    :goto_1
    add-int/2addr v4, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v0, v1, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(ILjava/util/function/Predicate;)V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    return-void
.end method
