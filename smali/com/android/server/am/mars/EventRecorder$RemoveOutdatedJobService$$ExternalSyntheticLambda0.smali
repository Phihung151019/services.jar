.class public final synthetic Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;

    iput-object p2, p0, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    move-object/from16 v0, p0

    const-string v1, ","

    iget-object v2, v0, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;

    iget-object v3, v0, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    sget v0, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;->$r8$clinit:I

    const-string/jumbo v4, "RemoveOutdatedJobService"

    const-string/jumbo v0, "onStartJob is called"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;->isJobCancelled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v7, Ljava/io/File;

    const-string v8, "/data/log/mars/tmp_stats.txt"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/am/mars/EventRecorder;->createNewEmptyFile(Ljava/io/File;)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_0

    move/from16 v16, v9

    goto/16 :goto_11

    :cond_0
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    const-wide/32 v11, 0x1499700

    sub-long/2addr v5, v11

    sget-object v11, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/log/mars/stats.txt"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v12, Ljava/io/BufferedWriter;

    new-instance v13, Ljava/io/OutputStreamWriter;

    new-instance v14, Ljava/io/FileOutputStream;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v13, v14, v15}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    :try_start_1
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    move/from16 p0, v0

    new-instance v0, Ljava/io/FileInputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move/from16 v16, v9

    :try_start_2
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v0, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const-string/jumbo v9, "onStopJob is called. Abort."

    if-eqz v0, :cond_f

    :try_start_4
    iget-boolean v14, v2, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;->isJobCancelled:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v14, :cond_1

    :try_start_5
    invoke-static {v4, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :goto_1
    sget-object v0, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move/from16 v0, p0

    goto/16 :goto_11

    :catch_0
    move-exception v0

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    :goto_2
    move-object v1, v0

    goto/16 :goto_d

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v23, v13

    goto/16 :goto_b

    :cond_1
    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x2

    aget-object v9, v9, v14

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/android/server/am/mars/events/EventType;->fromInt(I)Lcom/android/server/am/mars/events/EventType;

    move-result-object v9

    sget-object v15, Lcom/android/server/am/mars/events/EventType;->FREEZE:Lcom/android/server/am/mars/events/EventType;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-ne v9, v15, :cond_3

    :try_start_9
    new-instance v9, Lcom/android/server/am/mars/events/FreezeEvent;

    invoke-direct {v9, v0}, Lcom/android/server/am/mars/events/FreezeEvent;-><init>(Ljava/lang/String;)V

    iget-object v0, v9, Lcom/android/server/am/mars/events/Event;->uid:Ljava/lang/Integer;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, v9, Lcom/android/server/am/mars/events/Event;->uid:Ljava/lang/Integer;

    invoke-virtual {v8, v0, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-wide/from16 v20, v5

    move-object/from16 v22, v8

    move-object/from16 v23, v13

    goto/16 :goto_6

    :cond_3
    :try_start_a
    sget-object v15, Lcom/android/server/am/mars/events/EventType;->UNFREEZE:Lcom/android/server/am/mars/events/EventType;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const/16 v17, 0x4

    const/16 v18, 0x3

    move/from16 v19, v14

    const-string v14, "\n"

    if-ne v9, v15, :cond_6

    :try_start_b
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v9, v0, p0

    move-wide/from16 v20, v5

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aget-object v9, v0, v16

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget-object v15, v0, v19

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Lcom/android/server/am/mars/events/EventType;->fromInt(I)Lcom/android/server/am/mars/events/EventType;

    move-result-object v15

    aget-object v18, v0, v18

    move-object/from16 v22, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v17, v22, v17
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object/from16 v23, v13

    :try_start_c
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/16 v17, 0x5

    move-object/from16 v19, v15

    aget-object v15, v22, v17

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/mars/events/FreezeEvent;

    if-nez v17, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unfreeze event without freeze event. uid : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-wide/from16 v5, v20

    :goto_4
    move-object/from16 v13, v23

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    :goto_5
    move-object v1, v0

    goto/16 :goto_b

    :cond_4
    cmp-long v18, v20, v5

    if-lez v18, :cond_5

    goto :goto_3

    :cond_5
    move-object/from16 v22, v8

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/mars/events/FreezeEvent;->toFile()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/mars/events/EventType;->getNumber()I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    move-wide/from16 v20, v5

    move-object/from16 v22, v8

    move-object/from16 v23, v13

    sget-object v5, Lcom/android/server/am/mars/events/EventType;->UID_RUN:Lcom/android/server/am/mars/events/EventType;

    if-ne v9, v5, :cond_9

    new-instance v5, Lcom/android/server/am/mars/events/Event;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v6, v0, p0

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/android/server/am/mars/events/Event;->time:J

    aget-object v6, v0, v16

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/am/mars/events/Event;->uid:Ljava/lang/Integer;

    aget-object v0, v0, v19

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/mars/events/EventType;->fromInt(I)Lcom/android/server/am/mars/events/EventType;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/am/mars/events/Event;->eventType:Lcom/android/server/am/mars/events/EventType;

    iget-object v0, v5, Lcom/android/server/am/mars/events/Event;->uid:Ljava/lang/Integer;

    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    :cond_7
    :goto_6
    move-wide/from16 v5, v20

    move-object/from16 v8, v22

    goto/16 :goto_4

    :cond_8
    iget-object v0, v5, Lcom/android/server/am/mars/events/Event;->uid:Ljava/lang/Integer;

    invoke-virtual {v10, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_9
    sget-object v5, Lcom/android/server/am/mars/events/EventType;->UID_STOP:Lcom/android/server/am/mars/events/EventType;

    if-ne v9, v5, :cond_c

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v5, v0, p0

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aget-object v8, v0, v16

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget-object v0, v0, v19

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/mars/events/EventType;->fromInt(I)Lcom/android/server/am/mars/events/EventType;

    move-result-object v0

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/mars/events/Event;

    if-nez v9, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stop event without run event. uid : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_a
    cmp-long v13, v20, v5

    if-lez v13, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v9}, Lcom/android/server/am/mars/events/Event;->toFile()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/am/mars/events/EventType;->getNumber()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    sget-object v5, Lcom/android/server/am/mars/events/EventType;->FREEZE_SKIP_SCREEN_OFF:Lcom/android/server/am/mars/events/EventType;

    if-eq v9, v5, :cond_d

    sget-object v5, Lcom/android/server/am/mars/events/EventType;->FREEZE_SKIP_SCREEN_ON:Lcom/android/server/am/mars/events/EventType;

    if-ne v9, v5, :cond_7

    :cond_d
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v5, v0, p0

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aget-object v8, v0, v16

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget-object v9, v0, v19

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/android/server/am/mars/events/EventType;->fromInt(I)Lcom/android/server/am/mars/events/EventType;

    move-result-object v9

    aget-object v13, v0, v18

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Lcom/android/server/am/FreezeResult;->fromInt(I)Lcom/android/server/am/FreezeResult;

    move-result-object v13

    aget-object v0, v0, v17

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    cmp-long v15, v20, v5

    if-lez v15, :cond_e

    goto/16 :goto_6

    :cond_e
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/am/mars/events/EventType;->getNumber()I

    move-result v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/FreezeResult;->getKey()I

    move-result v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v23, v13

    goto/16 :goto_5

    :cond_f
    move-object/from16 v22, v8

    move-object/from16 v23, v13

    invoke-virtual {v10}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/events/Event;

    invoke-virtual {v1}, Lcom/android/server/am/mars/events/Event;->toFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/events/FreezeEvent;

    invoke-virtual {v1}, Lcom/android/server/am/mars/events/FreezeEvent;->toFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_8

    :cond_11
    iget-boolean v0, v2, Lcom/android/server/am/mars/EventRecorder$RemoveOutdatedJobService;->isJobCancelled:Z

    if-eqz v0, :cond_12

    invoke-static {v4, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto/16 :goto_1

    :cond_12
    :try_start_f
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_13

    move/from16 v0, p0

    goto :goto_9

    :cond_13
    invoke-virtual {v7, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    :goto_9
    if-nez v0, :cond_14

    sput-boolean p0, Lcom/android/server/am/mars/EventRecorder;->mFeatureEnable:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto/16 :goto_1

    :cond_14
    :try_start_12
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :goto_a
    sget-object v0, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_10

    :goto_b
    :try_start_14
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    goto :goto_c

    :catchall_4
    move-exception v0

    :try_start_15
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :catchall_5
    move-exception v0

    move/from16 v16, v9

    goto/16 :goto_2

    :goto_d
    :try_start_16
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    :try_start_17
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    :catch_1
    move-exception v0

    move/from16 v16, v9

    :goto_f
    :try_start_18
    const-string v1, "Error at removeOutdated"

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    goto :goto_a

    :goto_10
    move/from16 v0, v16

    :goto_11
    if-nez v0, :cond_15

    const-string v1, "Failed to remove outdated events."

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :catchall_7
    move-exception v0

    sget-object v1, Lcom/android/server/am/mars/EventRecorder;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
