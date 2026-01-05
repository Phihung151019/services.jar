.class public final synthetic Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/alarm/MetricsHelper;

.field public final synthetic f$1:Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/MetricsHelper;Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/alarm/MetricsHelper;

    iput-object p2, p0, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/alarm/MetricsHelper;

    iget-object v0, v0, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x277a

    if-ne v1, v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v14, v2, Lcom/android/server/alarm/MetricsHelper;->mLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    iget-object v2, v0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v5, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v5}, Lcom/android/server/alarm/LazyAlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v5

    new-instance v6, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    const/4 v7, 0x5

    invoke-direct {v6, v7}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v6}, Lcom/android/server/alarm/LazyAlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v6

    new-instance v7, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    const/4 v8, 0x6

    invoke-direct {v7, v8}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v7}, Lcom/android/server/alarm/LazyAlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v7

    new-instance v8, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    const/4 v9, 0x7

    invoke-direct {v8, v9}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v8}, Lcom/android/server/alarm/LazyAlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v8

    new-instance v9, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    const/16 v10, 0x8

    invoke-direct {v9, v10}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v9}, Lcom/android/server/alarm/LazyAlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v9

    new-instance v10, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    const/16 v11, 0x9

    invoke-direct {v10, v11}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/alarm/LazyAlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v10

    new-instance v11, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    const/16 v12, 0xa

    invoke-direct {v11, v12}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v11}, Lcom/android/server/alarm/LazyAlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v11

    new-instance v12, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v12}, Lcom/android/server/alarm/LazyAlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v12

    new-instance v13, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda11;

    invoke-direct {v13, v3, v4}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda11;-><init>(J)V

    invoke-virtual {v0, v13}, Lcom/android/server/alarm/LazyAlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v3

    new-instance v4, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    const/4 v13, 0x2

    invoke-direct {v4, v13}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v4}, Lcom/android/server/alarm/LazyAlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v4

    new-instance v13, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    const/4 v15, 0x3

    invoke-direct {v13, v15}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v13}, Lcom/android/server/alarm/LazyAlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v13

    new-instance v15, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    const/4 v1, 0x4

    invoke-direct {v15, v1}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v15}, Lcom/android/server/alarm/LazyAlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v0

    move v1, v2

    move v2, v5

    move v5, v8

    move v8, v11

    move v11, v4

    move v4, v7

    move v7, v10

    move v10, v3

    move v3, v6

    move v6, v9

    move v9, v12

    move v12, v13

    move v13, v0

    move/from16 v0, p1

    invoke-static/range {v0 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIIIIIIIII)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v14

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move v0, v1

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Unknown tag"

    invoke-static {v0, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
