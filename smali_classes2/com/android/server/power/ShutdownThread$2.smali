.class public final Lcom/android/server/power/ShutdownThread$2;
.super Landroid/content/IIntentReceiver$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ShutdownThread;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$2;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/ShutdownThread$2;->this$0:Lcom/android/server/power/ShutdownThread;

    iget-object p1, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Lcom/android/server/power/ShutdownThread$1;

    new-instance p2, Lcom/android/server/power/ShutdownThread$2$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/power/ShutdownThread$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ShutdownThread;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
