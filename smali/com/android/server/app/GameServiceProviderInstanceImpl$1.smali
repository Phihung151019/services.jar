.class public final Lcom/android/server/app/GameServiceProviderInstanceImpl$1;
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

    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$1;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/IInterface;)V
    .locals 1

    check-cast p1, Landroid/service/games/IGameService;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$1;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceController:Lcom/android/server/app/GameServiceProviderInstanceImpl$6;

    invoke-interface {p1, p0}, Landroid/service/games/IGameService;->connected(Landroid/service/games/IGameServiceController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "GameServiceProviderInstance"

    const-string v0, "Failed to send connected event"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
