.class public final synthetic Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/transport/CompanionTransportManager;

.field public final synthetic f$1:Landroid/companion/IOnTransportsChangedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/transport/CompanionTransportManager;Landroid/companion/IOnTransportsChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/transport/CompanionTransportManager;

    iput-object p2, p0, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda0;->f$1:Landroid/companion/IOnTransportsChangedListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/transport/CompanionTransportManager;

    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda0;->f$1:Landroid/companion/IOnTransportsChangedListener;

    check-cast p1, Landroid/companion/IOnTransportsChangedListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, p0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->getAssociationsWithTransport()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/companion/IOnTransportsChangedListener;->onTransportsChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
