.class public final Lcom/android/server/app/GameServiceProviderInstanceImpl$4;
.super Landroid/app/TaskStackListener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$4;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onTaskFocusChanged(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$4;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onTaskRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$4;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
