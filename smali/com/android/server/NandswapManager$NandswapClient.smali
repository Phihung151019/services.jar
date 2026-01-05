.class public final Lcom/android/server/NandswapManager$NandswapClient;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final bdStatMap:Ljava/util/HashMap;

.field public final bigdataPersistPropMap:Ljava/util/HashMap;

.field public final normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

.field public final pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

.field public final state:I

.field public final supportBigdataState:Z


# direct methods
.method public constructor <init>()V
    .locals 11

    const-string/jumbo v0, "\\s+"

    const-string v1, ""

    const-string/jumbo v2, "NandswapManager"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->state:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/NandswapManager$NandswapClient;->bdStatMap:Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    new-instance v4, Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-direct {v4}, Lcom/android/server/NandswapManager$ProcessingManager;-><init>()V

    iput-object v4, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    new-instance v4, Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-direct {v4}, Lcom/android/server/NandswapManager$ProcessingManager;-><init>()V

    iput-object v4, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    const/4 v4, 0x1

    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/sec/ufs/un"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    move v5, v4

    goto :goto_2

    :cond_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/sec/mmc/un"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :goto_1
    move v5, v3

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/scsi_host/host0/proc_name"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x40

    invoke-static {v5, v6, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ufshcd"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    goto :goto_0

    :catch_0
    const-string v5, "Failed to read /sys/class/scsi_host/host0/proc_name"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_2
    sput-boolean v5, Lcom/android/server/NandswapManager;->storageUfs:Z

    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/proc/partitions"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    sget-boolean v6, Lcom/android/server/NandswapManager;->storageUfs:Z

    if-eqz v6, :cond_3

    const-string v6, ".*(sd[a-z])$"

    goto :goto_3

    :catchall_0
    move-exception v6

    move v7, v3

    goto :goto_5

    :cond_3
    const-string v6, ".*(mmcblk0)$"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    move v7, v3

    :cond_4
    :goto_4
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_4

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v6

    goto :goto_5

    :cond_5
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :goto_5
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v5

    :try_start_6
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_1
    move v7, v3

    :catch_2
    const-string v5, "Failed to read storage size from /proc/partitions"

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    if-nez v7, :cond_6

    goto :goto_8

    :cond_6
    const/high16 v5, 0x100000

    div-int/2addr v7, v5

    int-to-double v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    double-to-int v5, v5

    add-int/2addr v5, v4

    shl-int v5, v4, v5

    sput v5, Lcom/android/server/NandswapManager;->storageSize:I

    const/16 v6, 0x100

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/16 v6, 0x10

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sput v5, Lcom/android/server/NandswapManager;->storageSize:I

    :goto_8
    :try_start_7
    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/block/zram0/backing_dev"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x80

    invoke-static {v5, v6, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "none"

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_9

    :cond_7
    const-string/jumbo v5, "Writeback device is not set"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_a

    :cond_8
    :goto_9
    iput v4, p0, Lcom/android/server/NandswapManager$NandswapClient;->state:I

    goto :goto_b

    :catch_3
    const-string/jumbo v5, "Writeback is not enabled on /sys/block/zram0/backing_dev"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    iput v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->state:I

    :goto_b
    :try_start_8
    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/block/zram0/bd_stat"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x1000

    invoke-static {v5, v6, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_9

    iput-boolean v4, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    goto :goto_c

    :cond_9
    iput-boolean v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_c

    :catch_4
    const-string v0, "Failed to read stats from /sys/block/zram0/bd_stat"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->setPreviousInfo()V

    return-void
.end method


# virtual methods
.method public final getBdStat()Ljava/util/HashMap;
    .locals 18

    move-object/from16 v0, p0

    const-string/jumbo v16, "objreads"

    const-string/jumbo v17, "objwrites"

    const-string/jumbo v1, "expire"

    const-string/jumbo v2, "count"

    const-string/jumbo v3, "reads"

    const-string/jumbo v4, "writes"

    const-string/jumbo v5, "objcnt"

    const-string/jumbo v6, "size"

    const-string/jumbo v7, "max_count"

    const-string/jumbo v8, "max_size"

    const-string/jumbo v9, "ppr_count"

    const-string/jumbo v10, "ppr_reads"

    const-string/jumbo v11, "ppr_writes"

    const-string/jumbo v12, "ppr_objcnt"

    const-string/jumbo v13, "ppr_size"

    const-string/jumbo v14, "ppr_max_count"

    const-string/jumbo v15, "ppr_max_size"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/NandswapManager$NandswapClient;->bdStatMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/block/zram0/bd_stat"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, ""

    const/16 v4, 0x1000

    invoke-static {v2, v4, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    iget-object v4, v0, Lcom/android/server/NandswapManager$NandswapClient;->bdStatMap:Ljava/util/HashMap;

    aget-object v5, v1, v3

    aget-object v6, v2, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    const-string/jumbo v1, "NandswapManager"

    const-string v2, "Failed to read stats from /sys/block/zram0/bd_stat"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v0, Lcom/android/server/NandswapManager$NandswapClient;->bdStatMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getBigdataInfoProp()Ljava/util/HashMap;
    .locals 10

    const-string/jumbo v6, "ppr_max_count"

    const-string/jumbo v7, "ppr_max_size"

    const-string/jumbo v0, "reads"

    const-string/jumbo v1, "writes"

    const-string/jumbo v2, "max_count"

    const-string/jumbo v3, "max_size"

    const-string/jumbo v4, "ppr_reads"

    const-string/jumbo v5, "ppr_writes"

    const-string/jumbo v8, "objreads"

    const-string/jumbo v9, "objwrites"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "persist.sys.zram0.bigdata_info"

    const-string/jumbo v2, "None"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    aget-object v6, v1, v3

    aget-object v7, v0, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getBigdataInfo parseInt err - "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "NandswapManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    move v0, v2

    :goto_1
    if-ge v0, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    aget-object v5, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public final initBigdataInfoProp()V
    .locals 1

    iget-boolean p0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    if-eqz p0, :cond_0

    const-string p0, "0,0,0,0,0,0,0,0,0,0"

    :try_start_0
    const-string/jumbo v0, "persist.sys.zram0.bigdata_info"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "NandswapManager"

    const-string v0, "Failed to init Bigdata Info..."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final setPreviousInfo()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->getBdStat()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "reads"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, "writes"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v3, "objreads"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v5, "objwrites"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    iput v1, v7, Lcom/android/server/NandswapManager$ProcessingManager;->reads:I

    iput v2, v7, Lcom/android/server/NandswapManager$ProcessingManager;->writes:I

    iput v4, v7, Lcom/android/server/NandswapManager$ProcessingManager;->objReads:I

    iput v6, v7, Lcom/android/server/NandswapManager$ProcessingManager;->objWrites:I

    const-string/jumbo v1, "ppr_reads"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, "ppr_writes"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    iput v1, p0, Lcom/android/server/NandswapManager$ProcessingManager;->reads:I

    iput v2, p0, Lcom/android/server/NandswapManager$ProcessingManager;->writes:I

    iput v3, p0, Lcom/android/server/NandswapManager$ProcessingManager;->objReads:I

    iput v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->objWrites:I

    :cond_0
    return-void
.end method
