.class public final Lcom/android/server/BinderCallsStatsService;
.super Landroid/os/Binder;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

.field public final mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BinderCallsStats;Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iput-object p2, p0, Lcom/android/server/BinderCallsStatsService;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p1

    const-string/jumbo v0, "binder_calls_stats"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    if-eqz p3, :cond_7

    move v0, p1

    :goto_0
    array-length v1, p3

    if-ge p1, v1, :cond_4

    aget-object v1, p3, p1

    const-string v2, "-a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "-h"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo p0, "dumpsys binder_calls_stats options:"

    const-string p1, "  -a: Verbose"

    const-string p3, "  --work-source-uid <UID>: Dump binder calls from the UID"

    const-string v0, "  --set-cpu-threshold <threshold>: Set new CPU threshold"

    invoke-static {p2, p0, p1, p3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "  --set-sampling <sampling value>: Set new sampling ratio"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --set-limit <limit value>: Set new limit value(default 1500)"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v2, "--work-source-uid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "Currently SEC debugging feature is enabled."

    const-string p1, "It collects the incoming binder transactions depending on sampling ratio per package."

    const-string p3, "And it clears the collected binder stats every 1 or 5 minutes."

    const-string/jumbo v0, "So it can be meaningless to invoke dump() with \'--work-source-uid\'."

    invoke-static {p2, p0, p1, p3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    array-length p1, p3

    if-lez p1, :cond_5

    new-instance v1, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;

    invoke-direct {v1, p0, p2}, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;-><init>(Lcom/android/server/BinderCallsStatsService;Ljava/io/PrintWriter;)V

    sget-object v4, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    sget-object v5, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    move-object v2, p0

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_6

    :goto_2
    return-void

    :cond_5
    move-object v2, p0

    :cond_6
    move p1, v0

    goto :goto_3

    :cond_7
    move-object v2, p0

    :goto_3
    iget-object p0, v2, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-static {}, Lcom/android/internal/os/AppIdToPackageMap;->getSnapshot()Lcom/android/internal/os/AppIdToPackageMap;

    move-result-object p3

    const/4 v0, -0x1

    invoke-virtual {p0, p2, p3, v0, p1}, Lcom/android/internal/os/BinderCallsStats;->dump(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;IZ)V

    iget-object p0, v2, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0, p2}, Lcom/android/internal/os/BinderCallsStats;->dumpStats(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 6

    new-instance v0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;-><init>(Lcom/android/server/BinderCallsStatsService;Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->onHelp()V

    :cond_0
    return p0
.end method
