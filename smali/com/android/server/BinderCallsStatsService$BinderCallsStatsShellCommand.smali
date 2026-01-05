.class public final Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mPrintWriter:Ljava/io/PrintWriter;

.field public final synthetic this$0:Lcom/android/server/BinderCallsStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/BinderCallsStatsService;Ljava/io/PrintWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p2, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->mPrintWriter:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final getOutPrintWriter()Ljava/io/PrintWriter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->mPrintWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    return-object p0
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "cpu usage threshold is set to "

    const-string/jumbo v3, "Limit is set to "

    const-string/jumbo v4, "sampling internal is set to "

    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const/4 v6, -0x1

    if-nez p1, :cond_0

    return v6

    :cond_0
    const-string/jumbo v7, "persist.sys.binder_calls_detailed_tracking"

    const-string/jumbo v8, "ShellCommand"

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :goto_0
    move v9, v6

    goto/16 :goto_1

    :sswitch_0
    const-string v9, "--enable-detailed-tracking"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    const/16 v9, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string v9, "--disable-detailed-tracking"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    const/16 v9, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v9, "--enable"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    const/16 v9, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v9, "--set-sampling"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_0

    :cond_4
    const/16 v9, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v9, "--set-limit"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_0

    :cond_5
    const/4 v9, 0x7

    goto :goto_1

    :sswitch_5
    const-string v9, "--dump-worksource-provider"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_0

    :cond_6
    const/4 v9, 0x6

    goto :goto_1

    :sswitch_6
    const-string v9, "--work-source-uid"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_0

    :cond_7
    const/4 v9, 0x5

    goto :goto_1

    :sswitch_7
    const-string v9, "--disable"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_0

    :cond_8
    const/4 v9, 0x4

    goto :goto_1

    :sswitch_8
    const-string v9, "--no-sampling"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_0

    :cond_9
    const/4 v9, 0x3

    goto :goto_1

    :sswitch_9
    const-string v9, "--reset"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_0

    :cond_a
    const/4 v9, 0x2

    goto :goto_1

    :sswitch_a
    const-string v9, "--set-cpu-threshold"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    goto/16 :goto_0

    :cond_b
    move v9, v0

    goto :goto_1

    :sswitch_b
    const-string v9, "--history"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto/16 :goto_0

    :cond_c
    move v9, v1

    :goto_1
    packed-switch v9, :pswitch_data_0

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_0
    const-string p1, "1"

    invoke-static {v7, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    const-string p0, "Detailed tracking enabled"

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_1
    const-string p1, ""

    invoke-static {v7, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    const-string p0, "Detailed tracking disabled"

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_2
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-static {p0}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    goto/16 :goto_3

    :pswitch_3
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->setSamplingInterval(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p0

    const-string p1, "--set-sampling execution failed"

    invoke-static {v8, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :pswitch_4
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->setMaxBinderCallStats(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception p0

    const-string p1, "--set-limit execution failed"

    invoke-static {v8, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :pswitch_5
    iget-object p1, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    iget-object p1, p1, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p1, v0}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    invoke-static {}, Lcom/android/internal/os/AppIdToPackageMap;->getSnapshot()Lcom/android/internal/os/AppIdToPackageMap;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "AppIds of apps that can set the work source:"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->mAppIdTrustlist:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\t- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/os/AppIdToPackageMap;->mapAppId(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->recordAllCallsForWorkSourceUid(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    const-string p0, "Invalid UID: "

    invoke-static {v5, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :pswitch_7
    const/4 p0, 0x0

    invoke-static {p0}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    goto :goto_3

    :pswitch_8
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->setSamplingInterval(I)V

    goto :goto_3

    :pswitch_9
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "BinderCallsStatsService"

    const-string/jumbo v0, "Resetting stats"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    new-array p1, v1, [Z

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    const-string/jumbo p0, "binder_calls_stats reset."

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_a
    :try_start_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->setCpuUsageThreshold(I)Z

    move-result p0

    if-eqz p0, :cond_d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    const-string p1, "--set-cpu-threshold execution failed"

    invoke-static {v8, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :pswitch_b
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0, v5}, Lcom/android/internal/os/BinderCallsStats;->dumpStats(Ljava/io/PrintWriter;)V

    :cond_d
    :goto_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7623b50c -> :sswitch_b
        -0x696fe145 -> :sswitch_a
        -0x60476451 -> :sswitch_9
        -0x4cd89b2d -> :sswitch_8
        -0x49c576b8 -> :sswitch_7
        -0x1fdb9dc6 -> :sswitch_6
        -0x6594f87 -> :sswitch_5
        -0x10ee710 -> :sswitch_4
        0xb1bfa92 -> :sswitch_3
        0x41a27323 -> :sswitch_2
        0x565319ef -> :sswitch_1
        0x79b4630a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "binder_calls_stats commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --reset: Reset stats"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --enable: Enable tracking binder calls"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --disable: Disables tracking binder calls"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --no-sampling: Tracks all calls"

    const-string v1, "  --enable-detailed-tracking: Enables detailed tracking"

    const-string v2, "  --disable-detailed-tracking: Disables detailed tracking"

    const-string v3, "  --work-source-uid <UID>: Track all binder calls from the UID"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  --set-cpu-threshold <threshold>: Set new CPU threshold"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --set-sampling <sampling value>: Set new sampling ratio"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
