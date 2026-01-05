.class public final Lcom/android/server/location/injector/SystemScreenInteractiveHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/injector/SystemScreenInteractiveHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper$1;->this$0:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper$1;->this$0:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    iget-boolean p2, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mIsInteractive:Z

    if-ne p1, p2, :cond_1

    goto :goto_2

    :cond_1
    iput-boolean p1, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mIsInteractive:Z

    const-string/jumbo p2, "screen interactive is now "

    const-string/jumbo v1, "LocationManagerService"

    invoke-static {p2, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;

    iget-object p1, p1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object p2, p1, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    iget-boolean v1, p2, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mReady:Z

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget p2, p2, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mLocationPowerSaveMode:I

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v1, 0x4

    if-eq p2, v1, :cond_3

    goto :goto_1

    :cond_2
    const-string/jumbo p2, "gps"

    iget-object v1, p1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda13;

    const/4 v1, 0x2

    invoke-direct {p2, v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda13;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method
