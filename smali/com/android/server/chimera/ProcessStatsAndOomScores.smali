.class public final Lcom/android/server/chimera/ProcessStatsAndOomScores;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mPids:[I

.field public mScores:[I

.field public mStates:[I


# direct methods
.method public static create(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SystemRepository;)Lcom/android/server/chimera/ProcessStatsAndOomScores;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/android/server/chimera/ProcessStatsAndOomScores;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    iput-object v0, v1, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    iput-object v0, v1, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [I

    iput-object v2, v1, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget-object v6, v1, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    add-int/lit8 v7, v3, 0x1

    iget v5, v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    aput v5, v6, v3

    move v3, v7

    goto :goto_0

    :cond_1
    iget-object p0, v1, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    invoke-virtual {p1, p0}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, [I

    iput-object p1, v1, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, [I

    iput-object p0, v1, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    return-object v1

    :cond_2
    new-array p0, v0, [I

    iput-object p0, v1, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    new-array p0, v0, [I

    iput-object p0, v1, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    return-object v1

    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pids: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    array-length v4, v3

    const-string v5, " "

    if-ge v2, v4, :cond_0

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "/ stats: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "/ adjs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    iget-object v2, p0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
