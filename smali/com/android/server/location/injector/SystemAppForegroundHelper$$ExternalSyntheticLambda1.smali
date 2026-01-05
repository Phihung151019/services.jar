.class public final synthetic Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/injector/SystemAppForegroundHelper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/injector/SystemAppForegroundHelper;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    iput p2, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda1;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    iget v1, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda1;->f$1:I

    iget-boolean p0, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda1;->f$2:Z

    iget-object v2, v0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

    if-eqz v2, :cond_0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "uid"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "foreground"

    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, v2, Lcom/android/server/location/nsflp/NSPermissionHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object v4, Landroid/location/LocationConstants$STATE_TYPE;->FOREGROUND_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {v2, v4, v3}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, v0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;

    invoke-interface {v2, v1, p0}, Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;->onAppForegroundChanged(IZ)V

    goto :goto_0

    :cond_1
    return-void
.end method
