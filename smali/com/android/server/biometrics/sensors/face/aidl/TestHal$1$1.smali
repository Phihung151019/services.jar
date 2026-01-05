.class public final Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;
.super Landroid/hardware/biometrics/common/ICancellationSignal$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;->this$1:Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;

    invoke-direct {p0}, Landroid/hardware/biometrics/common/ICancellationSignal$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;->this$1:Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onError(BI)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;->this$1:Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onError(BI)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;->this$1:Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onError(BI)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "8a6cd86630181a4df6f20056259ec200ffe39209"

    return-object p0

    :pswitch_0
    const-string p0, "8a6cd86630181a4df6f20056259ec200ffe39209"

    return-object p0

    :pswitch_1
    const-string p0, "8a6cd86630181a4df6f20056259ec200ffe39209"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getInterfaceVersion()I
    .locals 0

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x4

    return p0

    :pswitch_0
    const/4 p0, 0x4

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
