.class public final Lcom/android/server/biometrics/sensors/SensorOverlays$1;
.super Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic val$client:Lcom/android/server/biometrics/sensors/AcquisitionClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/AcquisitionClient;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/SensorOverlays$1;->val$client:Lcom/android/server/biometrics/sensors/AcquisitionClient;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserCanceled()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays$1;->val$client:Lcom/android/server/biometrics/sensors/AcquisitionClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onUserCanceled()V

    return-void
.end method
