.class public abstract Lcom/android/server/am/Pageboost$PageboostAppCapture;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final PAGEBOOST_IO_PREFETCH_LEVEL:I

.field public static record_ongoing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.config.pageboost.io_prefetch.level"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    return-void
.end method

.method public static capture(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V
    .locals 36

    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, 0x2

    const-string v4, "/proc/"

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "Pageboost"

    const/4 v9, 0x1

    const/4 v0, 0x3

    sget v10, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    if-ne v0, v10, :cond_4

    sget-boolean v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->record_ongoing:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    const-string/jumbo v0, "record is ongoing. Abort for "

    invoke-static {v2, v0, v8}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-lez v2, :cond_1b

    new-instance v0, Lcom/android/server/am/Pageboost$IoRecord;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v7, v0, Lcom/android/server/am/Pageboost$IoRecord;->mPid:I

    iput-wide v5, v0, Lcom/android/server/am/Pageboost$IoRecord;->mBytesRecorded:J

    iput-boolean v7, v0, Lcom/android/server/am/Pageboost$IoRecord;->mCorrectness:Z

    iput-boolean v7, v0, Lcom/android/server/am/Pageboost$IoRecord;->mRecordDone:Z

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iput v2, v0, Lcom/android/server/am/Pageboost$IoRecord;->mPid:I

    iget-object v5, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/am/Pageboost$IoRecord;->mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/io_record_control"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-static {v4, v5}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/am/Pageboost$IoRecord;->mCorrectness:Z

    if-eqz v4, :cond_2

    invoke-static {v2}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->check64Bit(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/am/Pageboost$IoRecord;->is64bit:Z

    sget-boolean v2, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    const-string v2, "IoRecord pid : "

    const-string v4, ", started correctly"

    invoke-static {v2, v3, v4, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-boolean v2, v0, Lcom/android/server/am/Pageboost$IoRecord;->mCorrectness:Z

    if-eqz v2, :cond_1b

    sput-boolean v9, Lcom/android/server/am/Pageboost$PageboostAppCapture;->record_ongoing:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RecordStart,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/Pageboost$Vramdisk;->add(Ljava/lang/String;)V

    iget-boolean v1, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mIsGameApp:Z

    const/16 v2, 0xf

    if-eqz v1, :cond_3

    const v1, 0x88b8

    invoke-static {v2, v1, v0}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V

    return-void

    :cond_3
    const/16 v1, 0x1388

    invoke-static {v2, v1, v0}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V

    return-void

    :cond_4
    sget-object v0, Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

    if-eqz v0, :cond_1b

    iget-boolean v0, v0, Lcom/android/server/am/Pageboost$FileMapList;->mCorrectness:Z

    if-nez v0, :cond_5

    goto/16 :goto_15

    :cond_5
    sget-object v0, Lcom/android/server/am/Pageboost;->mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    if-eqz v0, :cond_1b

    iget-boolean v0, v0, Lcom/android/server/am/Pageboost$FileMapList;->mCorrectness:Z

    if-nez v0, :cond_6

    goto/16 :goto_15

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "IO Capture start for : "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "pid : "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v12, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {v0, v12}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v12}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_7

    goto/16 :goto_15

    :cond_7
    if-gt v3, v10, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static {v2}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->check64Bit(I)Z

    move-result v12

    new-instance v0, Lcom/android/server/am/Pageboost$FileMapList;

    invoke-direct {v0, v2}, Lcom/android/server/am/Pageboost$FileMapList;-><init>(I)V

    iget-boolean v13, v0, Lcom/android/server/am/Pageboost$FileMapList;->mCorrectness:Z

    if-eqz v13, :cond_17

    iget-object v0, v0, Lcom/android/server/am/Pageboost$FileMapList;->mFiles:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move-wide/from16 v23, v5

    move-wide/from16 v25, v23

    move-wide/from16 v27, v25

    move/from16 v29, v7

    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->isCaptureTarget(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    if-eqz v12, :cond_9

    sget-object v0, Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

    invoke-virtual {v0, v15}, Lcom/android/server/am/Pageboost$FileMapList;->contain(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    :cond_9
    if-nez v12, :cond_a

    sget-object v0, Lcom/android/server/am/Pageboost;->mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    invoke-virtual {v0, v15}, Lcom/android/server/am/Pageboost$FileMapList;->contain(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1

    :cond_a
    if-gtz v2, :cond_b

    move v0, v7

    move v13, v0

    goto :goto_2

    :cond_b
    move v13, v2

    move v0, v9

    :goto_2
    if-eqz v0, :cond_13

    if-nez v0, :cond_c

    const/4 v0, 0x0

    move-object/from16 v35, v4

    move/from16 v30, v7

    move/from16 v31, v9

    move v9, v3

    goto/16 :goto_d

    :cond_c
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v13, "/filemap_info"

    invoke-static {v4, v0, v13}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v13, Ljava/io/FileWriter;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v13, v15}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-array v5, v7, [Ljava/lang/String;

    invoke-static {v0, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    array-length v5, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    int-to-long v5, v5

    move/from16 v30, v7

    move/from16 v31, v9

    const-wide/16 v32, 0x0

    move/from16 v9, v30

    :goto_3
    :try_start_2
    array-length v3, v0

    if-ge v7, v3, :cond_10

    aget-byte v3, v0, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v35, v4

    const/16 v4, 0xa

    if-ne v3, v4, :cond_d

    :try_start_3
    invoke-static {v0, v9, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v9, 0x2

    if-ne v4, v9, :cond_f

    aget-object v4, v3, v30

    const-string/jumbo v9, "mapped"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_e

    :try_start_4
    aget-object v3, v3, v31

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-wide/16 v16, 0x1000

    mul-long v3, v3, v16

    add-long v32, v3, v32

    add-int/lit8 v9, v7, 0x1

    :cond_d
    move-object v4, v13

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v4, v13

    goto :goto_9

    :cond_e
    :try_start_5
    aget-object v4, v3, v30

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    aget-object v3, v3, v31

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v9, v7, 0x1

    add-int v7, v7, v18

    add-int/lit8 v3, v7, 0x1

    invoke-static {v0, v9, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/16 v34, 0x2

    add-int/lit8 v9, v7, 0x2

    move-object v4, v13

    :try_start_6
    sget-object v13, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V

    move v7, v3

    goto :goto_6

    :catchall_1
    move-exception v0

    :goto_4
    move-object v3, v0

    goto :goto_9

    :catchall_2
    move-exception v0

    :goto_5
    move-object v4, v13

    goto :goto_4

    :cond_f
    move-object v4, v13

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    const-string/jumbo v0, "unknown error during parsing of filemap_info"

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_7

    :goto_6
    add-int/lit8 v7, v7, 0x1

    move-object v13, v4

    move-object/from16 v4, v35

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object/from16 v35, v4

    goto :goto_5

    :cond_10
    move-object/from16 v35, v4

    move-object v4, v13

    :goto_7
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    const/4 v9, 0x2

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object/from16 v35, v4

    move/from16 v30, v7

    move/from16 v31, v9

    move-object v4, v13

    move-object v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v32, 0x0

    :goto_9
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v0

    :try_start_9
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catch_1
    move-exception v0

    move-object/from16 v35, v4

    move/from16 v30, v7

    move/from16 v31, v9

    const-wide/16 v5, 0x0

    const-wide/16 v32, 0x0

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :goto_c
    new-array v0, v9, [J

    aput-wide v32, v0, v30

    aput-wide v5, v0, v31

    :goto_d
    if-eqz v0, :cond_14

    aget-wide v3, v0, v30

    aget-wide v5, v0, v31

    add-long v23, v23, v3

    add-long v3, v25, v3

    add-long v5, v27, v5

    const-wide/32 v15, 0x9600000

    cmp-long v0, v3, v15

    if-lez v0, :cond_11

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "IO Capture \'map\' over limit : "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "/157286400"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_11
    const-wide/32 v15, 0x20000

    cmp-long v0, v5, v15

    if-lez v0, :cond_12

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "IO Capture \'map\' over dbsize limit : "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "/131072"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    move-wide v5, v3

    move/from16 v7, v31

    goto :goto_11

    :cond_12
    move-wide/from16 v25, v3

    move-wide/from16 v27, v5

    move/from16 v29, v31

    goto :goto_f

    :cond_13
    move-object/from16 v35, v4

    move/from16 v30, v7

    move/from16 v31, v9

    move v9, v3

    :cond_14
    :goto_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v20

    const-wide/16 v5, 0x3e8

    cmp-long v0, v3, v5

    if-lez v0, :cond_15

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "IO Capture \'map\' timed out : "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/1000"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    move-wide/from16 v5, v25

    move/from16 v7, v29

    goto :goto_11

    :cond_15
    move v3, v9

    move/from16 v7, v30

    move/from16 v9, v31

    move-object/from16 v4, v35

    const-wide/16 v5, 0x0

    goto/16 :goto_1

    :cond_16
    move/from16 v31, v9

    goto :goto_10

    :goto_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    const-string v0, "IO Capture \'mapped files\' pid : "

    const-string v9, " size : "

    invoke-static {v2, v0, v5, v6, v9}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " time : "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v3, v3, v20

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v3, v5

    move-wide/from16 v5, v23

    :goto_12
    move/from16 v9, v31

    goto :goto_13

    :cond_17
    move/from16 v30, v7

    move/from16 v31, v9

    move/from16 v7, v30

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    goto :goto_12

    :goto_13
    if-gt v9, v10, :cond_19

    iget-object v15, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    if-eqz v15, :cond_19

    invoke-static {v15}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->isCaptureTarget(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_19

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v0, v12

    const/high16 v12, 0x3200000

    if-le v0, v12, :cond_18

    move v0, v12

    :cond_18
    const v12, 0x8000

    div-int v12, v0, v12

    if-lez v12, :cond_19

    new-array v7, v12, [B

    const/4 v13, -0x1

    invoke-static {v7, v13}, Ljava/util/Arrays;->fill([BB)V

    sget-object v13, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v7

    move/from16 v18, v12

    invoke-static/range {v13 .. v19}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "IO Capture \'apk\', pid : "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", size : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v12, v0

    add-long/2addr v5, v12

    goto :goto_14

    :cond_19
    move v9, v7

    :goto_14
    iget-object v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    if-eqz v9, :cond_1a

    iput v10, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    iput-wide v5, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForPrefetch:J

    iput-wide v3, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mMapCaptureSizeForPrefetch:J

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Capture,"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/Pageboost$Vramdisk;->add(Ljava/lang/String;)V

    :cond_1a
    const-string v1, "IO Capture end for : "

    const-string v3, " done correctly? "

    invoke-static {v2, v1, v0, v11, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8, v0, v9}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_1b
    :goto_15
    return-void
.end method

.method public static captureFinished(Lcom/android/server/am/Pageboost$IoRecord;)V
    .locals 5

    const/4 v0, 0x3

    sget v1, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/am/Pageboost$PageboostAppCapture;->record_ongoing:Z

    const-string/jumbo v2, "Pageboost"

    if-nez v0, :cond_0

    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    const-string/jumbo p0, "captureFinished requested for null app"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/android/server/am/Pageboost$IoRecord;->mRecordDone:Z

    if-eqz v3, :cond_1

    iput v1, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    iget-wide v3, p0, Lcom/android/server/am/Pageboost$IoRecord;->mBytesRecorded:J

    iput-wide v3, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForPrefetch:J

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mMapCaptureSizeForPrefetch:J

    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "captureFinished success : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/am/Pageboost$IoRecord;->mBytesRecorded:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "/proc/self/io_record_control"

    const-string v3, "1"

    invoke-static {v1, v3}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    const-string/jumbo v1, "captureFinished fail"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RecordEnd,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mRecordDone:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/Pageboost$Vramdisk;->add(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static check64Bit(I)Z
    .locals 6

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    return v0

    :cond_0
    const-string v1, "/proc/"

    const-string v2, "/exe"

    invoke-static {p0, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x6

    :try_start_1
    new-array v2, v2, [B

    const-string/jumbo v3, "\u007fELF"

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    const/4 v4, 0x4

    invoke-static {v2, v0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-byte v2, v2, v4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v2

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "64 bit checked : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "Pageboost"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isCaptureTarget(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "/data"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/system"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/product"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "/data/misc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "(deleted"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method
