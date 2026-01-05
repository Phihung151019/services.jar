.class public final Lcom/android/server/biometrics/BiometricCameraManagerImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mIsCameraAvailable:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorPrivacyManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mIsCameraAvailable:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/android/server/biometrics/BiometricCameraManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricCameraManagerImpl$1;-><init>(Lcom/android/server/biometrics/BiometricCameraManagerImpl;)V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    return-void
.end method
