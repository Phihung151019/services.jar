.class public final Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;
.super Landroid/hardware/face/FaceServiceReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final numSensors:I

.field public sensorsFinishedRemoving:I

.field public final synthetic val$receiver:Landroid/hardware/face/IFaceServiceReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;Landroid/hardware/face/IFaceServiceReceiver;)V
    .locals 0

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->val$receiver:Landroid/hardware/face/IFaceServiceReceiver;

    invoke-direct {p0}, Landroid/hardware/face/FaceServiceReceiver;-><init>()V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->sensorsFinishedRemoving:I

    iget-object p2, p1, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->numSensors:I

    return-void
.end method


# virtual methods
.method public final onError(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removeAll internalReceiver : error = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vendor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->val$receiver:Landroid/hardware/face/IFaceServiceReceiver;

    invoke-interface {p0, p1, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onError(II)V

    return-void
.end method

.method public final onRemoved(Landroid/hardware/face/Face;I)V
    .locals 3

    if-nez p2, :cond_0

    iget p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->sensorsFinishedRemoving:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->sensorsFinishedRemoving:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "sensorsFinishedRemoving: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->sensorsFinishedRemoving:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", numSensors: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->numSensors:I

    const-string v0, "FaceService"

    invoke-static {p1, p2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->sensorsFinishedRemoving:I

    iget p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->numSensors:I

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;->val$receiver:Landroid/hardware/face/IFaceServiceReceiver;

    new-instance p1, Landroid/hardware/face/Face;

    const-string p2, ""

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, p2, v2, v0, v1}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    invoke-interface {p0, p1, v2}, Landroid/hardware/face/IFaceServiceReceiver;->onRemoved(Landroid/hardware/face/Face;I)V

    :cond_0
    return-void
.end method
