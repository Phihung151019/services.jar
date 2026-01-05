.class public final synthetic Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    return-void
.end method


# virtual methods
.method public final onAppForegroundChanged(IZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda11;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method
