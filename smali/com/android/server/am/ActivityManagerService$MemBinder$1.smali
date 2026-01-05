.class public final Lcom/android/server/am/ActivityManagerService$MemBinder$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService$MemBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService$MemBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$MemBinder;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 83

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    move-object/from16 v7, p0

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService$MemBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$MemBinder;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService$MemBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "  ex> --fd system_server"

    const-string v9, "A process name is required to output fd info."

    const-string v10, "  ex> --maps system_server"

    const-string v11, "A process name is required to output maps."

    new-instance v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    const/4 v12, 0x0

    iput-boolean v12, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDetails:Z

    iput-boolean v12, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpFullDetails:Z

    iput-boolean v12, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDalvik:Z

    iput-boolean v12, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSummaryOnly:Z

    iput-boolean v12, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpUnreachable:Z

    iput-boolean v12, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    iput-boolean v12, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->isCompact:Z

    iput-boolean v12, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->localOnly:Z

    iput-boolean v12, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->packages:Z

    iput-boolean v12, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->isCheckinRequest:Z

    iput-boolean v12, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSwapPss:Z

    move/from16 v13, p4

    iput-boolean v13, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpProto:Z

    iput-boolean v12, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->mDumpPrivateDirty:Z

    iput-boolean v12, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->mDumpAllocatorStats:Z

    sget-boolean v13, Lcom/android/server/am/ActivityManagerService;->DEBUG_LEVEL_LOW:Z

    move v4, v12

    move/from16 v17, v4

    move/from16 v18, v17

    const/4 v1, 0x0

    const/4 v14, 0x0

    const/16 v16, -0x1

    const/16 v30, 0x2

    :goto_0
    array-length v5, v0

    const/16 v31, 0x1

    const/16 v6, 0x2d

    if-ge v4, v5, :cond_16

    aget-object v5, v0, v4

    if-eqz v5, :cond_16

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_16

    move/from16 p4, v13

    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v6, :cond_0

    move/from16 v19, v12

    goto/16 :goto_6

    :cond_0
    add-int/lit8 v6, v4, 0x1

    const-string v13, "-a"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move/from16 v13, v31

    iput-boolean v13, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDetails:Z

    iput-boolean v13, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpFullDetails:Z

    iput-boolean v13, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDalvik:Z

    iput-boolean v13, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSwapPss:Z

    move/from16 v19, v12

    goto/16 :goto_3

    :cond_1
    move/from16 v19, v12

    move/from16 v13, v31

    const-string v12, "-d"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    iput-boolean v13, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDalvik:Z

    goto/16 :goto_3

    :cond_2
    const-string v12, "-c"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    iput-boolean v13, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->isCompact:Z

    goto/16 :goto_3

    :cond_3
    const-string v12, "-s"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    iput-boolean v13, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDetails:Z

    iput-boolean v13, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSummaryOnly:Z

    goto/16 :goto_3

    :cond_4
    const-string v12, "-S"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    iput-boolean v13, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSwapPss:Z

    goto/16 :goto_3

    :cond_5
    const-string v12, "-p"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    iput-boolean v13, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->mDumpPrivateDirty:Z

    goto/16 :goto_3

    :cond_6
    const-string v12, "--unreachable"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    iput-boolean v13, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpUnreachable:Z

    goto/16 :goto_3

    :cond_7
    const-string v12, "--oom"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    iput-boolean v13, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    goto/16 :goto_3

    :cond_8
    const-string v12, "--local"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    iput-boolean v13, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->localOnly:Z

    goto/16 :goto_3

    :cond_9
    const-string v12, "--package"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    iput-boolean v13, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->packages:Z

    goto/16 :goto_3

    :cond_a
    const-string v12, "--checkin"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    iput-boolean v13, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->isCheckinRequest:Z

    goto/16 :goto_3

    :cond_b
    const-string v12, "--proto"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    iput-boolean v13, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpProto:Z

    goto/16 :goto_3

    :cond_c
    const-string v12, "--logstats"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    iput-boolean v13, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->mDumpAllocatorStats:Z

    goto/16 :goto_3

    :cond_d
    if-nez p4, :cond_10

    const-string v12, "--maps"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    :try_start_0
    aget-object v1, v0, v6

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_e

    goto :goto_1

    :cond_e
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v5

    aget v5, v5, v19

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x2

    move-object v14, v5

    const/16 v17, 0x1

    goto :goto_4

    :cond_f
    :goto_1
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3d

    :cond_10
    if-nez p4, :cond_13

    const-string v12, "--fd"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    :try_start_1
    aget-object v1, v0, v6

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_11

    goto :goto_2

    :cond_11
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v5

    aget v5, v5, v19

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x2

    move-object v14, v5

    const/16 v18, 0x1

    goto :goto_4

    :cond_12
    :goto_2
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3d

    :cond_13
    const-string v4, "-h"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "--help"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_5

    :cond_14
    const-string/jumbo v4, "Unknown argument: "

    const-string v12, "; use -h for help"

    invoke-static {v3, v4, v5, v12}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move v4, v6

    :goto_4
    move/from16 v13, p4

    move/from16 v12, v19

    goto/16 :goto_0

    :cond_15
    :goto_5
    const-string/jumbo v0, "meminfo dump options: [-a] [-d] [-c] [-s] [--oom] [process]"

    const-string v1, "  -a: include all available information for each process."

    const-string v2, "  -d: include dalvik details."

    const-string v4, "  -c: dump in a compact machine-parseable representation."

    invoke-static {v3, v0, v1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  -s: dump only summary of application memory usage."

    const-string v1, "  -S: dump also SwapPss."

    const-string v2, "  -p: dump also private dirty memory usage."

    const-string v4, "  --oom: only show processes organized by oom adj."

    invoke-static {v3, v0, v1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  --local: only collect details locally, don\'t call process."

    const-string v1, "  --logstats: dump native allocator stats to log"

    const-string v2, "  --package: interpret process arg as package, dumping all"

    const-string v4, "             processes that have loaded that package."

    invoke-static {v3, v0, v1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  --checkin: dump data for a checkin"

    const-string v1, "  --proto: dump data to proto"

    const-string v2, "  --logstats: log native allocator statistics."

    const-string v4, "  --unreachable: dump unreachable native memory with libmemunreachable."

    invoke-static {v3, v0, v1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "If [process] is specified it can be the name or "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "pid of a specific process to dump."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_16
    move/from16 v19, v12

    move/from16 p4, v13

    :goto_6
    const-string/jumbo v5, "])====="

    const-string/jumbo v8, "["

    const-string v9, "/proc/"

    if-nez p4, :cond_19

    if-eqz v17, :cond_19

    const-string v0, "/maps"

    invoke-static {v9, v14, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "=====PRINT MAPS("

    invoke-static {v2, v0, v8, v1, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_7
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v14, v1

    :goto_8
    move-object v1, v0

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v14, v1

    goto :goto_9

    :cond_17
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    return-void

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3d

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v14, 0x0

    goto :goto_a

    :catch_4
    move-exception v0

    const/4 v14, 0x0

    :goto_9
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v14, :cond_55

    :try_start_6
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_3d

    :catchall_2
    move-exception v0

    goto :goto_8

    :goto_a
    if-eqz v14, :cond_18

    :try_start_7
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_18
    :goto_b
    throw v1

    :cond_19
    if-nez p4, :cond_1a

    if-eqz v18, :cond_1a

    const-string v0, "/fd"

    invoke-static {v9, v14, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "=====PRINT FD INFO("

    invoke-static {v2, v0, v8, v1, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    move/from16 v12, v19

    :goto_c
    if-ge v12, v1, :cond_55

    aget-object v2, v0, v12
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_7

    :try_start_9
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :goto_d
    const/16 v31, 0x1

    goto :goto_e

    :catch_6
    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> readlink error"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_d

    :goto_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :catch_7
    move-exception v0

    const-string v1, "Can not get FD info..."

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3d

    :cond_1a
    array-length v1, v0

    sub-int/2addr v1, v4

    new-array v5, v1, [Ljava/lang/String;

    array-length v8, v0

    sub-int/2addr v8, v4

    move/from16 v9, v19

    invoke-static {v0, v4, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v8, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->packages:Z

    invoke-virtual {v7, v4, v8, v0}, Lcom/android/server/am/ActivityManagerService;->collectProcesses(IZ[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iget-boolean v0, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpProto:Z

    if-eqz v0, :cond_56

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const/4 v3, 0x3

    new-array v12, v3, [J

    move/from16 p2, v3

    move-object/from16 p3, v4

    const-wide v3, 0x10300000001L

    const-wide/16 v32, 0x0

    if-nez p3, :cond_22

    if-lez v1, :cond_21

    const/4 v1, 0x0

    aget-object v0, v5, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_21

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    :try_start_b
    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_f

    :catch_8
    move/from16 v1, v16

    :goto_f
    iget-object v6, v7, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    new-instance v7, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda4;

    move/from16 v13, v30

    invoke-direct {v7, v1, v5, v0, v13}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda4;-><init>(I[Ljava/lang/String;Ljava/util/ArrayList;I)V

    invoke-virtual {v6, v7}, Lcom/android/server/am/AppProfiler;->forAllCpuStats(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_21

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v1, v3, v4, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000002L

    invoke-virtual {v1, v2, v3, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v31, 0x1

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    const/4 v2, 0x0

    :goto_10
    if-ltz v3, :cond_20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-nez v2, :cond_1b

    new-instance v2, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v2}, Landroid/os/Debug$MemoryInfo;-><init>()V

    :cond_1b
    iget-boolean v6, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDetails:Z

    if-nez v6, :cond_1e

    iget-boolean v6, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    if-nez v6, :cond_1c

    goto :goto_12

    :cond_1c
    const/4 v6, 0x0

    invoke-static {v5, v12, v6}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v7

    cmp-long v6, v7, v32

    if-nez v6, :cond_1d

    :goto_11
    move-object/from16 v35, v2

    goto :goto_14

    :cond_1d
    long-to-int v6, v7

    iput v6, v2, Landroid/os/Debug$MemoryInfo;->nativePss:I

    const/16 v19, 0x0

    aget-wide v6, v12, v19

    long-to-int v6, v6

    iput v6, v2, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    const/16 v30, 0x2

    aget-wide v6, v12, v30

    long-to-int v6, v6

    iput v6, v2, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    goto :goto_13

    :cond_1e
    :goto_12
    invoke-static {v5, v2}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z

    move-result v6

    if-nez v6, :cond_1f

    goto :goto_11

    :cond_1f
    :goto_13
    const-wide v6, 0x20b00000003L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    const-wide v8, 0x10500000001L

    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v4, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    const-wide v8, 0x10900000002L

    invoke-virtual {v1, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-boolean v4, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDalvik:Z

    iget-boolean v5, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSummaryOnly:Z

    const-wide/16 v46, 0x0

    const-wide/16 v48, 0x0

    const-wide/16 v38, 0x0

    const-wide/16 v40, 0x0

    const-wide/16 v42, 0x0

    const-wide/16 v44, 0x0

    move-object/from16 v34, v1

    move-object/from16 v35, v2

    move/from16 v36, v4

    move/from16 v37, v5

    invoke-static/range {v34 .. v49}, Landroid/app/ActivityThread;->dumpMemInfoTable(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZJJJJJJ)V

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_14
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v2, v35

    goto :goto_10

    :cond_20
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    goto/16 :goto_3d

    :cond_21
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No process found for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x0

    aget-object v2, v5, v19

    invoke-static {v1, v2, v0}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3d

    :cond_22
    iget-boolean v0, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    if-nez v0, :cond_24

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v13, 0x1

    if-eq v0, v13, :cond_23

    iget-boolean v0, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->isCheckinRequest:Z

    if-nez v0, :cond_23

    iget-boolean v0, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->packages:Z

    if-eqz v0, :cond_25

    :cond_23
    iput-boolean v13, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDetails:Z

    goto :goto_15

    :cond_24
    const/4 v13, 0x1

    :cond_25
    :goto_15
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v13, :cond_26

    iget-boolean v1, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->packages:Z

    if-nez v1, :cond_26

    const/4 v1, 0x1

    goto :goto_16

    :cond_26
    const/4 v1, 0x0

    :goto_16
    if-eqz v1, :cond_27

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    :cond_27
    new-instance v6, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v6, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v6, v3, v4, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000002L

    invoke-virtual {v6, v2, v3, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    const/16 v3, 0x13

    new-array v3, v3, [J

    iget-boolean v4, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDalvik:Z

    const/16 v8, 0xf

    if-eqz v4, :cond_28

    new-array v9, v8, [J

    goto :goto_17

    :cond_28
    sget-object v9, Llibcore/util/EmptyArray;->LONG:[J

    :goto_17
    if-eqz v4, :cond_29

    new-array v10, v8, [J

    goto :goto_18

    :cond_29
    sget-object v10, Llibcore/util/EmptyArray;->LONG:[J

    :goto_18
    if-eqz v4, :cond_2a

    new-array v4, v8, [J

    :goto_19
    const/16 v8, 0x11

    goto :goto_1a

    :cond_2a
    sget-object v4, Llibcore/util/EmptyArray;->LONG:[J

    goto :goto_19

    :goto_1a
    new-array v11, v8, [J

    new-array v14, v8, [J

    move/from16 p4, v1

    new-array v1, v8, [J

    sget-object v8, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    move-object/from16 v28, v1

    array-length v1, v8

    move-object/from16 p1, v3

    new-array v3, v1, [J

    move/from16 v20, v0

    array-length v0, v8

    move-object/from16 v50, v3

    new-array v3, v0, [J

    array-length v0, v8

    move-object/from16 v51, v3

    new-array v3, v0, [J

    array-length v0, v8

    new-array v8, v0, [Ljava/util/ArrayList;

    const/16 v31, 0x1

    add-int/lit8 v0, v20, -0x1

    move-object/from16 v52, v3

    move-object/from16 v53, v4

    move-object/from16 v27, v5

    move-wide/from16 v4, v32

    const/16 v20, 0x0

    move v3, v0

    const/4 v0, 0x0

    :goto_1b
    const/16 v54, 0x6

    const/16 v55, 0x5

    const/16 v56, 0xe

    const/16 v57, 0x8

    const/16 v58, 0xd

    const/16 v59, 0x9

    const/16 v60, 0x4

    move-object/from16 v61, v8

    const/16 v62, 0xa

    if-ltz v3, :cond_42

    move-object/from16 v8, p3

    const/16 v63, 0xc

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 p3, v3

    move-object/from16 v3, v21

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v64, v8

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v8

    move-object/from16 v21, v0

    :try_start_c
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    move-object/from16 v65, v10

    iget v10, v3, Lcom/android/server/am/ProcessRecord;->mPid:I

    move-object/from16 v22, v0

    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    move-object/from16 v66, v11

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetAdjWithServices()I

    move-result v11

    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    move-object/from16 v67, v14

    iget-boolean v14, v0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    move/from16 v68, v14

    iget v14, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    if-nez v22, :cond_2b

    move-object/from16 v38, v2

    move-object/from16 v78, v9

    move-object/from16 v0, v21

    const/16 v19, 0x0

    move v2, v1

    goto/16 :goto_30

    :cond_2b
    if-nez v21, :cond_2c

    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    move-object v8, v0

    goto :goto_1c

    :cond_2c
    move-object/from16 v8, v21

    :goto_1c
    iget-boolean v0, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDetails:Z

    if-nez v0, :cond_2d

    iget-boolean v0, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    if-nez v0, :cond_2e

    :cond_2d
    move/from16 v71, v1

    move-wide/from16 v69, v4

    goto :goto_1e

    :cond_2e
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v23

    move-wide/from16 v69, v4

    const/4 v4, 0x0

    move v5, v1

    invoke-static {v10, v12, v4}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v0

    cmp-long v21, v0, v32

    if-nez v21, :cond_2f

    move/from16 v71, v5

    goto :goto_1f

    :cond_2f
    long-to-int v0, v0

    iput v0, v8, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    move/from16 v71, v5

    const/16 v19, 0x0

    aget-wide v4, v12, v19

    long-to-int v4, v4

    iput v4, v8, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    const/16 v30, 0x2

    aget-wide v4, v12, v30

    long-to-int v4, v4

    iput v4, v8, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    move/from16 v74, p2

    move-wide v4, v0

    move/from16 v1, v20

    :goto_1d
    move-wide/from16 v72, v23

    goto :goto_22

    :goto_1e
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v23

    invoke-static {v10, v8}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z

    move-result v0

    if-nez v0, :cond_30

    :goto_1f
    move-object/from16 v38, v2

    move-object v0, v8

    move-object/from16 v78, v9

    move-wide/from16 v4, v69

    move/from16 v2, v71

    const/16 v19, 0x0

    goto/16 :goto_30

    :cond_30
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    if-nez v20, :cond_32

    iget-boolean v4, v8, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_31

    goto :goto_20

    :cond_31
    const/4 v4, 0x0

    goto :goto_21

    :cond_32
    :goto_20
    const/4 v4, 0x1

    :goto_21
    move-wide/from16 v72, v0

    move v1, v4

    move-wide/from16 v4, v72

    move/from16 v74, v60

    goto :goto_1d

    :goto_22
    iget-boolean v0, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDetails:Z

    if-eqz v0, :cond_36

    iget-boolean v0, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->localOnly:Z

    move/from16 v20, v0

    move/from16 v75, v1

    const-wide v0, 0x20b00000004L

    if-eqz v20, :cond_33

    invoke-virtual {v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    move-wide/from16 v76, v4

    const-wide v4, 0x10b00000001L

    invoke-virtual {v6, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    move-object/from16 v35, v8

    move-object/from16 v78, v9

    const-wide v8, 0x10500000001L

    invoke-virtual {v6, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v14, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-wide v8, 0x10900000002L

    invoke-virtual {v6, v8, v9, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-boolean v14, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDalvik:Z

    iget-boolean v8, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSummaryOnly:Z

    const-wide/16 v46, 0x0

    const-wide/16 v48, 0x0

    const-wide/16 v38, 0x0

    const-wide/16 v40, 0x0

    const-wide/16 v42, 0x0

    const-wide/16 v44, 0x0

    move-object/from16 v34, v6

    move/from16 v37, v8

    move/from16 v36, v14

    invoke-static/range {v34 .. v49}, Landroid/app/ActivityThread;->dumpMemInfoTable(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZJJJJJJ)V

    invoke-virtual {v6, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-object/from16 v1, v35

    goto/16 :goto_27

    :cond_33
    move-wide/from16 v76, v4

    move-object/from16 v35, v8

    move-object/from16 v78, v9

    :try_start_d
    new-instance v4, Lcom/android/internal/os/ByteTransferPipe;

    invoke-direct {v4}, Lcom/android/internal/os/ByteTransferPipe;-><init>()V

    sget-boolean v5, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v5, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v8, v5, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_b

    if-eqz v8, :cond_34

    const/4 v9, 0x1

    :try_start_e
    invoke-virtual {v5, v14, v9}, Lcom/android/server/am/FreecessController;->setIsDoingGC(IZ)V

    const-string v9, "DumpMemInfo"

    const-wide/16 v0, 0xbb8

    invoke-virtual {v5, v14, v9, v0, v1}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;J)V

    goto :goto_23

    :catchall_3
    move-exception v0

    move/from16 v20, v8

    move-object/from16 v1, v35

    goto :goto_24

    :cond_34
    :goto_23
    invoke-virtual {v4}, Lcom/android/internal/os/ByteTransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v21

    iget-boolean v0, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpFullDetails:Z

    iget-boolean v1, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpDalvik:Z

    iget-boolean v9, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSummaryOnly:Z

    move/from16 v23, v0

    iget-boolean v0, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpUnreachable:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move/from16 v26, v0

    move/from16 v24, v1

    move/from16 v25, v9

    move-object/from16 v20, v22

    move-object/from16 v22, v35

    :try_start_f
    invoke-virtual/range {v20 .. v27}, Landroid/app/IApplicationThread$Delegator;->dumpMemInfoProto(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    move-object/from16 v1, v22

    :try_start_10
    invoke-virtual {v4}, Lcom/android/internal/os/ByteTransferPipe;->get()[B

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    move/from16 v20, v8

    const-wide v8, 0x20b00000004L

    :try_start_11
    invoke-virtual {v6, v8, v9, v0}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    invoke-virtual {v4}, Lcom/android/internal/os/ByteTransferPipe;->kill()V

    if-eqz v20, :cond_37

    const/4 v9, 0x0

    invoke-virtual {v5, v14, v9}, Lcom/android/server/am/FreecessController;->setIsDoingGC(IZ)V

    goto :goto_27

    :catch_9
    move-exception v0

    goto :goto_25

    :catch_a
    move-exception v0

    goto :goto_26

    :catchall_4
    move-exception v0

    goto :goto_24

    :catchall_5
    move-exception v0

    move/from16 v20, v8

    goto :goto_24

    :catchall_6
    move-exception v0

    move/from16 v20, v8

    move-object/from16 v1, v22

    :goto_24
    invoke-virtual {v4}, Lcom/android/internal/os/ByteTransferPipe;->kill()V

    if-eqz v20, :cond_35

    sget-boolean v4, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v4, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    const/4 v9, 0x0

    invoke-virtual {v4, v14, v9}, Lcom/android/server/am/FreecessController;->setIsDoingGC(IZ)V

    :cond_35
    throw v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_9

    :catch_b
    move-exception v0

    move-object/from16 v1, v35

    goto :goto_25

    :catch_c
    move-exception v0

    move-object/from16 v1, v35

    goto :goto_26

    :goto_25
    const-string v4, "ActivityManager"

    const-string v5, "Got RemoteException!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    :goto_26
    const-string v4, "ActivityManager"

    const-string v5, "Got IOException!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    :cond_36
    move/from16 v75, v1

    move-wide/from16 v76, v4

    move-object v1, v8

    move-object/from16 v78, v9

    :cond_37
    :goto_27
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalUss()I

    move-result v0

    int-to-long v8, v0

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v0

    move-wide/from16 v35, v4

    int-to-long v4, v0

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v0

    move-wide/from16 v39, v4

    int-to-long v4, v0

    iget-object v14, v7, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v14

    :try_start_13
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v0, :cond_38

    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetAdjWithServices()I

    move-result v0

    if-ne v11, v0, :cond_38

    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v41, 0x1

    sub-long v43, v76, v72

    move-object/from16 v34, v0

    move-wide/from16 v37, v8

    move/from16 v42, v74

    invoke-virtual/range {v34 .. v44}, Lcom/android/server/am/ProcessProfileRecord;->addPss(JJJZIJ)V

    goto :goto_28

    :catchall_7
    move-exception v0

    goto/16 :goto_31

    :cond_38
    :goto_28
    monitor-exit v14
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    iget-boolean v0, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->isCheckinRequest:Z

    if-nez v0, :cond_41

    aget-wide v8, p1, v63

    add-long v8, v8, v35

    aput-wide v8, p1, v63

    aget-wide v8, p1, v58

    add-long/2addr v8, v4

    aput-wide v8, p1, v58

    aget-wide v8, p1, v56

    add-long v8, v8, v39

    aput-wide v8, p1, v56

    new-instance v34, Lcom/android/server/am/ActivityManagerService$MemItem;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " (pid "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v68, :cond_39

    const-string v8, " / activities)"

    goto :goto_29

    :cond_39
    const-string v8, ")"

    :goto_29
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-wide/16 v43, 0x0

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v46, v3

    move/from16 v45, v10

    move-wide/from16 v37, v35

    move-wide/from16 v41, v39

    move/from16 v47, v68

    move-object/from16 v35, v0

    move-wide/from16 v39, v4

    move-object/from16 v36, v8

    invoke-direct/range {v34 .. v47}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJIIZ)V

    move-object/from16 v0, v34

    move-wide/from16 v35, v37

    move-wide/from16 v39, v41

    move/from16 v3, v45

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v19, 0x0

    aget-wide v8, p1, v19

    iget v3, v1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move-object/from16 v38, v2

    int-to-long v2, v3

    add-long/2addr v8, v2

    aput-wide v8, p1, v19

    const/16 v31, 0x1

    aget-wide v2, p1, v31

    iget v8, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    int-to-long v8, v8

    add-long/2addr v2, v8

    aput-wide v2, p1, v31

    const/16 v30, 0x2

    aget-wide v2, p1, v30

    iget v8, v1, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    int-to-long v8, v8

    add-long/2addr v2, v8

    aput-wide v2, p1, v30

    aget-wide v2, p1, v60

    iget v8, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    int-to-long v8, v8

    add-long/2addr v2, v8

    aput-wide v2, p1, v60

    aget-wide v2, p1, v55

    iget v8, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    int-to-long v8, v8

    add-long/2addr v2, v8

    aput-wide v2, p1, v55

    aget-wide v2, p1, v54

    iget v8, v1, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    int-to-long v8, v8

    add-long/2addr v2, v8

    aput-wide v2, p1, v54

    move/from16 v9, v19

    :goto_2a
    move-object/from16 v2, v78

    array-length v3, v2

    if-ge v9, v3, :cond_3a

    aget-wide v20, v2, v9

    const/16 v29, 0x11

    add-int/lit8 v3, v9, 0x11

    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v8

    move-wide/from16 v22, v4

    int-to-long v4, v8

    add-long v20, v20, v4

    aput-wide v20, v2, v9

    aget-wide v4, v65, v9

    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v8

    move-wide/from16 v20, v4

    int-to-long v4, v8

    add-long v4, v20, v4

    aput-wide v4, v65, v9

    aget-wide v4, v53, v9

    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v3

    move-object/from16 v78, v2

    int-to-long v2, v3

    add-long/2addr v4, v2

    aput-wide v4, v53, v9

    const/16 v31, 0x1

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v4, v22

    goto :goto_2a

    :cond_3a
    move-object/from16 v78, v2

    move-wide/from16 v22, v4

    aget-wide v2, p1, v57

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherPss:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    aput-wide v2, p1, v57

    aget-wide v2, p1, v62

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherRss:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    aput-wide v2, p1, v62

    aget-wide v2, p1, v59

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    aput-wide v2, p1, v59

    move/from16 v9, v19

    :goto_2b
    const/16 v8, 0x11

    if-ge v9, v8, :cond_3b

    invoke-virtual {v1, v9}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v2

    int-to-long v2, v2

    aget-wide v4, v66, v9

    add-long/2addr v4, v2

    aput-wide v4, v66, v9

    aget-wide v4, p1, v57

    sub-long/2addr v4, v2

    aput-wide v4, p1, v57

    invoke-virtual {v1, v9}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v2

    int-to-long v2, v2

    aget-wide v4, v67, v9

    add-long/2addr v4, v2

    aput-wide v4, v67, v9

    aget-wide v4, p1, v59

    sub-long/2addr v4, v2

    aput-wide v4, p1, v59

    invoke-virtual {v1, v9}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v2

    int-to-long v2, v2

    aget-wide v4, v28, v9

    add-long/2addr v4, v2

    aput-wide v4, v28, v9

    aget-wide v4, p1, v62

    sub-long/2addr v4, v2

    aput-wide v4, p1, v62

    const/16 v31, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2b

    :cond_3b
    const/16 v31, 0x1

    const/16 v2, 0x384

    if-lt v11, v2, :cond_3c

    add-long v4, v69, v35

    goto :goto_2c

    :cond_3c
    move-wide/from16 v4, v69

    :goto_2c
    move/from16 v9, v19

    move/from16 v2, v71

    :goto_2d
    if-ge v9, v2, :cond_40

    add-int/lit8 v3, v2, -0x1

    if-eq v9, v3, :cond_3e

    sget-object v3, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    aget v8, v3, v9

    if-lt v11, v8, :cond_3d

    add-int/lit8 v8, v9, 0x1

    aget v3, v3, v8

    if-ge v11, v3, :cond_3d

    goto :goto_2e

    :cond_3d
    add-int/lit8 v9, v9, 0x1

    const/16 v31, 0x1

    goto :goto_2d

    :cond_3e
    :goto_2e
    aget-wide v10, v50, v9

    add-long v10, v10, v35

    aput-wide v10, v50, v9

    aget-wide v10, v51, v9

    add-long v10, v10, v22

    aput-wide v10, v51, v9

    aget-object v3, v61, v9

    if-nez v3, :cond_3f

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v61, v9

    :cond_3f
    aget-object v3, v61, v9

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-wide v10, v52, v9

    add-long v10, v10, v39

    aput-wide v10, v52, v9

    :cond_40
    move-object v0, v1

    :goto_2f
    move/from16 v20, v75

    goto :goto_30

    :cond_41
    move-object/from16 v38, v2

    move/from16 v2, v71

    const/16 v19, 0x0

    move-object v0, v1

    move-wide/from16 v4, v69

    goto :goto_2f

    :goto_30
    add-int/lit8 v3, p3, -0x1

    move v1, v2

    move-object/from16 v2, v38

    move-object/from16 v8, v61

    move-object/from16 p3, v64

    move-object/from16 v10, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v9, v78

    goto/16 :goto_1b

    :goto_31
    :try_start_14
    monitor-exit v14
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_8
    move-exception v0

    :try_start_15
    monitor-exit v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :cond_42
    move-object/from16 v38, v2

    move-wide/from16 v69, v4

    move-object/from16 v78, v9

    move-object/from16 v65, v10

    move-object/from16 v66, v11

    move-object/from16 v67, v14

    const/16 v19, 0x0

    const/16 v63, 0xc

    move v2, v1

    if-eqz p4, :cond_54

    const/4 v9, 0x1

    new-array v14, v9, [Landroid/os/Debug$MemoryInfo;

    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    move-object/from16 v16, v12

    new-instance v12, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;

    move-object/from16 v17, p1

    move/from16 v1, v19

    move-object/from16 v24, v28

    move-object/from16 v18, v38

    move-object/from16 v25, v50

    move-object/from16 v26, v51

    move-object/from16 v28, v52

    move-object/from16 v21, v53

    move-object/from16 v27, v61

    move-object/from16 v20, v65

    move-object/from16 v22, v66

    move-object/from16 v23, v67

    move-object/from16 v19, v78

    invoke-direct/range {v12 .. v28}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda37;-><init>(Landroid/util/SparseArray;[Landroid/os/Debug$MemoryInfo;Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;[J[JLjava/util/ArrayList;[J[J[J[J[J[J[J[J[Ljava/util/ArrayList;[J)V

    move-object/from16 v3, v19

    move-object/from16 v28, v24

    invoke-virtual {v0, v12}, Lcom/android/server/am/AppProfiler;->forAllCpuStats(Ljava/util/function/Consumer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v71, Lcom/android/server/am/ActivityManagerService$MemItem;

    const-string/jumbo v72, "Native"

    const-string/jumbo v73, "Native"

    aget-wide v74, v17, v1

    aget-wide v76, v17, v9

    const/16 v30, 0x2

    aget-wide v78, v17, v30

    const-wide/16 v80, 0x0

    const/16 v82, -0x1

    invoke-direct/range {v71 .. v82}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJI)V

    move-object/from16 v4, v71

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v71, Lcom/android/server/am/ActivityManagerService$MemItem;

    const-string v72, "Dalvik"

    const-string v73, "Dalvik"

    aget-wide v74, v17, v60

    aget-wide v76, v17, v55

    aget-wide v78, v17, v54

    const/16 v82, -0x2

    invoke-direct/range {v71 .. v82}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJI)V

    move-object/from16 v4, v71

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v71, Lcom/android/server/am/ActivityManagerService$MemItem;

    const-string/jumbo v72, "Unknown"

    const-string/jumbo v73, "Unknown"

    aget-wide v74, v17, v57

    aget-wide v76, v17, v59

    aget-wide v78, v17, v62

    const/16 v82, -0x3

    invoke-direct/range {v71 .. v82}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJI)V

    move-object/from16 v4, v71

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v1

    :goto_32
    const/16 v8, 0x11

    if-ge v12, v8, :cond_43

    invoke-static {v12}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v72

    new-instance v71, Lcom/android/server/am/ActivityManagerService$MemItem;

    aget-wide v74, v66, v12

    aget-wide v76, v67, v12

    aget-wide v78, v28, v12

    const-wide/16 v80, 0x0

    move-object/from16 v73, v72

    move/from16 v82, v12

    invoke-direct/range {v71 .. v82}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJI)V

    move-object/from16 v4, v71

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v31, 0x1

    add-int/lit8 v12, v82, 0x1

    goto :goto_32

    :cond_43
    const/16 v31, 0x1

    array-length v4, v3

    if-lez v4, :cond_49

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v12, v1

    :goto_33
    if-ge v12, v4, :cond_49

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v12, v12, 0x1

    check-cast v5, Lcom/android/server/am/ActivityManagerService$MemItem;

    iget v8, v5, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_44

    move/from16 v10, p2

    move v8, v1

    :goto_34
    move/from16 v9, v62

    goto :goto_35

    :cond_44
    if-nez v8, :cond_45

    move/from16 v10, v59

    move/from16 v8, v60

    goto :goto_34

    :cond_45
    move/from16 v9, v62

    if-ne v8, v9, :cond_46

    move v8, v9

    move/from16 v10, v63

    goto :goto_35

    :cond_46
    move/from16 v10, v63

    if-ne v8, v10, :cond_48

    move/from16 v10, v56

    move/from16 v8, v58

    :goto_35
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v5, Lcom/android/server/am/ActivityManagerService$MemItem;->subitems:Ljava/util/ArrayList;

    :goto_36
    if-gt v8, v10, :cond_47

    const/16 v29, 0x11

    add-int/lit8 v11, v8, 0x11

    invoke-static {v11}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v72

    iget-object v11, v5, Lcom/android/server/am/ActivityManagerService$MemItem;->subitems:Ljava/util/ArrayList;

    new-instance v71, Lcom/android/server/am/ActivityManagerService$MemItem;

    aget-wide v74, v3, v8

    aget-wide v76, v65, v8

    aget-wide v78, v21, v8

    const-wide/16 v80, 0x0

    move-object/from16 v73, v72

    move/from16 v82, v8

    invoke-direct/range {v71 .. v82}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJI)V

    move-object/from16 v8, v71

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v31, 0x1

    add-int/lit8 v8, v82, 0x1

    goto :goto_36

    :cond_47
    const/16 v29, 0x11

    move/from16 v62, v9

    const/16 v31, 0x1

    const/16 v63, 0xc

    goto :goto_33

    :cond_48
    const/16 v29, 0x11

    move/from16 v62, v9

    move/from16 v63, v10

    const/16 v31, 0x1

    goto :goto_33

    :cond_49
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v12, v1

    :goto_37
    if-ge v12, v2, :cond_4c

    aget-wide v74, v50, v12

    cmp-long v4, v74, v32

    if-eqz v4, :cond_4b

    iget-boolean v4, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->isCompact:Z

    if-eqz v4, :cond_4a

    sget-object v4, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    aget-object v4, v4, v12

    :goto_38
    move-object/from16 v72, v4

    goto :goto_39

    :cond_4a
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    aget-object v4, v4, v12

    goto :goto_38

    :goto_39
    new-instance v71, Lcom/android/server/am/ActivityManagerService$MemItem;

    aget-wide v76, v51, v12

    aget-wide v78, v52, v12

    sget-object v4, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    aget v82, v4, v12

    const-wide/16 v80, 0x0

    move-object/from16 v73, v72

    invoke-direct/range {v71 .. v82}, Lcom/android/server/am/ActivityManagerService$MemItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJI)V

    move-object/from16 v4, v71

    aget-object v5, v27, v12

    iput-object v5, v4, Lcom/android/server/am/ActivityManagerService$MemItem;->subitems:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4b
    const/16 v31, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_37

    :cond_4c
    iget-boolean v2, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    if-nez v2, :cond_4d

    const-string/jumbo v37, "proc"

    const/16 v40, 0x0

    const/16 v41, 0x0

    const-wide v35, 0x20b0000001dL

    const/16 v39, 0x1

    move-object/from16 v34, v6

    invoke-static/range {v34 .. v41}, Lcom/android/server/am/ActivityManagerService;->dumpMemItems(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/util/ArrayList;ZZZ)V

    :goto_3a
    move-object/from16 v18, v38

    goto :goto_3b

    :cond_4d
    move-object/from16 v34, v6

    goto :goto_3a

    :goto_3b
    const-string/jumbo v37, "oom"

    const/16 v40, 0x0

    const/16 v41, 0x0

    const-wide v35, 0x20b0000001eL

    const/16 v39, 0x0

    move-object/from16 v38, v3

    invoke-static/range {v34 .. v41}, Lcom/android/server/am/ActivityManagerService;->dumpMemItems(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/util/ArrayList;ZZZ)V

    move-object/from16 v2, v38

    iget-boolean v3, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    if-nez v3, :cond_4e

    const-string/jumbo v37, "cat"

    const/16 v40, 0x0

    const/16 v41, 0x0

    const-wide v35, 0x20b0000001fL

    const/16 v39, 0x1

    move-object/from16 v38, v0

    invoke-static/range {v34 .. v41}, Lcom/android/server/am/ActivityManagerService;->dumpMemItems(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/util/ArrayList;ZZZ)V

    :cond_4e
    iget-boolean v3, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    if-nez v3, :cond_4f

    const-string/jumbo v37, "proc"

    iget-boolean v3, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSwapPss:Z

    const/16 v39, 0x1

    const/16 v40, 0x1

    const-wide v35, 0x20b00000005L

    move/from16 v41, v3

    move-object/from16 v38, v18

    invoke-static/range {v34 .. v41}, Lcom/android/server/am/ActivityManagerService;->dumpMemItems(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/util/ArrayList;ZZZ)V

    :cond_4f
    const-string/jumbo v37, "oom"

    iget-boolean v3, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSwapPss:Z

    const/16 v39, 0x0

    const/16 v40, 0x1

    const-wide v35, 0x20b00000006L

    move-object/from16 v38, v2

    move/from16 v41, v3

    invoke-static/range {v34 .. v41}, Lcom/android/server/am/ActivityManagerService;->dumpMemItems(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/util/ArrayList;ZZZ)V

    iget-boolean v2, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->oomOnly:Z

    if-nez v2, :cond_50

    const-string/jumbo v37, "cat"

    iget-boolean v2, v15, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;->dumpSwapPss:Z

    const/16 v39, 0x1

    const/16 v40, 0x1

    const-wide v35, 0x20b00000007L

    move-object/from16 v38, v0

    move/from16 v41, v2

    invoke-static/range {v34 .. v41}, Lcom/android/server/am/ActivityManagerService;->dumpMemItems(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;Ljava/util/ArrayList;ZZZ)V

    :cond_50
    move-object/from16 v6, v34

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    const/16 v2, 0x10

    aget-wide v3, v17, v2

    cmp-long v3, v3, v32

    const-wide/16 v4, 0x400

    if-lez v3, :cond_51

    iget-object v3, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v3, v3, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_16
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v19

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v21

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v23

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v25

    mul-long v34, v19, v4

    mul-long v36, v21, v4

    mul-long v38, v23, v4

    mul-long v40, v25, v4

    aget-wide v8, v17, v2

    mul-long v42, v8, v4

    invoke-static/range {v34 .. v43}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    aget-wide v27, v17, v2

    iget-object v2, v8, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v28}, Lcom/android/internal/app/procstats/ProcessStats;->addSysMemUsage(JJJJJ)V

    monitor-exit v3

    goto :goto_3c

    :catchall_9
    move-exception v0

    monitor-exit v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    throw v0

    :cond_51
    :goto_3c
    const-wide v2, 0x10300000008L

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v8

    invoke-virtual {v6, v2, v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v2, v7, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v2}, Lcom/android/server/am/AppProfiler;->getLastMemoryLevelLocked()I

    move-result v2

    const-wide v8, 0x10e00000009L

    invoke-virtual {v6, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x1030000000aL

    move-wide/from16 v8, v69

    invoke-virtual {v6, v2, v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1030000000bL

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v10

    invoke-virtual {v6, v2, v3, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1030000000cL

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v10

    invoke-virtual {v6, v2, v3, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-static {}, Landroid/os/Debug;->getKernelCmaUsageKb()J

    move-result-wide v2

    cmp-long v10, v2, v32

    if-gez v10, :cond_52

    move-wide/from16 v2, v32

    :cond_52
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v10

    const/16 v63, 0xc

    aget-wide v12, v17, v63

    aget-wide v14, v17, v58

    sub-long/2addr v12, v14

    sub-long/2addr v10, v12

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getShmemSizeKb()J

    move-result-wide v12

    add-long/2addr v12, v10

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v10

    sub-long/2addr v12, v10

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v10

    sub-long/2addr v12, v10

    sub-long/2addr v12, v2

    const/16 v63, 0xc

    aget-wide v2, v17, v63

    sub-long/2addr v2, v8

    const-wide v8, 0x1030000000dL

    invoke-virtual {v6, v8, v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1030000000eL

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v8

    invoke-virtual {v6, v2, v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1030000000fL

    invoke-virtual {v6, v2, v3, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v2

    cmp-long v2, v2, v32

    if-eqz v2, :cond_53

    const-wide v2, 0x10300000010L

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v8

    invoke-virtual {v6, v2, v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    move-result-wide v8

    sub-long/2addr v2, v8

    const-wide v8, 0x10300000011L

    invoke-virtual {v6, v8, v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000012L

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v8

    invoke-virtual {v6, v2, v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_53
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->getKsmInfo()[J

    move-result-object v0

    const-wide v2, 0x10300000013L

    const/16 v31, 0x1

    aget-wide v8, v0, v31

    invoke-virtual {v6, v2, v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000014L

    aget-wide v8, v0, v1

    invoke-virtual {v6, v2, v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000015L

    const/16 v30, 0x2

    aget-wide v8, v0, v30

    invoke-virtual {v6, v1, v2, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000016L

    aget-wide v8, v0, p2

    invoke-virtual {v6, v1, v2, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10500000017L

    invoke-static {}, Landroid/app/ActivityManager;->staticGetMemoryClass()I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000018L

    invoke-static {}, Landroid/app/ActivityManager;->staticGetLargeMemoryClass()I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    div-long/2addr v0, v4

    const-wide v2, 0x10300000019L

    invoke-virtual {v6, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    const-wide v2, 0x1030000001aL

    invoke-virtual {v6, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x1080000001bL

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000001cL

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    :cond_54
    invoke-virtual {v6}, Landroid/util/proto/ProtoOutputStream;->flush()V

    :cond_55
    :goto_3d
    return-void

    :cond_56
    move-object v6, v4

    move-object v1, v7

    move-object v4, v15

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->dumpApplicationMemoryUsage(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;[Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final dumpHigh(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 1

    const-string p3, "-S"

    const-string v0, "-d"

    filled-new-array {p3, v0}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService$MemBinder$1;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    const-string p3, "-a"

    const-string v0, "--package"

    filled-new-array {p3, v0}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService$MemBinder$1;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method
