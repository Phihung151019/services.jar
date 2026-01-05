.class public final Lcom/android/server/biometrics/log/ALSProbe$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/log/ALSProbe;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/log/ALSProbe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/log/ALSProbe$1;->this$0:Lcom/android/server/biometrics/log/ALSProbe;

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/biometrics/log/ALSProbe$1;->this$0:Lcom/android/server/biometrics/log/ALSProbe;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/log/ALSProbe;->onNext(F)V

    return-void
.end method
