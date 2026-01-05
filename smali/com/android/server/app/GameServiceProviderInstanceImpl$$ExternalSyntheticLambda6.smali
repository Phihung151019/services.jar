.class public final synthetic Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/app/GameSessionRecord;

.field public final synthetic f$3:Landroid/service/games/GameSessionViewHostConfiguration;

.field public final synthetic f$4:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;ILcom/android/server/app/GameSessionRecord;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    iput p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$1:I

    iput-object p3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$2:Lcom/android/server/app/GameSessionRecord;

    iput-object p4, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$3:Landroid/service/games/GameSessionViewHostConfiguration;

    iput-object p5, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$4:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    iget v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$1:I

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$2:Lcom/android/server/app/GameSessionRecord;

    iget-object v3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$3:Landroid/service/games/GameSessionViewHostConfiguration;

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$4:Lcom/android/internal/infra/AndroidFuture;

    check-cast p1, Landroid/service/games/IGameSessionService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/service/games/CreateGameSessionRequest;

    iget-object v2, v2, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v1, v2}, Landroid/service/games/CreateGameSessionRequest;-><init>(ILjava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionController:Lcom/android/server/app/GameServiceProviderInstanceImpl$7;

    invoke-interface {p1, v0, v4, v3, p0}, Landroid/service/games/IGameSessionService;->create(Landroid/service/games/IGameSessionController;Landroid/service/games/CreateGameSessionRequest;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method
