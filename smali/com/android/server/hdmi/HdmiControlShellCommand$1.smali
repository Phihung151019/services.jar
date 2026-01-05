.class public final Lcom/android/server/hdmi/HdmiControlShellCommand$1;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlShellCommand;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlShellCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand$1;->this$0:Lcom/android/server/hdmi/HdmiControlShellCommand;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand$1;->this$0:Lcom/android/server/hdmi/HdmiControlShellCommand;

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " done ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlShellCommand$1;->this$0:Lcom/android/server/hdmi/HdmiControlShellCommand;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1

    const/4 v2, 0x7

    if-eq p1, v2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "Communication Failed"

    goto :goto_0

    :cond_1
    const-string v2, "Incorrect mode"

    goto :goto_0

    :cond_2
    const-string v2, "Exception"

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "Target not available"

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "Source not available"

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "Timeout"

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "Success"

    :goto_0
    const-string v3, ")"

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand$1;->this$0:Lcom/android/server/hdmi/HdmiControlShellCommand;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand$1;->this$0:Lcom/android/server/hdmi/HdmiControlShellCommand;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
