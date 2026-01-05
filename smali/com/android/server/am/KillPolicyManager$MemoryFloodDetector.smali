.class public final Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mLastCalculatedNative:Landroid/util/Pair;

.field public mLastCalculatedSysPers:Landroid/util/Pair;

.field public mLastRealTimeMillis:J

.field public mLastUptimeMillis:J

.field public mNativeMemDumpList:Ljava/util/List;

.field public mPersistentMemDumpList:Ljava/util/List;

.field public mPmmCycleCountOnPlatformReset:I

.field public mSystemMemDumpList:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->this$0:Lcom/android/server/am/KillPolicyManager;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastUptimeMillis:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastRealTimeMillis:J

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPmmCycleCountOnPlatformReset:I

    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    return-void
.end method

.method public static dumpItem(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V
    .locals 4

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " : "

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mMemoryType:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    sget-object v3, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->IdleDump:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    if-ne v2, v3, :cond_0

    const-string v2, " I "

    goto :goto_1

    :cond_0
    const-string v2, " P "

    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, v1, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public static getCompactList(Ljava/util/List;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    move-object v2, p0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getJsonSummary(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 8

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/LongStream;->summaryStatistics()Ljava/util/LongSummaryStatistics;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    iget-wide v2, v2, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/LongSummaryStatistics;->getMin()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/LongSummaryStatistics;->getMax()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/LongSummaryStatistics;->getAverage()D

    move-result-wide v6

    add-double/2addr v6, v4

    double-to-int v1, v6

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    return-object v0
.end method

.method public static getLinearRegressionFactor(Ljava/util/List;)Landroid/util/Pair;
    .locals 14

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    move-wide v7, v5

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    int-to-double v9, v4

    add-double/2addr v5, v9

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    iget-wide v9, v9, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    long-to-double v9, v9

    add-double/2addr v7, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    int-to-double v9, v0

    div-double/2addr v5, v9

    div-double/2addr v7, v9

    move v9, v3

    move-wide v3, v1

    :goto_1
    if-ge v9, v0, :cond_1

    int-to-double v10, v9

    sub-double/2addr v10, v5

    mul-double v12, v10, v10

    add-double/2addr v3, v12

    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    iget-wide v12, v12, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    iget-wide v12, v12, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    iget-wide v12, v12, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    long-to-double v12, v12

    sub-double/2addr v12, v7

    mul-double/2addr v12, v10

    add-double/2addr v1, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    div-double/2addr v1, v3

    mul-double/2addr v5, v1

    sub-double/2addr v7, v5

    new-instance p0, Landroid/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static getPmmMinDump(Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$KpmRaw;J)J
    .locals 2

    iget-object v0, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    const/4 p1, 0x0

    aget-wide v0, p0, p1

    const/4 p1, 0x1

    aget-wide p0, p0, p1

    add-long/2addr v0, p0

    cmp-long p0, v0, p2

    if-gez p0, :cond_0

    return-wide v0

    :cond_0
    return-wide p2
.end method
