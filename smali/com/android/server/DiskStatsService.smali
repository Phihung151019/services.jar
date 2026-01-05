.class public final Lcom/android/server/DiskStatsService;
.super Landroid/os/Binder;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    sget-object p0, Lcom/android/server/storage/DiskStatsLoggingService;->sDiskStatsLoggingService:Landroid/content/ComponentName;

    const-string/jumbo p0, "jobscheduler"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    new-instance p1, Landroid/app/job/JobInfo$Builder;

    const v0, 0x4449534b

    sget-object v1, Lcom/android/server/storage/DiskStatsLoggingService;->sDiskStatsLoggingService:Landroid/content/ComponentName;

    invoke-direct {p1, v0, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method public static reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V
    .locals 17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v0, "Invalid stat: bsize="

    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    int-to-long v9, v4

    const-wide/16 v11, 0x0

    cmp-long v4, v5, v11

    if-lez v4, :cond_1

    cmp-long v4, v9, v11

    if-lez v4, :cond_1

    if-eqz v3, :cond_0

    const-wide v13, 0x20b00000004L

    invoke-virtual {v3, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    const-wide/16 v15, 0x400

    const-wide v11, 0x10e00000001L

    move/from16 v0, p4

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    mul-long/2addr v7, v5

    div-long/2addr v7, v15

    const-wide v11, 0x10300000002L

    invoke-virtual {v3, v11, v12, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    mul-long/2addr v9, v5

    div-long/2addr v9, v15

    const-wide v4, 0x10300000003L

    invoke-virtual {v3, v4, v5, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v3, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-wide/16 v15, 0x400

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "-Free: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    mul-long v11, v7, v5

    div-long/2addr v11, v15

    invoke-virtual {v2, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "K / "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    mul-long/2addr v5, v9

    div-long/2addr v5, v15

    invoke-virtual {v2, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "K total = "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v4, 0x64

    mul-long/2addr v7, v4

    div-long/2addr v7, v9

    invoke-virtual {v2, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "% free"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " avail="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " total="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "-Error: "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 23

    move-object/from16 v1, p2

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    iget-object v0, v0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    const-string v3, "DiskStatsService"

    invoke-static {v0, v3, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_16

    :cond_0
    const/16 v0, 0x200

    new-array v4, v0, [B

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v0, :cond_1

    int-to-byte v7, v6

    aput-byte v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v7, "system/perftest.tmp"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v10, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-object v0, v9

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v9, v10

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v10, v9

    goto :goto_2

    :goto_1
    if-eqz v9, :cond_2

    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_2
    throw v0

    :goto_2
    if-eqz v10, :cond_3

    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_3
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_4
    array-length v4, v2

    move v6, v5

    :goto_4
    const/4 v12, 0x1

    if-ge v6, v4, :cond_6

    aget-object v13, v2, v6

    const-string v14, "--proto"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move v2, v12

    goto :goto_5

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    move v2, v5

    :goto_5
    if-eqz v2, :cond_9

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v4, p1

    invoke-direct {v1, v4}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    if-eqz v0, :cond_7

    move v4, v12

    goto :goto_6

    :cond_7
    move v4, v5

    :goto_6
    const-wide v13, 0x10800000001L

    invoke-virtual {v1, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    if-eqz v0, :cond_8

    const-wide v6, 0x10900000002L

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_7

    :cond_8
    const-wide v13, 0x10500000003L

    sub-long/2addr v10, v7

    invoke-virtual {v1, v13, v14, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :goto_7
    move-object/from16 v22, v9

    move-object v9, v1

    move-object/from16 v1, v22

    goto :goto_8

    :cond_9
    if-eqz v0, :cond_a

    const-string/jumbo v4, "Test-Error: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    const-string v0, "Latency: "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-long/2addr v10, v7

    invoke-virtual {v1, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, "ms [512B Data Write]"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_8
    const-string/jumbo v0, "storaged not found"

    const-string/jumbo v4, "storaged"

    const-string/jumbo v6, "Recent Disk Write Speed data unavailable!"

    const-wide/16 v7, 0x0

    if-eqz v2, :cond_d

    :try_start_5
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-static {v4}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IStoraged;->getRecentPerf()I

    move-result v0

    int-to-long v10, v0

    cmp-long v0, v10, v7

    if-eqz v0, :cond_b

    const-wide v6, 0x10500000007L

    invoke-virtual {v9, v6, v7, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_b

    :catch_5
    move-exception v0

    goto :goto_9

    :cond_b
    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_c
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_d
    :try_start_6
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-static {v4}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IStoraged;->getRecentPerf()I

    move-result v0

    int-to-long v10, v0

    cmp-long v0, v10, v7

    if-eqz v0, :cond_e

    const-string/jumbo v0, "Recent Disk Write Speed (kB/s) = "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_b

    :catch_6
    move-exception v0

    goto :goto_a

    :cond_e
    const-string/jumbo v0, "Recent Disk Write Speed data unavailable"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_f
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v4, "Data"

    invoke-static {v0, v4, v1, v9, v5}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    const-string v4, "Cache"

    invoke-static {v0, v4, v1, v9, v12}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    new-instance v0, Ljava/io/File;

    const-string v4, "/system"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "System"

    const/4 v6, 0x2

    invoke-static {v0, v4, v1, v9, v6}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    invoke-static {}, Landroid/os/Environment;->getMetadataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v4, "Metadata"

    const/4 v6, 0x3

    invoke-static {v0, v4, v1, v9, v6}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v0

    if-eqz v2, :cond_11

    const-wide v7, 0x10e00000005L

    if-eqz v0, :cond_10

    invoke-virtual {v9, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_c

    :cond_10
    invoke-virtual {v9, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_c

    :cond_11
    if-eqz v0, :cond_12

    const-string v0, "File-based Encryption: true"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_12
    :goto_c
    const-string/jumbo v4, "exception reading diskstats cache file"

    const-string/jumbo v0, "cacheSizes"

    const-string/jumbo v6, "appDataSizes"

    const-string/jumbo v7, "appSizes"

    const-string/jumbo v8, "packageNames"

    const-string/jumbo v10, "otherSize"

    const-string/jumbo v11, "systemSize"

    const-string/jumbo v12, "downloadsSize"

    const-string/jumbo v13, "audioSize"

    const-string/jumbo v14, "videosSize"

    const-string/jumbo v15, "photosSize"

    const-string/jumbo v5, "cacheSize"

    move/from16 p3, v2

    const-string/jumbo v2, "appDataSize"

    move-object/from16 p1, v1

    const-string/jumbo v1, "appSize"

    const-string v16, "/data/system/diskstats_cache.json"

    if-eqz p3, :cond_15

    move-object/from16 p2, v4

    :try_start_7
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_8

    move-object/from16 v17, v3

    :try_start_8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    move-object/from16 v18, v7

    const-wide v6, 0x10b00000006L

    invoke-virtual {v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    move-wide/from16 v19, v6

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v21, v0

    const-wide v0, 0x10300000001L

    invoke-virtual {v9, v0, v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide v6, 0x1030000000aL

    invoke-virtual {v9, v6, v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide v5, 0x10300000002L

    invoke-virtual {v9, v5, v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide v5, 0x10300000003L

    invoke-virtual {v9, v5, v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide v14, 0x10300000004L

    invoke-virtual {v9, v14, v15, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide v5, 0x10300000005L

    invoke-virtual {v9, v5, v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide v5, 0x10300000006L

    invoke-virtual {v9, v5, v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide v5, 0x10300000007L

    invoke-virtual {v9, v5, v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide v5, 0x10300000008L

    invoke-virtual {v9, v5, v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object/from16 v6, v18

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move-object/from16 v7, v21

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_9

    if-ne v4, v5, :cond_14

    :try_start_9
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ne v4, v5, :cond_14

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ne v4, v5, :cond_14

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v4, :cond_13

    const-wide v6, 0x20b00000009L

    invoke-virtual {v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-wide v10, 0x10900000001L

    invoke-virtual {v9, v10, v11, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    const-wide v12, 0x10300000002L

    invoke-virtual {v9, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v9, v14, v15, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    const-wide v12, 0x10300000003L

    invoke-virtual {v9, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_7

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :catch_7
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v3, v17

    goto :goto_11

    :cond_13
    move-object/from16 v3, v17

    :goto_e
    move-wide/from16 v0, v19

    goto :goto_f

    :cond_14
    :try_start_a
    const-string/jumbo v0, "Sizes of packageNamesArray, appSizesArray, appDataSizesArray  and cacheSizesArray are not the same"
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_9

    move-object/from16 v3, v17

    :try_start_b
    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :goto_f
    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_12

    :catch_8
    move-exception v0

    :goto_10
    move-object/from16 v1, p2

    goto :goto_11

    :catch_9
    move-exception v0

    move-object/from16 v3, v17

    goto :goto_10

    :goto_11
    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    move-object/from16 v17, v9

    goto/16 :goto_15

    :cond_15
    move-object/from16 v17, v9

    move-object v9, v4

    move-object v4, v6

    move-object v6, v7

    move-object v7, v0

    :try_start_c
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_c

    move-object/from16 v16, v3

    :try_start_d
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "App Size: "
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_b

    move-object/from16 p2, v9

    move-object/from16 v9, p1

    :try_start_e
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "App Data Size: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "App Cache Size: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v0, "Photos Size: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v0, "Videos Size: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "Audio Size: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "Downloads Size: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v0, "System Size: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v0, "Other Size: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v0, "Package Names: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "App Sizes: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "App Data Sizes: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "Cache Sizes: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_15

    :catch_a
    move-exception v0

    :goto_13
    move-object/from16 v1, p2

    move-object/from16 v3, v16

    goto :goto_14

    :catch_b
    move-exception v0

    move-object/from16 p2, v9

    goto :goto_13

    :catch_c
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 p2, v9

    move-object/from16 v1, p2

    :goto_14
    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    if-eqz p3, :cond_16

    invoke-virtual/range {v17 .. v17}, Landroid/util/proto/ProtoOutputStream;->flush()V

    :cond_16
    :goto_16
    return-void
.end method
