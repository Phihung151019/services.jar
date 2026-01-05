.class public final Lcom/android/server/HermesService$1;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/HermesService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/HermesService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/HermesService$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/HermesService$1;->this$0:Lcom/android/server/HermesService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lcom/android/server/HermesService$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/HermesService$1;->this$0:Lcom/android/server/HermesService;

    iget-object v0, v0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    invoke-virtual {v0}, Lcom/android/server/HermesHalAdapter;->getBigdataLog()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HERMES#Service"

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/HermesService$1;->this$0:Lcom/android/server/HermesService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "ro.hardware.chipname"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "ro.hardware"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "\r\n"

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Full String : "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-direct {v0, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/android/server/HermesService;->mContext:Landroid/content/Context;

    const-string v3, "HqmManagerService"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/SemHqmManager;

    if-eqz v3, :cond_1

    const-string/jumbo v0, "sendToHQM data : "

    invoke-static {v0, v11, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "GPU"

    const-string/jumbo v7, "ph"

    const/4 v4, 0x0

    const-string v10, ""

    const-string v12, ""

    invoke-virtual/range {v3 .. v12}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "sendHWParamToHQM is failed."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "HQM service is not alive, skip sending a data."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "Hermes bigdata has wrong value."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "Hermes feature has wrong value."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string/jumbo p0, "getBigdataLog is null, skip send bigdata."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :pswitch_0
    :try_start_0
    const-string/jumbo v0, "ro.soc.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/HermesBigdataFunction;->CHECK_CHIPSET_LISTS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/server/HermesBigdataFunction;->unZipDumpstate()V

    invoke-static {}, Lcom/android/server/HermesBigdataFunction;->parseDumpstate()V

    invoke-static {}, Lcom/android/server/HermesBigdataFunction;->cleanDumpstateFiles()V

    iget-object p0, p0, Lcom/android/server/HermesService$1;->this$0:Lcom/android/server/HermesService;

    invoke-static {p0}, Lcom/android/server/HermesService;->-$$Nest$mreportToDiagmon(Lcom/android/server/HermesService;)V
    :try_end_0
    .catch Lcom/android/server/BigdataException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    invoke-static {}, Lcom/android/server/HermesBigdataFunction;->cleanBigdataLogFiles()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/server/BigdataException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    throw p0

    :catch_1
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_INTERRUPTION_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0

    :catch_2
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_6
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_NOT_SUPPORTED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0
    :try_end_2
    .catch Lcom/android/server/BigdataException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Some problem has occured, Err = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/BigdataException;->getErrCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HERMES#Service"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
