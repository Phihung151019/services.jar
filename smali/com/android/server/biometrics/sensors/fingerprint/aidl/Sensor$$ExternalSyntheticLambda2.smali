.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroid/hardware/biometrics/fingerprint/SensorLocation;

    new-instance p0, Landroid/hardware/biometrics/SensorLocationInternal;

    iget-object v0, p1, Landroid/hardware/biometrics/fingerprint/SensorLocation;->display:Ljava/lang/String;

    iget v1, p1, Landroid/hardware/biometrics/fingerprint/SensorLocation;->sensorLocationX:I

    iget v2, p1, Landroid/hardware/biometrics/fingerprint/SensorLocation;->sensorLocationY:I

    iget p1, p1, Landroid/hardware/biometrics/fingerprint/SensorLocation;->sensorRadius:I

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/hardware/biometrics/SensorLocationInternal;-><init>(Ljava/lang/String;III)V

    return-object p0
.end method
