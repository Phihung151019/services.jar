.class public final Lcom/android/server/wm/DisplayPolicy$2;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAppTransitionCancelled:Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;

.field public final mAppTransitionFinished:Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;

.field public final mAppTransitionPending:Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;

.field public final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayPolicy;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>(I)V

    new-instance p1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;

    const/4 p2, 0x1

    invoke-direct {p1, p3, p2, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;-><init>(IILjava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionPending:Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;

    new-instance p1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;

    const/4 p2, 0x2

    invoke-direct {p1, p3, p2, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;-><init>(IILjava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionCancelled:Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;

    new-instance p1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;

    const/4 p2, 0x3

    invoke-direct {p1, p3, p2, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;-><init>(IILjava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionFinished:Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;

    return-void
.end method


# virtual methods
.method public final onAppTransitionCancelledLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionCancelled:Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionFinished:Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAppTransitionPendingLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionPending:Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAppTransitionStartingLocked(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayPolicy$2;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
