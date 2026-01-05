.class public abstract Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static mWritebackEnabled:I

.field public static mWritebackLimitEnabled:I


# direct methods
.method public static -$$Nest$smreadZramBdstat()[J
    .locals 9

    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/sys/block/zram0/bd_stat"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object v3

    array-length v4, v3

    const/16 v5, 0xa

    if-le v4, v5, :cond_2

    const/16 v4, 0x8

    new-array v5, v4, [J

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    const/4 v7, 0x5

    if-ge v6, v7, :cond_0

    aget-wide v7, v3, v6

    aput-wide v7, v5, v6

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v6, 0x4

    aget-wide v7, v3, v7

    aput-wide v7, v5, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v5

    :cond_2
    :try_start_3
    array-length v4, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, 0x7

    if-gt v4, v5, :cond_3

    move-object v3, v1

    :cond_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v1, v3

    goto :goto_4

    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "failed to read /sys/block/zram0/bd_stat"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_4
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bdstats : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v1
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->FAST_MADVISE_ENABLED:Z

    const-string/jumbo v0, "PerProcessNandswap"

    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    sput v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackLimitEnabled:I

    return-void
.end method

.method public static isWritebackEnabled()Z
    .locals 5

    sget v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "/sys/block/zram0/writeback_limit"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->TAG:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "/data/per_boot/zram_swap"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput v3, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    goto :goto_0

    :cond_0
    const-string v0, "/data/per_boot/zram_swap not exist"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    goto :goto_0

    :cond_1
    const-string v0, "/sys/block/zram0/writeback_limit not exist"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isWritebackEnabled: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    invoke-static {v0, v4, v1}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_2
    sget v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    if-ne v0, v3, :cond_3

    return v3

    :cond_3
    return v2
.end method

.method public static isWritebackLimitEnabled()Z
    .locals 5

    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->TAG:Ljava/lang/String;

    sget v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackLimitEnabled:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v4, "/sys/block/zram0/writeback_limit_enable"

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackLimitEnabled:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    sput v3, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackLimitEnabled:I

    const-string/jumbo v1, "failed to read /sys/block/zram0/writeback_limit_enable"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isWritebackLimitEnabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackLimitEnabled:I

    invoke-static {v1, v2, v0}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    sget v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackLimitEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v3, v1

    :cond_1
    return v3
.end method

.method public static isWritebackQuotaAvailable()Z
    .locals 4

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackLimitEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->readZramWritebackLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static readZramWritebackLimit()J
    .locals 5

    const-wide/16 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/sys/block/zram0/writeback_limit"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-wide v0

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    sget-object v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "failed to read /sys/block/zram0/writeback_limit"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method
