.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$7$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService$7;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda25;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService$7;Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda25;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$7$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityTaskManagerService$7;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$7$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda25;

    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$7$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda25;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$7$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityTaskManagerService$7;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda25;->run()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$7;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
