.class public final Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;
.super Landroid/os/IThermalEventListener$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;

.field public mObserverTempSensor:Lcom/android/server/display/config/SensorData;

.field public mStarted:Z

.field public mThermalService:Landroid/os/IThermalService;

.field public final synthetic this$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;

    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mInjector:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;

    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mStarted:Z

    return-void
.end method


# virtual methods
.method public final notifyThrottling(Landroid/os/Temperature;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "New thermal throttling status = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessThermalClamper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    iget-object v0, v0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Skipping thermal throttling notification as monitored sensor: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    iget-object p0, p0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " != notified sensor: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final registerThermalListener()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mInjector:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "thermalservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    const-string v1, "BrightnessThermalClamper"

    if-nez v0, :cond_0

    const-string p0, "Could not observe thermal status. Service not available"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    iget-object v2, v0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    const-string v3, "DISPLAY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xb

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    const-string/jumbo v2, "SKIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x3

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v2, p0, v0}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mStarted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Failed to register thermal status listener"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tempSensor doesn\'t support type: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final stopObserving()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v0, p0}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mStarted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BrightnessThermalClamper"

    const-string v2, "Failed to unregister thermal status listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    return-void
.end method
