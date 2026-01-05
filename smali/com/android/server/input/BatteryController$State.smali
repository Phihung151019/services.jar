.class public final Lcom/android/server/input/BatteryController$State;
.super Landroid/hardware/input/IInputDeviceBatteryState;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Landroid/hardware/input/IInputDeviceBatteryState;-><init>()V

    iput p1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    const/4 p1, 0x1

    iput p1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->status:I

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    return-void
.end method

.method public constructor <init>(IJZIF)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/input/IInputDeviceBatteryState;-><init>()V

    iput p1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    iput-wide p2, p0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    iput-boolean p4, p0, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    iput p5, p0, Landroid/hardware/input/IInputDeviceBatteryState;->status:I

    iput p6, p0, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    return-void
.end method

.method public constructor <init>(Landroid/hardware/input/IInputDeviceBatteryState;)V
    .locals 5

    invoke-direct {p0}, Landroid/hardware/input/IInputDeviceBatteryState;-><init>()V

    iget v0, p1, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    iget-wide v1, p1, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    iget-boolean v3, p1, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    iget v4, p1, Landroid/hardware/input/IInputDeviceBatteryState;->status:I

    iget p1, p1, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    iput v0, p0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    iput-wide v1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    iput-boolean v3, p0, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    iput v4, p0, Landroid/hardware/input/IInputDeviceBatteryState;->status:I

    iput p1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    if-nez v0, :cond_0

    const-string/jumbo p0, "State{<not present>}"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "State{time="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
