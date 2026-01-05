.class public final Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mListener:Landroid/hardware/input/IInputSensorEventListener;

.field public final mPid:I

.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputSensorEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    iput p2, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mPid:I

    iput-object p3, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mListener:Landroid/hardware/input/IInputSensorEventListener;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Sensor event listener for pid "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mPid:I

    const-string v2, " died."

    const-string v3, "InputManager"

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    iget p0, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mPid:I

    invoke-virtual {v0, p0}, Lcom/android/server/input/InputManagerService;->onSensorEventListenerDied(I)V

    return-void
.end method
