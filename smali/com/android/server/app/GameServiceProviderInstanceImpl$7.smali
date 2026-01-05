.class public final Lcom/android/server/app/GameServiceProviderInstanceImpl$7;
.super Landroid/service/games/IGameSessionController$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-direct {p0}, Landroid/service/games/IGameSessionController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final restartGame(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/service/games/IGameSessionController$Stub;->restartGame_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$7;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final takeScreenshot(ILcom/android/internal/infra/AndroidFuture;)V
    .locals 2

    invoke-virtual {p0}, Landroid/service/games/IGameSessionController$Stub;->takeScreenshot_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$7;ILcom/android/internal/infra/AndroidFuture;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
