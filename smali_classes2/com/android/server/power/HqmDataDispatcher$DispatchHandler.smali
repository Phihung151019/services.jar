.class public final Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/HqmDataDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/power/HqmDataDispatcher;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;->this$0:Lcom/android/server/power/HqmDataDispatcher;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Unknown message "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HqmDataDispatcher"

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;->this$0:Lcom/android/server/power/HqmDataDispatcher;

    const-string v0, "DPUC"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/HqmDataDispatcher;->sendDataSetToHqm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
