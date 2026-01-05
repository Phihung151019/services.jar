.class public final Lcom/android/server/am/AppProfiler$CpuBinder$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# instance fields
.field public final synthetic this$1:Lcom/android/server/am/AppProfiler$CpuBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler$CpuBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler$CpuBinder$1;->this$1:Lcom/android/server/am/AppProfiler$CpuBinder;

    return-void
.end method


# virtual methods
.method public final dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 2

    iget-object p3, p0, Lcom/android/server/am/AppProfiler$CpuBinder$1;->this$1:Lcom/android/server/am/AppProfiler$CpuBinder;

    iget-object p3, p3, Lcom/android/server/am/AppProfiler$CpuBinder;->this$0:Lcom/android/server/am/AppProfiler;

    iget-object p3, p3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "cpuinfo"

    invoke-static {p3, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/android/server/am/AppProfiler$CpuBinder$1;->this$1:Lcom/android/server/am/AppProfiler$CpuBinder;

    iget-object p3, p3, Lcom/android/server/am/AppProfiler$CpuBinder;->this$0:Lcom/android/server/am/AppProfiler;

    iget-object p3, p3, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter p3

    if-eqz p4, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$CpuBinder$1;->this$1:Lcom/android/server/am/AppProfiler$CpuBinder;

    iget-object p0, p0, Lcom/android/server/am/AppProfiler$CpuBinder;->this$0:Lcom/android/server/am/AppProfiler;

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/ProcessCpuTracker;->dumpProto(Ljava/io/FileDescriptor;)V

    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/am/AppProfiler$CpuBinder$1;->this$1:Lcom/android/server/am/AppProfiler$CpuBinder;

    iget-object p1, p1, Lcom/android/server/am/AppProfiler$CpuBinder;->this$0:Lcom/android/server/am/AppProfiler;

    iget-object p1, p1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {p1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/AppProfiler$CpuBinder$1;->this$1:Lcom/android/server/am/AppProfiler$CpuBinder;

    iget-object p0, p0, Lcom/android/server/am/AppProfiler$CpuBinder;->this$0:Lcom/android/server/am/AppProfiler;

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    monitor-exit p3

    return-void

    :goto_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
