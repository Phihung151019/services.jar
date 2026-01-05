.class public final Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mGnssMeasurementRequest:Landroid/location/GnssMeasurementRequest;

.field public final mIdentity:Landroid/location/util/identity/CallerIdentity;

.field public final mRegistered:Z


# direct methods
.method public constructor <init>(ZLandroid/location/util/identity/CallerIdentity;Landroid/location/GnssMeasurementRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;->mRegistered:Z

    iput-object p2, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    iput-object p3, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;->mGnssMeasurementRequest:Landroid/location/GnssMeasurementRequest;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;->mRegistered:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "gnss measurements +registration "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;->mGnssMeasurementRequest:Landroid/location/GnssMeasurementRequest;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "gnss measurements -registration "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
