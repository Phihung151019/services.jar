.class public final synthetic Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageListenerRegistration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# virtual methods
.method public final operate(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/location/IGnssNavigationMessageListener;

    const/4 p0, 0x1

    invoke-interface {p1, p0}, Landroid/location/IGnssNavigationMessageListener;->onStatusChanged(I)V

    return-void
.end method
