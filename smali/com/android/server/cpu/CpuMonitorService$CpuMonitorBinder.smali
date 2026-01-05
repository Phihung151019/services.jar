.class public final Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;
.super Landroid/os/Binder;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mPriorityDumper:Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder$1;

.field public final synthetic this$0:Lcom/android/server/cpu/CpuMonitorService;


# direct methods
.method public constructor <init>(Lcom/android/server/cpu/CpuMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;->this$0:Lcom/android/server/cpu/CpuMonitorService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    new-instance p1, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder$1;

    invoke-direct {p1, p0}, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder$1;-><init>(Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;)V

    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;->mPriorityDumper:Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder$1;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;->mPriorityDumper:Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder$1;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/utils/PriorityDump;->dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method
