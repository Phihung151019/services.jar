.class public final Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$RealInjector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;


# virtual methods
.method public final getBrightnessEvent(I)Lcom/android/server/display/brightness/BrightnessEvent;
    .locals 0

    new-instance p0, Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(I)V

    return-object p0
.end method
