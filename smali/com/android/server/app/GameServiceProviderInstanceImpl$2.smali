.class public final Lcom/android/server/app/GameServiceProviderInstanceImpl$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$2;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    return-void
.end method


# virtual methods
.method public final onBinderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$2;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
