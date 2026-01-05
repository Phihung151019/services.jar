.class public final Lcom/android/server/app/GameServiceProviderInstanceImpl$5;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 1

    iget-object p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    iget-object p2, p2, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$5;II)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 0

    return-void
.end method

.method public final onProcessDied(II)V
    .locals 2

    iget-object p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    iget-object p2, p2, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$5;II)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
