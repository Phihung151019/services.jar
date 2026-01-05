.class public final Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;
.super Landroid/hardware/SensorManager$DynamicSensorCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/SpatializerHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SpatializerHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-direct {p0}, Landroid/hardware/SensorManager$DynamicSensorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDynamicSensorConnected(Landroid/hardware/Sensor;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->postInitSensors()V

    return-void
.end method

.method public final onDynamicSensorDisconnected(Landroid/hardware/Sensor;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->postInitSensors()V

    return-void
.end method
