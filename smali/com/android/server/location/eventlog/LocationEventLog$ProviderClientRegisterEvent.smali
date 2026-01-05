.class public final Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;
.super Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mIdentity:Landroid/location/util/identity/CallerIdentity;

.field public final mLocationRequest:Landroid/location/LocationRequest;

.field public final mRegistered:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/location/util/identity/CallerIdentity;Landroid/location/LocationRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;->mRegistered:Z

    iput-object p3, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    iput-object p4, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;->mLocationRequest:Landroid/location/LocationRequest;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;->mRegistered:Z

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;->mProvider:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " provider +registration "

    invoke-static {v1, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;->mLocationRequest:Landroid/location/LocationRequest;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, " provider -registration "

    invoke-static {v1, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
