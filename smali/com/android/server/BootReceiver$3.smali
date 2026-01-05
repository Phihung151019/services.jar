.class public final Lcom/android/server/BootReceiver$3;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BootReceiver;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$isLockedBootCompleted:Z


# direct methods
.method public constructor <init>(Lcom/android/server/BootReceiver;ZLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BootReceiver$3;->this$0:Lcom/android/server/BootReceiver;

    iput-boolean p2, p0, Lcom/android/server/BootReceiver$3;->val$isLockedBootCompleted:Z

    iput-object p3, p0, Lcom/android/server/BootReceiver$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 26

    move-object/from16 v1, p0

    const-string/jumbo v3, "MP"

    const/4 v7, 0x1

    iget-boolean v0, v1, Lcom/android/server/BootReceiver$3;->val$isLockedBootCompleted:Z

    const-string v8, "BootReceiver"

    if-eqz v0, :cond_33

    sget v0, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v9, "/cache/log"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/android/server/BootReceiver$2;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v9}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v9, v0

    if-nez v9, :cond_0

    goto :goto_2

    :cond_0
    array-length v9, v0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_3

    aget-object v11, v0, v10

    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_1

    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/data/log/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Move from /cache/log/ to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v12}, Lcom/android/server/BootReceiver;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/2addr v10, v7

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_2
    const-string/jumbo v0, "No dumpstate files found in /cache/log"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Can\'t move "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_4
    iget-object v9, v1, Lcom/android/server/BootReceiver$3;->this$0:Lcom/android/server/BootReceiver;

    iget-object v1, v1, Lcom/android/server/BootReceiver$3;->val$context:Landroid/content/Context;

    const-string v0, "/cache/log/eRR.p"

    const-string v10, "/data/system/users/service/data/eRR.p"

    invoke-static {v0, v10}, Lcom/android/server/BootReceiver;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sys.fs.checkpoint"

    const-string v10, ""

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v13, 0x0

    if-eqz v11, :cond_4

    invoke-static {v0, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v0, "ro.boottime.resetreason"

    const-wide/16 v14, 0x0

    invoke-static {v0, v14, v15}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    cmp-long v0, v16, v14

    const-string v11, "\n"

    const-string/jumbo v14, "sys.boot.errp"

    const-string/jumbo v15, "ctl.restart"

    const/16 v16, 0x6

    const-string/jumbo v2, "resetreason"

    const-string v4, "0"

    const-string/jumbo v13, "sys.reset_reason"

    if-nez v0, :cond_15

    new-instance v0, Ljava/io/File;

    move/from16 v18, v7

    const-string v7, "/proc/reset_reason"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    const-string v6, "/proc/store_lastkmsg"

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_5

    const-string v0, "Can\'t find PROC_RESET_REASON"

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_5
    const/16 v6, 0x400

    :try_start_1
    invoke-static {v0, v6, v11}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "readTextFile error"

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_6

    const-string/jumbo v0, "resetString is null"

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "NA"

    goto :goto_6

    :cond_6
    const-string/jumbo v5, "resetString = "

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_7

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v5

    const-string v6, "K|"

    const-string/jumbo v7, "N|"

    if-nez v5, :cond_b

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_7
    const/4 v5, -0x1

    goto :goto_8

    :sswitch_0
    const-string/jumbo v5, "RP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_7

    :cond_8
    const/4 v5, 0x2

    goto :goto_8

    :sswitch_1
    const-string/jumbo v5, "NP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_7

    :cond_9
    move/from16 v5, v18

    goto :goto_8

    :sswitch_2
    const-string v5, "BP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    :goto_8
    packed-switch v5, :pswitch_data_0

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sput v18, Lcom/android/server/BootReceiver;->reset:I

    goto :goto_9

    :pswitch_0
    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    sput v19, Lcom/android/server/BootReceiver;->reset:I

    :goto_9
    invoke-static {v15, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    :goto_a
    const/4 v5, -0x1

    goto :goto_b

    :sswitch_3
    const-string/jumbo v5, "WP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_a

    :cond_c
    move/from16 v5, v16

    goto :goto_b

    :sswitch_4
    const-string/jumbo v5, "TP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_a

    :cond_d
    const/4 v5, 0x5

    goto :goto_b

    :sswitch_5
    const-string/jumbo v5, "SP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_a

    :cond_e
    const/4 v5, 0x4

    goto :goto_b

    :sswitch_6
    const-string/jumbo v5, "PP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_a

    :cond_f
    const/4 v5, 0x3

    goto :goto_b

    :sswitch_7
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_a

    :cond_10
    const/4 v5, 0x2

    goto :goto_b

    :sswitch_8
    const-string v5, "KP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_a

    :cond_11
    move/from16 v5, v18

    goto :goto_b

    :sswitch_9
    const-string v5, "DP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_a

    :cond_12
    const/4 v5, 0x0

    :goto_b
    packed-switch v5, :pswitch_data_1

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    sput v19, Lcom/android/server/BootReceiver;->reset:I

    goto :goto_c

    :pswitch_1
    const/16 v19, 0x0

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sput v19, Lcom/android/server/BootReceiver;->reset:I

    goto :goto_c

    :pswitch_2
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sput v18, Lcom/android/server/BootReceiver;->reset:I

    :goto_c
    sget v0, Lcom/android/server/BootReceiver;->reset:I

    move/from16 v5, v18

    if-eq v0, v5, :cond_13

    invoke-virtual {v9}, Lcom/android/server/BootReceiver;->isNotRescueParty()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    invoke-static {v15, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    :goto_d
    move-object/from16 v22, v1

    move-object v7, v3

    move-object/from16 v24, v4

    move-object/from16 v21, v12

    :goto_e
    const/4 v1, 0x0

    goto/16 :goto_19

    :cond_15
    invoke-virtual {v9}, Lcom/android/server/BootReceiver;->isNotRescueParty()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {v13, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {v14, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string v6, "/data/log/prev_dump.log"

    invoke-static {v6, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v7, v5, [Ljava/lang/String;

    move-object/from16 v21, v12

    const-string v12, "/data/log/unknown_platform_reset.log"

    invoke-static {v12, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    move-object/from16 v22, v1

    new-array v1, v5, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_19

    move/from16 v19, v5

    const/4 v1, 0x1

    :try_start_2
    new-array v5, v1, [Ljava/nio/file/OpenOption;

    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v1, v5, v19

    invoke-static {v0, v5}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v23, v0

    const/4 v5, 0x2

    :try_start_3
    new-array v0, v5, [Ljava/nio/file/OpenOption;

    sget-object v5, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v5, v0, v19

    sget-object v5, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    const/16 v18, 0x1

    aput-object v5, v0, v18

    invoke-static {v7, v0}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v7, v3

    move-object/from16 v24, v4

    :try_start_4
    invoke-static/range {v23 .. v23}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const-string/jumbo v23, "UTF-8"

    move-object/from16 v25, v0

    invoke-static/range {v23 .. v23}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const-string v0, "Chip ID : .*?\n|androidboot[.]ap_serial=.*? |androidboot[.]serialno=.*? "

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v3, v0, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const-string/jumbo v0, "PF_UR case. Leave prev_dump.log as unknown_platform_reset.log"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4}, Landroid/os/FileUtils;->copyPermissions(Ljava/io/File;Ljava/io/File;)V

    const-string/jumbo v0, "Out of memory: Kill(ed)? process [0-9]+ [(]system_server[)]|Sending (SIGKILL|SIGTERM) to process system_server"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string/jumbo v4, "sys.reset_info"

    if-eqz v3, :cond_16

    :try_start_5
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x5b

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_11

    :cond_16
    const-string/jumbo v0, "unknown"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_f
    :try_start_6
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_16

    :catch_2
    move-exception v0

    goto :goto_15

    :catchall_1
    move-exception v0

    :goto_10
    move-object v3, v0

    goto :goto_13

    :goto_11
    if-eqz v5, :cond_17

    :try_start_8
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_12

    :catchall_2
    move-exception v0

    :try_start_9
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_17
    :goto_12
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_3
    move-exception v0

    move-object v7, v3

    move-object/from16 v24, v4

    goto :goto_10

    :goto_13
    if-eqz v1, :cond_18

    :try_start_a
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_14

    :catchall_4
    move-exception v0

    :try_start_b
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_18
    :goto_14
    throw v3
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    :catch_3
    move-exception v0

    move-object v7, v3

    move-object/from16 v24, v4

    :goto_15
    const-string v1, "Failed to copy prev_dump.log file."

    invoke-static {v8, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    :cond_19
    move-object v7, v3

    move-object/from16 v24, v4

    :goto_16
    const-string/jumbo v0, "P|UR"

    invoke-static {v13, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v15, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_17
    const/16 v20, 0x2

    goto :goto_18

    :cond_1a
    move-object/from16 v22, v1

    move-object v7, v3

    move-object/from16 v24, v4

    move-object/from16 v21, v12

    goto :goto_17

    :goto_18
    sput v20, Lcom/android/server/BootReceiver;->reset:I

    goto/16 :goto_e

    :goto_19
    invoke-static {v13, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1b

    goto/16 :goto_2b

    :cond_1b
    sget v0, Lcom/android/server/BootReceiver;->reset:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    invoke-static {}, Lcom/android/server/BootReceiver;->proc_reset_reason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1c
    const-string/jumbo v0, "We start saveLastkmsg.waitUntilSaveLastkmsgDone( timeout = 30 )"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v9, Lcom/android/server/BootReceiver;->saveLastkmsg:Lcom/android/server/BootReceiver$SaveLastkmsg;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/android/server/BootReceiver$SaveLastkmsg;

    invoke-direct {v0, v9}, Lcom/android/server/BootReceiver$SaveLastkmsg;-><init>(Lcom/android/server/BootReceiver;)V

    iput-object v0, v9, Lcom/android/server/BootReceiver;->saveLastkmsg:Lcom/android/server/BootReceiver$SaveLastkmsg;

    :cond_1d
    const-string/jumbo v0, "saveLastkmsg null and start()"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v9, Lcom/android/server/BootReceiver;->saveLastkmsg:Lcom/android/server/BootReceiver$SaveLastkmsg;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, v9, Lcom/android/server/BootReceiver;->saveLastkmsg:Lcom/android/server/BootReceiver$SaveLastkmsg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_1a
    const/16 v4, 0x1e

    if-ge v1, v4, :cond_1f

    :try_start_c
    iget-boolean v4, v0, Lcom/android/server/BootReceiver$SaveLastkmsg;->isSaveLastkmsgDone:Z

    if-eqz v4, :cond_1e

    move v4, v1

    goto :goto_1b

    :cond_1e
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    const/16 v18, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :catch_4
    move-exception v0

    const-string/jumbo v1, "waitUntilSaveLastkmsgDone error"

    invoke-static {v0, v1, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    const/4 v4, -0x1

    :goto_1b
    const-string/jumbo v0, "We waited saveLastkmsg() for "

    const-string/jumbo v1, "s "

    invoke-static {v4, v0, v1, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    :try_start_d
    invoke-virtual {v9, v3}, Lcom/android/server/BootReceiver;->getDumpFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    const/4 v1, 0x0

    goto :goto_1c

    :catch_5
    const/4 v1, 0x0

    iput-object v1, v9, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    :goto_1c
    sget v0, Lcom/android/server/BootReceiver;->reset:I

    if-nez v0, :cond_22

    iget-boolean v0, v9, Lcom/android/server/BootReceiver;->isCaseByRescueParty:Z

    if-eqz v0, :cond_21

    goto :goto_1d

    :cond_21
    const/4 v0, 0x0

    goto :goto_20

    :cond_22
    :goto_1d
    const-string/jumbo v0, "ro.boot.hardware"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/BootReceiver;->reset:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_26

    const-string/jumbo v1, "exynos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eq v1, v5, :cond_25

    const-string/jumbo v1, "s5e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v5, :cond_23

    goto :goto_1e

    :cond_23
    const-string/jumbo v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v5, :cond_24

    const-string v10, "KERNEL_Q"

    goto :goto_1f

    :cond_24
    const-string/jumbo v1, "mt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v5, :cond_27

    const-string v10, "KERNEL_M"

    goto :goto_1f

    :cond_25
    :goto_1e
    const-string v10, "KERNEL_L"

    goto :goto_1f

    :cond_26
    const/4 v5, 0x2

    if-ne v1, v5, :cond_27

    const-string/jumbo v10, "PLATFORM"

    :cond_27
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    iget-boolean v1, v9, Lcom/android/server/BootReceiver;->isCaseByRescueParty:Z

    const-string v4, "ISRB_BOOT"

    const-string/jumbo v5, "persist.sys.isrb_havesentlog"

    if-eqz v1, :cond_2a

    const-wide/32 v6, 0x186a0

    :try_start_e
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    const-string/jumbo v1, "leave rescueparty errp"

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_6

    move-object/from16 v1, v24

    :try_start_f
    invoke-static {v14, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v15, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/RescueParty;->getRescuePartyReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_7

    const-string/jumbo v6, "persist.sys.rescue_level"

    if-eqz v2, :cond_29

    const/4 v2, 0x0

    :try_start_10
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_7

    const/16 v18, 0x1

    :try_start_11
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v12, "sys.isrblevel.callreboot"

    invoke-static {v12, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_28

    goto :goto_22

    :cond_28
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "persist.sys.enable_isrb"

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "persist.sys.rescue_mode"

    const-string/jumbo v6, "isrb_boot"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_8

    goto :goto_22

    :cond_29
    :try_start_12
    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_7

    goto :goto_21

    :catch_6
    :cond_2a
    move-object/from16 v1, v24

    :catch_7
    :goto_21
    const/4 v7, 0x0

    :catch_8
    :goto_22
    if-nez v7, :cond_32

    const-string v2, ","

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/android/server/RescueParty;->getRescuePartyReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_23

    :cond_2b
    const/4 v5, 0x0

    :goto_23
    if-nez v5, :cond_30

    const-string/jumbo v0, "sys.members.installed"

    const-string/jumbo v4, "UNKNOWN"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, v9, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    if-nez v0, :cond_2c

    move-object/from16 v4, v22

    goto :goto_24

    :cond_2c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.voc.action.SYSTEM_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.voc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.voc.extra.SYSTEM_TYPE"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.voc.extra.RESET_REASON"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/BootReceiver;->uniqueID:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.android.voc.extra.TAG"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.voc.extra.LOG_PATH"

    iget-object v5, v9, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Send to Samsung Members, system type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", reset_reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", log file: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    invoke-static {v4, v1, v11, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "android.permission.DUMP"

    move-object/from16 v4, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_2d
    :goto_24
    move-object/from16 v17, v14

    goto/16 :goto_26

    :cond_2e
    move-object/from16 v4, v22

    const-string v0, "IntentOnly"

    const-string v5, "Ext"

    const-string v6, "CFailLogUpload"

    const-string v7, "DiagMon"

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "samsung_errorlog_agree"

    const/4 v15, 0x0

    invoke-static {v11, v12, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2d

    iget-object v11, v9, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    if-nez v11, :cond_2f

    goto :goto_24

    :cond_2f
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "send broadcast intent to diagmon : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v9, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v9, Lcom/android/server/BootReceiver;->EVENT_ID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v12, v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/android/server/BootReceiver;->EVENT_ID:Ljava/lang/String;

    const-string v11, ";"

    invoke-static {v3, v11, v10}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/server/BootReceiver;->RESULT_CODE:Ljava/lang/String;

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v11, "com.sec.android.diagmonagent.intent.REPORT_ERROR_V2"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v14, "com.sec.android.diagmonagent"

    invoke-virtual {v10, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v14, 0x20

    invoke-virtual {v10, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_13
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v11, v7, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v11, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v15, v6, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v11, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    const-string/jumbo v15, "ServiceID"
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    move-object/from16 v17, v12

    :try_start_14
    const-string/jumbo v12, "ny6xfd3iri"

    invoke-virtual {v14, v15, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v12, v5, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v11, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    const-string v14, "ClientV"

    sget-object v15, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    const-string/jumbo v14, "UiMode"

    invoke-virtual {v12, v14, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v12, "ResultCode"

    iget-object v14, v9, Lcom/android/server/BootReceiver;->RESULT_CODE:Ljava/lang/String;

    invoke-virtual {v1, v12, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v12, "WifiOnlyFeature"

    move-object/from16 v14, v21

    invoke-virtual {v1, v12, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v12, "EventID"

    iget-object v15, v9, Lcom/android/server/BootReceiver;->EVENT_ID:Ljava/lang/String;

    invoke-virtual {v1, v12, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v5, "Tag"

    sget-object v12, Lcom/android/server/BootReceiver;->uniqueID:Ljava/util/UUID;

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v11, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "IntentOnlyMode"

    invoke-virtual {v1, v5, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "Agree"

    const-string v12, "D"

    invoke-virtual {v1, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "LogPath"

    iget-object v5, v9, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "uploadMO"

    invoke-virtual {v10, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v0, 0x20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v4, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    goto :goto_26

    :catch_9
    move-exception v0

    goto :goto_25

    :catch_a
    move-exception v0

    move-object/from16 v17, v12

    :goto_25
    const-string v1, "Exception while sending a bug report."

    invoke-static {v8, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    :cond_30
    move-object/from16 v17, v14

    move-object/from16 v4, v22

    :goto_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "\"REASON\":\""

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_15
    invoke-static {v3}, Lcom/android/server/BootReceiver;->GetResetLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_31

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    :catch_b
    move-exception v0

    goto :goto_28

    :cond_31
    :goto_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/server/BootReceiver;->sendResetLog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_b

    goto :goto_29

    :goto_28
    const-string/jumbo v1, "get reset log error"

    invoke-static {v8, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    :cond_32
    move-object/from16 v17, v14

    :goto_29
    invoke-static/range {v17 .. v17}, Lcom/android/server/BootReceiver;->waitForProperty(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v13, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :cond_33
    :try_start_16
    iget-object v0, v1, Lcom/android/server/BootReceiver$3;->this$0:Lcom/android/server/BootReceiver;

    iget-object v2, v1, Lcom/android/server/BootReceiver$3;->val$context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/server/BootReceiver;->-$$Nest$mlogBootEvents(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_c

    goto :goto_2a

    :catch_c
    move-exception v0

    const-string v2, "Can\'t log boot events"

    invoke-static {v8, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    :try_start_17
    iget-object v0, v1, Lcom/android/server/BootReceiver$3;->val$context:Landroid/content/Context;

    sget v1, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    const-string/jumbo v1, "com.google.android.systemupdater"

    const-string/jumbo v2, "com.google.android.systemupdater.SystemUpdateReceiver"

    invoke-static {v0, v1, v2}, Landroid/provider/Downloads;->removeAllDownloadsByPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_d

    goto :goto_2b

    :catch_d
    move-exception v0

    const-string v1, "Can\'t remove old update packages"

    invoke-static {v8, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2b
    return-void

    :sswitch_data_0
    .sparse-switch
        0x84e -> :sswitch_2
        0x9c2 -> :sswitch_1
        0xa3e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x88c -> :sswitch_9
        0x965 -> :sswitch_8
        0x9a3 -> :sswitch_7
        0xa00 -> :sswitch_6
        0xa5d -> :sswitch_5
        0xa7c -> :sswitch_4
        0xad9 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
