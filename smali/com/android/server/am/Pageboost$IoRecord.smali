.class public final Lcom/android/server/am/Pageboost$IoRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public is64bit:Z

.field public mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

.field public mBytesRecorded:J

.field public mCorrectness:Z

.field public mPid:I

.field public mRecordDone:Z


# direct methods
.method public static fillBitmap(II[BZ)V
    .locals 6

    rem-int/lit8 v0, p0, 0x8

    const/16 v1, 0x8

    const/16 v2, 0xff

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    div-int/lit8 p0, p0, 0x8

    aget-byte v4, p2, p0

    and-int/2addr v4, v2

    :goto_0
    if-ge v0, v1, :cond_1

    if-eqz p3, :cond_0

    shl-int v5, v3, v0

    or-int/2addr v4, v5

    goto :goto_1

    :cond_0
    shl-int v5, v3, v0

    not-int v5, v5

    and-int/2addr v4, v5

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    and-int/lit16 v0, v4, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, p0

    add-int/2addr p0, v3

    mul-int/2addr p0, v1

    :cond_2
    div-int/2addr p0, v1

    div-int/lit8 v0, p1, 0x8

    const/4 v4, 0x0

    if-ge p0, v0, :cond_4

    if-eqz p3, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    int-to-byte v5, v5

    invoke-static {p2, p0, v0, v5}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_4
    rem-int/2addr p1, v1

    if-eqz p1, :cond_7

    aget-byte p0, p2, v0

    and-int/2addr p0, v2

    :goto_3
    if-ge v4, p1, :cond_6

    if-eqz p3, :cond_5

    shl-int v1, v3, v4

    or-int/2addr p0, v1

    goto :goto_4

    :cond_5
    shl-int v1, v3, v4

    not-int v1, v1

    and-int/2addr p0, v1

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    and-int/2addr p0, v2

    int-to-byte p0, p0

    aput-byte p0, p2, v0

    :cond_7
    return-void
.end method

.method public static readInt([B)I
    .locals 2

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getResultFromKernel()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mCorrectness:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IoRecord pid : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/Pageboost$IoRecord;->mPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "Pageboost"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "/proc/"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/io_record_control"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "3"

    invoke-static {v0, v4}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo p0, "StopRecording Failed"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v4, "4"

    invoke-static {v0, v4}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo p0, "PostRecording Failed"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v0, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result_size : "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v4

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/server/am/Pageboost$IoRecord;->parsingResult([B)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "1"

    invoke-static {v0, v4}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo p0, "iorecord re-init Failed"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mRecordDone:Z

    :cond_4
    :goto_0
    return-void

    :catch_0
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    const-string p0, "CatRecordedData Failed"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final parsingResult([B)J
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/server/am/Pageboost$IoRecord;->mCorrectness:Z

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    return-wide v3

    :cond_0
    sget-object v2, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, v0, Lcom/android/server/am/Pageboost$IoRecord;->mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

    iget-object v6, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "Pageboost"

    if-nez v8, :cond_1

    const-string/jumbo v0, "db table failed"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v3

    :cond_1
    invoke-virtual {v5}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->initAalPrefetchList()V

    const-string/jumbo v3, "db insert start"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v14, 0x0

    :goto_0
    array-length v9, v1

    if-ge v4, v9, :cond_e

    add-int/lit8 v9, v4, 0x4

    invoke-static {v1, v4, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/Pageboost$IoRecord;->readInt([B)I

    move-result v4

    const/4 v15, -0x1

    if-ne v4, v15, :cond_2

    goto/16 :goto_9

    :cond_2
    add-int v10, v9, v4

    invoke-static {v1, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    new-instance v11, Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v9, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v9, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    const/16 v16, 0x0

    if-eqz v9, :cond_3

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x2

    move-wide/from16 v17, v6

    move v13, v9

    move v7, v15

    move v9, v7

    move-object/from16 v6, v16

    goto :goto_1

    :cond_3
    move-wide/from16 v17, v6

    move v7, v15

    move v9, v7

    move-object/from16 v6, v16

    const/4 v13, 0x0

    :goto_1
    add-int/lit8 v12, v10, 0x4

    invoke-static {v1, v10, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/am/Pageboost$IoRecord;->readInt([B)I

    move-result v3

    add-int/lit8 v10, v10, 0x8

    invoke-static {v1, v12, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/Pageboost$IoRecord;->readInt([B)I

    move-result v12

    if-ne v3, v15, :cond_4

    if-ne v12, v15, :cond_4

    move v15, v7

    move-object v1, v8

    goto :goto_3

    :cond_4
    invoke-static {v11}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->isCaptureTarget(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_d

    iget-boolean v15, v0, Lcom/android/server/am/Pageboost$IoRecord;->is64bit:Z

    if-eqz v15, :cond_5

    sget-object v1, Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

    invoke-virtual {v1, v11}, Lcom/android/server/am/Pageboost$FileMapList;->contain(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    if-nez v15, :cond_d

    sget-object v1, Lcom/android/server/am/Pageboost;->mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    invoke-virtual {v1, v11}, Lcom/android/server/am/Pageboost$FileMapList;->contain(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_2
    const-wide/16 v20, 0x1000

    move v15, v7

    move-object v1, v8

    int-to-long v7, v12

    mul-long v7, v7, v20

    add-long v20, v7, v17

    const-wide/32 v7, 0x19000000

    cmp-long v7, v20, v7

    if-lez v7, :cond_8

    const/4 v14, 0x1

    :goto_3
    if-eqz v6, :cond_6

    sget-object v7, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    array-length v12, v6

    move-object v8, v1

    move v1, v10

    move-object v9, v11

    move v10, v15

    move-object v11, v6

    invoke-static/range {v7 .. v13}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V

    move-object v6, v8

    goto :goto_4

    :cond_6
    move-object v6, v1

    move v1, v10

    :goto_4
    if-eqz v14, :cond_7

    move-wide/from16 v6, v17

    goto/16 :goto_9

    :cond_7
    move v4, v1

    move-object v8, v6

    move-wide/from16 v6, v17

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_8
    move-object v7, v11

    move-object v11, v6

    move-object v6, v1

    move v1, v10

    move v10, v15

    if-eqz v11, :cond_a

    add-int v15, v10, v9

    sub-int v15, v3, v15

    add-int/lit8 v15, v15, 0x7

    div-int/lit8 v15, v15, 0x8

    move/from16 v22, v9

    int-to-long v8, v15

    move-object v15, v5

    move-object/from16 v23, v6

    int-to-long v5, v4

    cmp-long v5, v8, v5

    if-gtz v5, :cond_9

    add-int v5, v3, v12

    sub-int/2addr v5, v10

    add-int/lit8 v6, v5, 0x7

    div-int/lit8 v6, v6, 0x8

    new-array v6, v6, [B

    array-length v8, v11

    const/4 v9, 0x0

    invoke-static {v11, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v8, v3, v10

    move/from16 v24, v1

    move/from16 v1, v22

    invoke-static {v1, v8, v6, v9}, Lcom/android/server/am/Pageboost$IoRecord;->fillBitmap(II[BZ)V

    const/4 v1, 0x1

    invoke-static {v8, v5, v6, v1}, Lcom/android/server/am/Pageboost$IoRecord;->fillBitmap(II[BZ)V

    goto :goto_6

    :cond_9
    move/from16 v24, v1

    goto :goto_5

    :cond_a
    move/from16 v24, v1

    move-object v15, v5

    move-object/from16 v23, v6

    :goto_5
    const/4 v1, 0x1

    move-object/from16 v6, v16

    :goto_6
    if-nez v6, :cond_c

    move-object v9, v7

    if-eqz v11, :cond_b

    sget-object v7, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    move v5, v12

    array-length v12, v11

    move-object/from16 v8, v23

    invoke-static/range {v7 .. v13}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V

    goto :goto_7

    :cond_b
    move v5, v12

    move-object/from16 v8, v23

    :goto_7
    add-int/lit8 v12, v5, 0x7

    div-int/lit8 v12, v12, 0x8

    new-array v6, v12, [B

    const/4 v10, 0x0

    invoke-static {v10, v5, v6, v1}, Lcom/android/server/am/Pageboost$IoRecord;->fillBitmap(II[BZ)V

    move v7, v3

    move v3, v5

    goto :goto_8

    :cond_c
    move-object v9, v7

    move v7, v10

    move v5, v12

    move-object/from16 v8, v23

    const/4 v10, 0x0

    add-int/2addr v3, v5

    sub-int/2addr v3, v7

    :goto_8
    move-object/from16 v1, p1

    move-object v11, v9

    move-object v5, v15

    move-wide/from16 v17, v20

    move/from16 v10, v24

    const/4 v15, -0x1

    move v9, v3

    goto/16 :goto_1

    :cond_d
    move-object v15, v5

    move v1, v9

    move/from16 v24, v10

    move-object v9, v11

    const/4 v10, 0x0

    move-object v11, v6

    move-object v6, v11

    move-object v5, v15

    move/from16 v10, v24

    const/4 v15, -0x1

    move-object v11, v9

    move v9, v1

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_e
    :goto_9
    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "db insert done, overLimit "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v6, v0, Lcom/android/server/am/Pageboost$IoRecord;->mBytesRecorded:J

    return-wide v6
.end method
