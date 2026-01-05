.class public final synthetic Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

.field public final synthetic f$1:Landroid/hardware/face/FaceSensorConfigurations;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;Landroid/hardware/face/FaceSensorConfigurations;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/face/FaceSensorConfigurations;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/face/FaceSensorConfigurations;

    sget v1, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->$r8$clinit:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/face/FaceSensorConfigurations;->getSensorInstance()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/hardware/face/FaceSensorConfigurations;->isSingleSensorConfigurationPresent()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/util/Pair;

    invoke-virtual {p0, v2}, Landroid/hardware/face/FaceSensorConfigurations;->getSensorPropForInstance(Ljava/lang/String;)[Landroid/hardware/biometrics/face/SensorProps;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "virtual"

    invoke-virtual {p0, v3}, Landroid/hardware/face/FaceSensorConfigurations;->doesInstanceExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Landroid/hardware/face/FaceSensorConfigurations;->getSensorNameNotForInstance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v2, Landroid/util/Pair;

    invoke-virtual {p0, v3}, Landroid/hardware/face/FaceSensorConfigurations;->getSensorPropForInstance(Ljava/lang/String;)[Landroid/hardware/biometrics/face/SensorProps;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v2

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/util/Pair;

    invoke-virtual {p0, v2}, Landroid/hardware/face/FaceSensorConfigurations;->getSensorPropForInstance(Ljava/lang/String;)[Landroid/hardware/biometrics/face/SensorProps;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {p0}, Landroid/hardware/face/FaceSensorConfigurations;->getResetLockoutRequiresChallenge()Z

    move-result v12

    iget-object p0, v0, Lcom/android/server/biometrics/sensors/face/FaceService;->mFaceProviderFunction:Lcom/android/server/biometrics/sensors/face/FaceService$FaceProviderFunction;

    check-cast p0, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda1;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    new-instance v4, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, [Landroid/hardware/biometrics/face/SensorProps;

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContextProvider;

    move-result-object v11

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    iget-object v10, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-direct/range {v4 .. v12}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;[Landroid/hardware/biometrics/face/SensorProps;Ljava/lang/String;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/log/BiometricContextProvider;Z)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
