.class public final synthetic Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;)V

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
