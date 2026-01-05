.class public final Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final synthetic val$sensorId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V
    .locals 0

    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->val$sensorId:I

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserSwitching(I)V
    .locals 10

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onUserSwitching: "

    const-string v2, ", "

    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget-object v2, v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mDaemon:Landroid/hardware/biometrics/face/IFace;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->val$sensorId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->val$sensorId:I

    new-instance v7, Landroid/os/Binder;

    invoke-direct {v7}, Landroid/os/Binder;-><init>()V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    iget-object p0, v4, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda4;

    const/4 v8, 0x0

    const/4 v9, 0x1

    move v6, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I)V

    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    move v6, p1

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onUserSwitching: "

    const-string v1, ", "

    invoke-static {v6, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mDaemon:Landroid/hardware/biometrics/face/IFace;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget-object p1, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->val$sensorId:I

    iget-object p1, p1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "sensor is not added yet"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget-object p1, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mIsFirstOnUserSwitching:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mIsFirstOnUserSwitching:Ljava/lang/Boolean;

    if-nez v6, :cond_1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onUserSwitching: skip first event with user 0"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->val$sensorId:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v6, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
