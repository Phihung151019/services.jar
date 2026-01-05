.class public final Lcom/android/server/chimera/AbnormalFgsDetector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# instance fields
.field public mAbnormalHeavyApps:Ljava/util/List;

.field public mHeavyApps:Ljava/util/List;

.field public mKillableHeavyApps:Ljava/util/List;

.field public mReportedAbnormalHeavyApps:Ljava/util/List;


# direct methods
.method public static printHeavyAppItems(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->uid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->count:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static sendDetectionHqmBigData(JLjava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "TYPE"

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "PNAME"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p2, "PSS"

    invoke-virtual {v0, p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "ADJ"

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {p1, p0}, Lcom/android/server/chimera/SystemRepository;->sendHqmBigData(Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    sget-object p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "AbnormalFgsDetector"

    const-string/jumbo p1, "failed to create the KPUT"

    invoke-static {p0, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addAbnormalHeavyApp(ILjava/lang/String;J)V
    .locals 8

    const-string/jumbo v0, "added to AbnormalHeavyApp : "

    sget-object v1, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v2, "AbnormalFgsDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addAbnormalHeavyApp : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mReportedAbnormalHeavyApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p2, v3}, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    new-instance v2, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    const/4 v4, 0x0

    move v3, p1

    move-object v7, p2

    move-wide v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;-><init>(IIJLjava/lang/String;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5, v6, v7}, Lcom/android/server/chimera/AbnormalFgsDetector;->sendDetectionHqmBigData(JLjava/lang/String;)V

    sget-object p1, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string p2, "AbnormalFgsDetector"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onOneHourTimer()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/chimera/AbnormalFgsDetector;->mHeavyApps:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/chimera/AbnormalFgsDetector;->mHeavyApps:Ljava/util/List;

    sget-object v2, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "AbnormalFgsDetector"

    const-string/jumbo v3, "onOneHourTimer"

    invoke-static {v2, v3}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v3}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    iget-wide v8, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    const-wide/32 v10, 0x12c000

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    sget-object v8, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v9, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    filled-new-array {v9}, [I

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v8, :cond_0

    check-cast v8, [I

    aget v8, v8, v5

    const/16 v10, 0x64

    if-lt v8, v10, :cond_1

    const/16 v10, 0x12c

    if-ge v8, v10, :cond_1

    move v10, v9

    goto :goto_1

    :cond_0
    const/4 v8, -0x1

    :cond_1
    move v10, v5

    :goto_1
    move-object v11, v1

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v5

    :goto_2
    if-ge v13, v12, :cond_2

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    iget-object v15, v14, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    iget-object v5, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v10, :cond_3

    iget v5, v14, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->count:I

    add-int/2addr v9, v5

    :cond_2
    move v12, v9

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :goto_3
    sget-object v5, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Fgs Heavy App: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") in ADJ "

    const-string v11, " ProcState "

    invoke-static {v8, v10, v11, v9}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v8, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v8}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/chimera/AbnormalFgsDetector;->mHeavyApps:Ljava/util/List;

    new-instance v10, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    iget-object v15, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v11, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    iget-wide v13, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    invoke-direct/range {v10 .. v15}, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;-><init>(IIJLjava/lang/String;)V

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x3

    if-lt v12, v5, :cond_4

    iget-object v5, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v8, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    iget-wide v9, v7, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    invoke-virtual {v0, v8, v5, v9, v10}, Lcom/android/server/chimera/AbnormalFgsDetector;->addAbnormalHeavyApp(ILjava/lang/String;J)V

    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_5
    return-void
.end method
