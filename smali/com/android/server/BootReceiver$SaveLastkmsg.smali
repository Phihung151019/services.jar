.class public final Lcom/android/server/BootReceiver$SaveLastkmsg;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final buffer:[B

.field public fin:Ljava/io/FileInputStream;

.field public fout:Ljava/io/FileOutputStream;

.field public isSaveLastkmsgDone:Z

.field public final synthetic this$0:Lcom/android/server/BootReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/BootReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->fout:Ljava/io/FileOutputStream;

    const/16 p1, 0x800

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->isSaveLastkmsgDone:Z

    return-void
.end method


# virtual methods
.method public final logLastKmsg()V
    .locals 27

    move-object/from16 v1, p0

    const-string/jumbo v2, "UTF-8"

    const-string/jumbo v3, "logLastKmsg - New filename is "

    const-string v4, "== dumpstate lastkmsg : "

    new-instance v5, Ljava/io/File;

    const-string v0, "/proc/last_kmsg"

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v0, "/proc/reset_summary"

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    const-string v0, "/proc/reset_klog"

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    const-string v0, "/proc/reset_tzlog"

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    const-string v0, "/proc/version"

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    const-string v0, "/proc/auto_comment"

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v11, "/proc/reset_rwc"

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    const-string v12, "/proc/reset_history"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    const-string v13, "/data/system/users/service/data/eRR.p"

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/io/File;

    const-string v14, "/data/log/dumpstate_debug_history.lst"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    const-string v15, "BootReceiver"

    move-object/from16 v16, v2

    const-string/jumbo v2, "logLastKmsg - Start"

    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Landroid/text/format/Time;->setToNow()V

    const-string/jumbo v2, "ro.boot.hardware"

    move-object/from16 v17, v8

    const/4 v8, 0x0

    invoke-static {v2, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/server/BootReceiver;->-$$Nest$mproc_reset_reason()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v19, v6

    const-string v6, "%Y%m%d_%H%M%S"

    invoke-virtual {v14, v6}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v20

    move-object/from16 v21, v11

    const-string/jumbo v11, "s5e"

    move-object/from16 v22, v10

    const-string/jumbo v10, "exynos"

    move-object/from16 v23, v13

    const-string v13, ".log.gz"

    move-object/from16 v24, v12

    const-string/jumbo v12, "_"

    move-object/from16 v25, v5

    const-string v5, "/data/log/dumpstate_lastkmsg_"

    if-eqz v20, :cond_2

    move-object/from16 v20, v7

    const/16 v7, 0x400

    move-object/from16 v26, v9

    const/4 v9, 0x0

    :try_start_0
    invoke-static {v0, v7, v9}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_1

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-ne v7, v9, :cond_0

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BootReceiver;->logFileKernel:Ljava/lang/String;

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BootReceiver;->logFileKernel:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "readTextFile error"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "Reset_RWC"

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v12, v8, v13}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BootReceiver;->logFileKernel:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v20, v7

    move-object/from16 v26, v9

    invoke-static {v5, v6, v12, v8, v13}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BootReceiver;->logFileKernel:Ljava/lang/String;

    :goto_2
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/android/server/BootReceiver;->-$$Nest$sfgetlogFileKernel()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "sys.boot.debug_history"

    invoke-static {v0}, Lcom/android/server/BootReceiver;->waitForProperty(Ljava/lang/String;)V

    const-string/jumbo v0, "sys.boot.errp"

    invoke-static {v0}, Lcom/android/server/BootReceiver;->waitForProperty(Ljava/lang/String;)V

    const/4 v6, 0x0

    :try_start_1
    const-string v0, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "========================================================\n"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fout:Ljava/io/FileOutputStream;

    new-instance v3, Ljava/util/zip/ZipOutputStream;

    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fout:Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v4, Ljava/util/zip/ZipEntry;

    const-string/jumbo v9, "dumpstate_lastkmsg.lst"

    invoke-direct {v4, v9}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-static/range {v16 .. v16}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-static/range {v16 .. v16}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-static/range {v16 .. v16}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    const-string v0, "\n[Kernel version]: "

    invoke-static/range {v16 .. v16}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->isFile()Z

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string/jumbo v4, "unknown"

    if-eqz v0, :cond_3

    :try_start_3
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v12, v26

    invoke-direct {v9, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    :try_start_4
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v9, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v12, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v3, v12, v6, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v8, v9

    goto/16 :goto_1a

    :catch_1
    move-exception v0

    goto/16 :goto_10

    :catchall_1
    move-exception v0

    :goto_4
    const/4 v8, 0x0

    goto/16 :goto_1a

    :catch_2
    move-exception v0

    :goto_5
    const/4 v9, 0x0

    goto/16 :goto_10

    :cond_3
    :try_start_5
    invoke-static/range {v16 .. v16}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v9, 0x0

    :cond_4
    :try_start_6
    const-string/jumbo v0, "[Build Fingerprint]: "

    invoke-static/range {v16 .. v16}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    const-string/jumbo v0, "ro.build.fingerprint"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v16 .. v16}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/server/BootReceiver;->is_store_lastkmsg()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_5

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/FileInputStream;

    move-object/from16 v4, v20

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    goto :goto_6

    :cond_5
    new-instance v0, Ljava/io/FileInputStream;

    move-object/from16 v4, v25

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    :goto_6
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_6

    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v3, v4, v6, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_6

    :cond_6
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_7

    :cond_7
    const-string v0, "== not found /proc/last_kmsg sysfs\n"

    invoke-static/range {v16 .. v16}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-static/range {v16 .. v16}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-static/range {v16 .. v16}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    :goto_7
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/io/FileInputStream;

    move-object/from16 v4, v24

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string/jumbo v4, "eRR.p"

    invoke-direct {v0, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    :goto_8
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_8

    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v3, v4, v6, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_8

    :cond_8
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :cond_9
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/io/FileInputStream;

    move-object/from16 v4, v23

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string/jumbo v4, "dumpstate_debug_history.lst"

    invoke-direct {v0, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    :goto_9
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_a

    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v3, v4, v6, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_9

    :cond_a
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :cond_b
    invoke-static {}, Lcom/android/server/BootReceiver;->is_store_lastkmsg()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_17

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->isFile()Z

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string/jumbo v4, "MP"

    if-eqz v0, :cond_d

    :try_start_7
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Ljava/io/FileInputStream;

    move-object/from16 v7, v22

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string/jumbo v7, "dumpstate_auto_comment.lst"

    invoke-direct {v0, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    :goto_a
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v0, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_c

    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v3, v7, v6, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_a

    :cond_c
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :cond_d
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/io/FileInputStream;

    move-object/from16 v7, v21

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string/jumbo v7, "history_of_auto_comment.txt"

    invoke-direct {v0, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    :goto_b
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v0, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_e

    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v3, v7, v6, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_b

    :cond_e
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :cond_f
    sget-object v0, Lcom/android/server/BootReceiver;->storeExtraInfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string/jumbo v4, "store_extra_info.lst"

    invoke-direct {v0, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    sget-object v0, Lcom/android/server/BootReceiver;->storeExtraInfo:Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-static {}, Lcom/android/server/BootReceiver;->-$$Nest$sfputstoreExtraInfo()V

    :cond_10
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/io/FileInputStream;

    move-object/from16 v4, v19

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string/jumbo v4, "reset_summary.html"

    invoke-direct {v0, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    :goto_c
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_11

    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v3, v4, v6, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_c

    :cond_11
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :cond_12
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljava/io/FileInputStream;

    move-object/from16 v4, v17

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string/jumbo v4, "ocimem.lst"

    invoke-direct {v0, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    :goto_d
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_13

    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v3, v4, v6, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_d

    :cond_13
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :cond_14
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_15

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v4, :cond_17

    :cond_15
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    invoke-static {v0, v3}, Lcom/android/server/BootReceiver;->-$$Nest$mlogLastAboxMsg(Lcom/android/server/BootReceiver;Ljava/util/zip/ZipOutputStream;)V

    sget-object v0, Lcom/android/server/BootReceiver;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_16

    const-string/jumbo v0, "Send lastaboxmsg"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/BootReceiver;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "lastaboxmsg=1"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_e

    :cond_16
    const-string/jumbo v0, "mAudioManager is NULL skip lastaboxmsg"

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_17
    :goto_e
    :try_start_8
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    :cond_18
    if-eqz v9, :cond_19

    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    :cond_19
    :try_start_a
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :catch_5
    :try_start_b
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fout:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1d

    :goto_f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_11

    :catchall_2
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_4

    :catch_6
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_5

    :goto_10
    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "logLastKmsg - File copy error"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    :catch_7
    :cond_1a
    if-eqz v9, :cond_1b

    :try_start_e
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    :catch_8
    :cond_1b
    if-eqz v3, :cond_1c

    :try_start_f
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    :catch_9
    :cond_1c
    :try_start_10
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fout:Ljava/io/FileOutputStream;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    if-eqz v0, :cond_1d

    goto :goto_f

    :catch_a
    :cond_1d
    :goto_11
    const/16 v2, 0x3ef

    const/16 v3, 0x3e8

    const/16 v4, 0x1a0

    :try_start_11
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    goto :goto_12

    :catch_b
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "dumpstate_lastkmsg - getCanonicalPath error"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    new-instance v7, Ljava/io/File;

    const-string v0, "/data/log/dumpstate_latest_lastkmsg.log.gz"

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_12
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :try_start_13
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :goto_13
    :try_start_14
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    const/16 v9, 0x800

    invoke-virtual {v8, v0, v6, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    const/4 v9, -0x1

    if-eq v0, v9, :cond_1e

    iget-object v9, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    invoke-virtual {v5, v9, v6, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_13

    :catchall_3
    move-exception v0

    move-object/from16 v18, v5

    goto :goto_19

    :catch_c
    move-exception v0

    move-object/from16 v18, v5

    goto :goto_16

    :cond_1e
    :try_start_15
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d

    :catch_d
    :try_start_16
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_11

    goto :goto_17

    :catchall_4
    move-exception v0

    :goto_14
    const/16 v18, 0x0

    goto :goto_19

    :catch_e
    move-exception v0

    :goto_15
    const/16 v18, 0x0

    goto :goto_16

    :catchall_5
    move-exception v0

    const/4 v8, 0x0

    goto :goto_14

    :catch_f
    move-exception v0

    const/4 v8, 0x0

    goto :goto_15

    :goto_16
    :try_start_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "latest LastKmsg - File copy error"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    if-eqz v8, :cond_1f

    :try_start_18
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10

    :catch_10
    :cond_1f
    if-eqz v18, :cond_20

    :try_start_19
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_11

    :catch_11
    :cond_20
    :goto_17
    :try_start_1a
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_12

    goto :goto_18

    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dumpstate_latest_lastkmsg - getCanonicalPath error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    const-string/jumbo v0, "logLastKmsg - Save Complete"

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_6
    move-exception v0

    :goto_19
    if-eqz v8, :cond_21

    :try_start_1b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_13

    :catch_13
    :cond_21
    if-eqz v18, :cond_22

    :try_start_1c
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_14

    :catch_14
    :cond_22
    throw v0

    :goto_1a
    :try_start_1d
    iget-object v2, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_15

    :catch_15
    :cond_23
    if-eqz v8, :cond_24

    :try_start_1e
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_16

    :catch_16
    :cond_24
    if-eqz v3, :cond_25

    :try_start_1f
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_17

    :catch_17
    :cond_25
    :try_start_20
    iget-object v1, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fout:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_18

    :catch_18
    :cond_26
    throw v0
.end method

.method public final run()V
    .locals 10

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "BootReceiver"

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "trimLastKmsg - logFolder mkdir failed"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/server/BootReceiver$Dump;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x5

    const-string/jumbo v7, "lastkmsg"

    invoke-direct {v2, v6, v7, v5}, Lcom/android/server/BootReceiver$Dump;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/BootReceiver$Dump;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v6, "latest_lastkmsg"

    invoke-direct {v2, v3, v6, v5}, Lcom/android/server/BootReceiver$Dump;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/BootReceiver$Dump;

    :try_start_0
    iget-object v7, v6, Lcom/android/server/BootReceiver$Dump;->fileList:Ljava/util/List;

    iget v8, v6, Lcom/android/server/BootReceiver$Dump;->listMax:I

    iget-object v9, v6, Lcom/android/server/BootReceiver$Dump;->dumpInFix:Ljava/lang/String;

    invoke-static {v1, v7, v8, v9}, Lcom/android/server/BootReceiver;->_trimADumpFile([Ljava/io/File;Ljava/util/List;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "trim"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v6, Lcom/android/server/BootReceiver$Dump;->dumpInFix:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " error"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->logLastKmsg()V

    iput-boolean v3, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->isSaveLastkmsgDone:Z

    return-void
.end method
