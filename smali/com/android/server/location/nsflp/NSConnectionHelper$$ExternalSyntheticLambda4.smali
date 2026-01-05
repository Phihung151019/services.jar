.class public final synthetic Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/nsflp/NSConnectionHelper;

.field public final synthetic f$1:Landroid/location/LocationConstants$STATE_TYPE;

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/nsflp/NSConnectionHelper;Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/location/nsflp/NSConnectionHelper;

    iput-object p2, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda4;->f$1:Landroid/location/LocationConstants$STATE_TYPE;

    iput-object p3, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda4;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/location/nsflp/NSConnectionHelper;

    iget-object v1, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda4;->f$1:Landroid/location/LocationConstants$STATE_TYPE;

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda4;->f$2:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1, p0}, Landroid/location/INSLocationManager;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo v0, "NSConnectionHelper"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
