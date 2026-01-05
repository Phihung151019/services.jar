.class public final Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final synthetic val$client:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

.field public final synthetic val$requestId:J

.field public final synthetic val$sensorId:I

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IIJLcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$userId:I

    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$sensorId:I

    iput-wide p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$requestId:J

    iput-object p6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$client:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    return-void
.end method


# virtual methods
.method public final onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 7

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget-object p1, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda0;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$client:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$userId:I

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$sensorId:I

    iget-wide v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$requestId:J

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;IIJLcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 6

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget-object p1, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda1;

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$sensorId:I

    iget-wide v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$requestId:J

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$userId:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;IIJ)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
