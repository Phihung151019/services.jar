.class public final synthetic Lcom/android/server/location/injector/SystemUserInfoHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/injector/SystemUserInfoHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    return-void
.end method


# virtual methods
.method public final onUserVisibilityChanged(IZ)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    const-string/jumbo v0, "visibility of u"

    const-string v1, " changed to "

    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string/jumbo v1, "visible"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "invisible"

    :goto_0
    const-string/jumbo v2, "LocationManagerService"

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/location/eventlog/LocationEventLog$LocationEnabledEvent;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2, p2}, Lcom/android/server/location/eventlog/LocationEventLog$LocationEnabledEvent;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog$1(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    const/4 v0, 0x4

    invoke-interface {p2, p1, v0}, Lcom/android/server/location/injector/UserInfoHelper$UserListener;->onUserChanged(II)V

    goto :goto_1

    :cond_1
    return-void
.end method
