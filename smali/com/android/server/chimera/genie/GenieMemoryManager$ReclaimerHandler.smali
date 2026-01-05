.class public final Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/genie/GenieMemoryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    iget-object p1, p1, Lcom/android/server/chimera/genie/GenieMemoryManager;->mTimeOutThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    if-eqz v2, :cond_f

    const/16 v3, 0xf

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_c

    const/4 v7, 0x3

    if-eq v2, v5, :cond_7

    if-eq v2, v7, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto/16 :goto_8

    :cond_0
    const-string v2, "GenieMemoryManager"

    const-string/jumbo v5, "UNLOAD_S_LLM_MODEL message handler"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->getInstance()Lcom/android/server/chimera/genie/GenieProcessStatusObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->isGaussModelLoaded()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    iget-object v0, v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    sget v1, Lcom/android/server/chimera/genie/GenieConfigurations;->GENAI_UNLOAD_OOMADJ_THRESHOLD:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "Genie Process uid of "

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "killGenieProcess pkg: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", adj threshold:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "SystemRepositoryDefault"

    invoke-static {v5, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v1, v0, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "GenAI Unload Policy"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/chimera/SystemRepository;->killProcessForChimera(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Exception:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v0, "GenieMemoryManager"

    const-string/jumbo v1, "process killed, remove from LRU list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/chimera/genie/GenieLRUList;->getInstance()Lcom/android/server/chimera/genie/GenieLRUList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_2
    const-string v0, "GenieMemoryManager"

    const-string/jumbo v4, "resetting timer to unload S.LLM"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    iget-object v0, v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget v2, Lcom/android/server/chimera/genie/GenieConfigurations;->GENAI_UNLOAD_MODEL_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_3
    iget-object v0, v1, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    iget-object v0, v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mRbinManager:Lcom/android/server/chimera/genie/RbinManager;

    iget-boolean v1, v0, Lcom/android/server/chimera/genie/RbinManager;->mFeatureEnabled:Z

    if-nez v1, :cond_4

    goto/16 :goto_8

    :cond_4
    iget-object v1, v0, Lcom/android/server/chimera/genie/RbinManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget v2, v0, Lcom/android/server/chimera/genie/RbinManager;->mCount:I

    if-nez v2, :cond_5

    monitor-exit v1

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_5
    sub-int/2addr v2, v6

    iput v2, v0, Lcom/android/server/chimera/genie/RbinManager;->mCount:I

    if-lez v2, :cond_6

    monitor-exit v1

    goto/16 :goto_8

    :cond_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    const-string v2, "/sys/kernel/rbin/refill_mode"

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v0, 0x30

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(I)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    const-string/jumbo v1, "RbinManager"

    const-string v2, "Error writing to the file "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    :goto_2
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :cond_7
    invoke-static {v4, v3, v4, v4}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    move-result v1

    iget v2, v0, Landroid/os/Message;->arg1:I

    sub-int/2addr v1, v2

    invoke-static {}, Lcom/android/server/am/SecLmkdStats;->getTotalCriticalKillCount()I

    move-result v2

    iget v3, v0, Landroid/os/Message;->arg2:I

    sub-int/2addr v2, v3

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    sget-object v5, Lcom/android/server/chimera/genie/GenieMemoryManager;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " lmkdKill : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " lmkdCriticalKill : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/server/chimera/genie/GenieLogger;->sLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_8
    sget-object v3, Lcom/android/server/chimera/genie/GenieLogger;->sDump:Ljava/util/Queue;

    if-nez v3, :cond_8

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    sput-object v3, Lcom/android/server/chimera/genie/GenieLogger;->sDump:Ljava/util/Queue;

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_5

    :cond_8
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_9

    monitor-exit v8

    goto :goto_4

    :cond_9
    sget-object v3, Lcom/android/server/chimera/genie/GenieLogger;->sDump:Ljava/util/Queue;

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_a

    sget-object v3, Lcom/android/server/chimera/genie/GenieLogger;->sDump:Ljava/util/Queue;

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    :cond_a
    sget-object v3, Lcom/android/server/chimera/genie/GenieLogger;->sDump:Ljava/util/Queue;

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget v3, Lcom/android/server/chimera/genie/GenieLogger;->sRequestCount:I

    add-int/2addr v3, v6

    sput v3, Lcom/android/server/chimera/genie/GenieLogger;->sRequestCount:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_b

    sget v0, Lcom/android/server/chimera/genie/GenieLogger;->sReclaimedRequests:I

    add-int/2addr v0, v6

    sput v0, Lcom/android/server/chimera/genie/GenieLogger;->sReclaimedRequests:I

    :cond_b
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_4
    const-string v0, "GenieMemoryManager"

    const-string v3, "Aft GenAI LMKD Kill "

    const-string v4, " LMKD Critical "

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_5
    :try_start_9
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    :cond_c
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimMessage;

    iget-object v2, v0, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimMessage;->mDump:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    iget-wide v8, v0, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimMessage;->mMemToBeReclaimed:J

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object v0

    aget-wide v10, v0, v6

    const/16 v7, 0x1d

    aget-wide v12, v0, v7

    const/4 v7, 0x6

    aget-wide v14, v0, v7

    sub-long v16, v10, v12

    sub-long v6, v16, v14

    const/16 v16, 0x1a

    aget-wide v3, v0, v16

    const/16 v16, 0x1b

    move-wide/from16 v18, v6

    aget-wide v5, v0, v16

    add-long v0, v3, v5

    const-wide/16 v20, 0x2

    div-long v20, v0, v20

    move-wide/from16 v22, v5

    add-long v5, v20, v18

    cmp-long v7, v8, v5

    const-wide/16 v20, 0x0

    if-lez v7, :cond_d

    sub-long v24, v8, v5

    move-wide/from16 v28, v24

    move-wide/from16 v24, v3

    move-wide/from16 v3, v28

    goto :goto_6

    :cond_d
    move-wide/from16 v24, v3

    move-wide/from16 v3, v20

    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    move-wide/from16 v26, v0

    sget-object v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " curAvailable : "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " toReclaim : "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "reclaimTarget: "

    const-string v1, " = targetSize "

    invoke-static {v0, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " - "

    const-string v5, " ("

    move-wide/from16 v6, v18

    invoke-static {v0, v1, v6, v7, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-static {v0, v1, v12, v13, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ")  - "

    move-wide/from16 v7, v26

    invoke-static {v0, v6, v7, v8, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    move-wide/from16 v5, v24

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v22

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieMemoryManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-static {v1, v0, v1, v1}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    move-result v0

    invoke-static {}, Lcom/android/server/am/SecLmkdStats;->getTotalCriticalKillCount()I

    move-result v1

    const/4 v6, 0x2

    move-object/from16 v5, p0

    invoke-virtual {v5, v6, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    cmp-long v0, v3, v20

    if-lez v0, :cond_e

    iget-object v0, v5, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    iget-object v0, v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mMemoryReclaimer:Lcom/android/server/chimera/genie/MemoryReclaimer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Genie Memory Reclaimer Called"

    const-string/jumbo v1, "MemoryReclaimer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_a
    invoke-static {v3, v4, v2}, Lcom/android/server/chimera/genie/MemoryReclaimer;->executeQuickSwap(JLjava/util/ArrayList;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "error excuting command "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    iget-object v0, v5, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    iget-object v1, v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-object v0, v5, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mHasReclaimed:Z

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v5, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_8
    return-void

    :catchall_4
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0

    :cond_e
    const-string v0, "GenieMemoryManager"

    const-string/jumbo v1, "Memory to Reclaim is less, so skipping GenIE: "

    invoke-static {v1, v3, v4, v0}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    iget-object v0, v5, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    invoke-virtual {v0}, Lcom/android/server/chimera/genie/GenieMemoryManager;->setGenieSessionEnd()V

    return-void

    :cond_f
    move-object v5, v1

    iget-object v0, v5, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    invoke-virtual {v0}, Lcom/android/server/chimera/genie/GenieMemoryManager;->setGenieSessionEnd()V

    return-void
.end method
