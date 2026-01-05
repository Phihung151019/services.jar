.class public final Lcom/android/server/chimera/ppn/QuickSwap$QuickSwapHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/ppn/QuickSwap;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/ppn/QuickSwap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/chimera/ppn/QuickSwap$QuickSwapHandler;->this$0:Lcom/android/server/chimera/ppn/QuickSwap;

    iget-object p1, p1, Lcom/android/server/chimera/ppn/QuickSwap;->mQuickSwapThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/chimera/ppn/QuickSwap$QuickSwapHandler;->this$0:Lcom/android/server/chimera/ppn/QuickSwap;

    if-nez p1, :cond_1

    const-wide/32 v1, 0x200000

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/chimera/ppn/QuickSwap;->doQuickSwap(IJ)V

    return-void

    :cond_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/chimera/ppn/QuickSwap;->doQuickSwap(IJ)V

    return-void
.end method
