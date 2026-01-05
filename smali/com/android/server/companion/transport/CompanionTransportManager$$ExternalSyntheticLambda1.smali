.class public final synthetic Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/transport/CompanionTransportManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/transport/CompanionTransportManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/transport/CompanionTransportManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/transport/CompanionTransportManager;

    check-cast p1, Landroid/companion/IOnTransportsChangedListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/transport/CompanionTransportManager;->getAssociationsWithTransport()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/companion/IOnTransportsChangedListener;->onTransportsChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
