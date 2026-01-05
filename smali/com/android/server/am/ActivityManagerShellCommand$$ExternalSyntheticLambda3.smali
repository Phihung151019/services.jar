.class public final synthetic Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->onFinished(ILandroid/os/Bundle;)V

    return-void
.end method
