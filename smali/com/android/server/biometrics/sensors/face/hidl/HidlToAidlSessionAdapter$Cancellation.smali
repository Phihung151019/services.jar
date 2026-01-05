.class public final Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$Cancellation;
.super Landroid/hardware/biometrics/common/ICancellationSignal$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$Cancellation;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    invoke-direct {p0}, Landroid/hardware/biometrics/common/ICancellationSignal$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$Cancellation;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->cancel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "HidlToAidlSessionAdapter"

    const-string/jumbo v1, "Remote exception when requesting cancel"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
