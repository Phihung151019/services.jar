.class public final Lcom/android/server/am/CrashDetectionAndOptimization$DexOptimizationThread;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final maxPossibleCount:I

.field public final processRecord:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/CrashDetectionAndOptimization$DexOptimizationThread;->processRecord:Lcom/android/server/am/ProcessRecord;

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/server/am/CrashDetectionAndOptimization$DexOptimizationThread;->maxPossibleCount:I

    return-void
.end method

.method public static doForceReDexOpt(Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;Ljava/lang/String;)V
    .locals 9

    iget-object v3, p0, Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/android/server/am/CrashDetectionAndOptimization;->dexOptimizedPackages:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x8

    const/4 v6, 0x0

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "CRASH_DEXOPT"

    const-string/jumbo v7, "dexopt fail: "

    const-string/jumbo v0, "Try to re-compile: "

    const-class v1, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {v1}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerLocal;

    :try_start_0
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/dex/DexoptOptions;

    const-string/jumbo v4, "speed-profile"

    const/16 v1, 0x18

    const/4 v5, 0x0

    const/16 v2, 0x407

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/android/server/pm/dex/DexoptOptions;->convertToDexoptParams(I)Lcom/android/server/art/model/DexoptParams;

    move-result-object v0

    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object v1

    invoke-virtual {v1, v8, v3, v0}, Lcom/android/server/art/ArtManagerLocal;->dexoptPackage(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Lcom/android/server/art/model/DexoptParams;)Lcom/android/server/art/model/DexoptResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/art/model/DexoptResult;->getFinalStatus()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v8, :cond_3

    :try_start_2
    invoke-interface {v8}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :goto_1
    if-eqz v8, :cond_2

    :try_start_3
    invoke-interface {v8}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    const-string v1, "Assume processing was successful and ignore the package: "

    const-string v2, " ("

    invoke-static {v1, v3, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    sget-object p1, Lcom/android/server/am/CrashDetectionAndOptimization;->crashPackages:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    sget-object v0, Lcom/android/server/am/CrashDetectionAndOptimization;->crashPackages:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/CrashDetectionAndOptimization$DexOptimizationThread;->processRecord:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v1, Lcom/android/server/am/CrashDetectionAndOptimization;->dexOptimizedPackages:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_1
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    return-void

    :cond_2
    sget-object v1, Lcom/android/server/am/CrashDetectionAndOptimization;->crashPackages:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v3

    :cond_3
    const/4 v8, 0x1

    if-ge v7, v6, :cond_6

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v7, v7, 0x1

    check-cast v9, Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;

    if-eqz v9, :cond_3

    iget-object v10, v9, Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;->packageName:Ljava/lang/String;

    if-eqz v10, :cond_3

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-wide v2, v9, Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;->mTimeStamp:J

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v4, v2

    const-wide/16 v2, 0xf0

    cmp-long v2, v4, v2

    if-ltz v2, :cond_4

    sget-object p0, Lcom/android/server/am/CrashDetectionAndOptimization;->crashPackages:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget v2, v9, Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;->crashCount:I

    add-int/2addr v2, v8

    iput v2, v9, Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;->crashCount:I

    iget p0, p0, Lcom/android/server/am/CrashDetectionAndOptimization$DexOptimizationThread;->maxPossibleCount:I

    if-ge v2, p0, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v9, v0}, Lcom/android/server/am/CrashDetectionAndOptimization$DexOptimizationThread;->doForceReDexOpt(Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_6
    sget-object p0, Lcom/android/server/am/CrashDetectionAndOptimization;->crashPackages:Ljava/util/List;

    move-object v2, p0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_7

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    move-object v2, p0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v4, :cond_8

    new-instance v2, Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const-wide/16 v4, -0x1

    iput-wide v4, v2, Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;->mTimeStamp:J

    iput v3, v2, Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;->crashCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;->mTimeStamp:J

    iput-object v0, v2, Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;->packageName:Ljava/lang/String;

    iput v8, v2, Lcom/android/server/am/CrashDetectionAndOptimization$CrashPackage;->crashCount:I

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
