.class public final Lcom/android/server/LooperStatsService$LooperShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/LooperStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/LooperStatsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LooperStatsService$LooperShellCommand;->this$0:Lcom/android/server/LooperStatsService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 2

    const-string/jumbo v0, "enable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/LooperStatsService$LooperShellCommand;->this$0:Lcom/android/server/LooperStatsService;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/LooperStatsService;->setEnabled(Z)V

    return v1

    :cond_0
    const-string/jumbo v0, "disable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/LooperStatsService$LooperShellCommand;->this$0:Lcom/android/server/LooperStatsService;

    invoke-virtual {p0, v1}, Lcom/android/server/LooperStatsService;->setEnabled(Z)V

    return v1

    :cond_1
    const-string/jumbo v0, "reset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/LooperStatsService$LooperShellCommand;->this$0:Lcom/android/server/LooperStatsService;

    iget-object p0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {p0}, Lcom/android/internal/os/LooperStats;->reset()V

    return v1

    :cond_2
    const-string/jumbo v0, "sampling_interval"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/LooperStatsService$LooperShellCommand;->this$0:Lcom/android/server/LooperStatsService;

    if-lez p1, :cond_3

    iget-object p0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/LooperStats;->setSamplingInterval(I)V

    return v1

    :cond_3
    const-string p0, "Ignored invalid sampling interval (value must be positive): "

    const-string/jumbo v0, "LooperStatsService"

    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final onHelp()V
    .locals 1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "looper_stats commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  enable: Enable collecting stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  disable: Disable collecting stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  sampling_interval: Change the sampling interval."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  reset: Reset stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
