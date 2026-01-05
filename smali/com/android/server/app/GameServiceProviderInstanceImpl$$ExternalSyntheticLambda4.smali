.class public final synthetic Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/server/app/GameTaskInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameTaskInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/app/GameTaskInfo;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/app/GameTaskInfo;

    check-cast p1, Landroid/service/games/IGameService;

    new-instance v0, Landroid/service/games/GameStartedEvent;

    iget v1, p0, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    iget-object p0, p0, Lcom/android/server/app/GameTaskInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/service/games/GameStartedEvent;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/service/games/IGameService;->gameStarted(Landroid/service/games/GameStartedEvent;)V

    return-void
.end method
