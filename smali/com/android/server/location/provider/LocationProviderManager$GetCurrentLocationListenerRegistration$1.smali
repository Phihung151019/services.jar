.class public final Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

.field public final synthetic val$locationResult:Landroid/location/LocationResult;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;Landroid/location/LocationResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->val$locationResult:Landroid/location/LocationResult;

    return-void
.end method


# virtual methods
.method public final onPostExecute(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    :cond_0
    return-void
.end method

.method public final operate(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->val$locationResult:Landroid/location/LocationResult;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/LocationResult;->deepCopy()Landroid/location/LocationResult;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->val$locationResult:Landroid/location/LocationResult;

    :goto_0
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;->deliverOnLocationChanged(Landroid/location/LocationResult;Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;)V

    sget-object p1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->val$locationResult:Landroid/location/LocationResult;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/location/LocationResult;->size()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderDeliveredLocations(Ljava/lang/String;ILandroid/location/util/identity/CallerIdentity;)V

    return-void
.end method
