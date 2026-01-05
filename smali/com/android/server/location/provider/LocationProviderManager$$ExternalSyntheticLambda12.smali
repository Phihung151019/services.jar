.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/provider/LocationProviderManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/location/provider/LocationProviderManager;

    return-void
.end method


# virtual methods
.method public final onLocationPowerSaveModeChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda13;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda13;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method
