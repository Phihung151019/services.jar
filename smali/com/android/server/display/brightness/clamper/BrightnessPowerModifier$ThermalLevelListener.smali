.class public final Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;
.super Landroid/os/IThermalEventListener$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mStarted:Z

.field public mThermalService:Landroid/os/IThermalService;

.field public final synthetic this$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mStarted:Z

    const-string/jumbo p1, "thermalservice"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mThermalService:Landroid/os/IThermalService;

    return-void
.end method


# virtual methods
.method public final notifyThrottling(Landroid/os/Temperature;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const-string v0, "Activating pmic monitor due to thermal state:"

    const-string v1, "BrightnessPowerClamper"

    invoke-static {p1, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    iget-object v0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    iget-object v0, v0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
