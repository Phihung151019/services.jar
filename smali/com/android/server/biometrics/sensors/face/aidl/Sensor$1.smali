.class public final Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/sensors/UserSwitchProvider;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

.field public final synthetic val$lockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final synthetic val$provider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->val$lockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->val$provider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    return-void
.end method


# virtual methods
.method public final getStartUserClient(I)Lcom/android/server/biometrics/sensors/StartUserClient;
    .locals 12

    iget-object v11, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    iget-object v1, v11, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    new-instance v8, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    iget-object v2, v11, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    iget-object v3, v11, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v6, v11, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutCache;

    iget-object v5, v11, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    check-cast v5, Lcom/android/server/biometrics/log/BiometricContextProvider;

    iget-object v5, v5, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    new-instance v9, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;

    invoke-direct {v9, p0, v1, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;II)V

    invoke-virtual {v11}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getFaceUtilsInstance()Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v10

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->val$lockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move v4, v1

    move-object v1, v8

    move-object v8, v5

    move v5, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricScheduler;IILcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;Lcom/android/server/biometrics/sensors/face/FaceUtils;)V

    move-object v8, v1

    move v1, v4

    iget-object v2, v11, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLockoutHalImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;

    iput-object v2, v8, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutHalImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "UserAwareBiometricScheduler.UserSwitchCallback getStartUserClient("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Sensor"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda3;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->val$provider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-direct {v9, v11, v8, v1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;ILcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)V

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceStartUserClient;

    move-object v2, v1

    iget-object v1, v11, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    move-object v3, v2

    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda4;

    const/4 v5, 0x0

    invoke-direct {v2, v5, v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    move-object v0, v3

    iget-object v3, v11, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mToken:Landroid/os/IBinder;

    iget-object v5, v11, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v5, v5, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v6

    iget-object v7, v11, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move v4, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/face/aidl/FaceStartUserClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda4;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda3;)V

    return-object v0
.end method

.method public final getStopUserClient(I)Lcom/android/server/biometrics/sensors/StopUserClient;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UserAwareBiometricScheduler.UserSwitchCallback getStopUserClient("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Sensor"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceStopUserClient;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v4, v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    iget-object v5, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mToken:Landroid/os/IBinder;

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v7, v1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-static {v3}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    new-instance v10, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;)V

    move v6, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/server/biometrics/sensors/StopUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;)V

    return-object v2
.end method
