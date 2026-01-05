.class public final synthetic Lcom/android/server/wm/RemoteDisplayChangeController$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RemoteDisplayChangeController$1;

.field public final synthetic f$1:Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;

.field public final synthetic f$2:Landroid/window/WindowContainerTransaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RemoteDisplayChangeController$1;Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RemoteDisplayChangeController$1;

    iput-object p2, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;

    iput-object p3, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1$$ExternalSyntheticLambda0;->f$2:Landroid/window/WindowContainerTransaction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RemoteDisplayChangeController$1;

    iget-object v1, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;

    iget-object p0, p0, Lcom/android/server/wm/RemoteDisplayChangeController$1$$ExternalSyntheticLambda0;->f$2:Landroid/window/WindowContainerTransaction;

    iget-object v0, v0, Lcom/android/server/wm/RemoteDisplayChangeController$1;->this$0:Lcom/android/server/wm/RemoteDisplayChangeController;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/RemoteDisplayChangeController;->continueDisplayChange(Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method
