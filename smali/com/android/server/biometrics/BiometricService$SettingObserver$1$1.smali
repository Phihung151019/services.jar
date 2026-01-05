.class public final Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;
.super Landroid/hardware/biometrics/BiometricStateListener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Ljava/lang/Object;

.field public final synthetic val$fingerprintSensorProperties:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricService$SettingObserver$1;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->this$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->val$fingerprintSensorProperties:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricStateListener;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/BiometricService$SettingObserver$2;Landroid/hardware/face/FaceSensorPropertiesInternal;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->this$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->val$fingerprintSensorProperties:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnrollmentsChanged(IIZ)V
    .locals 1

    iget v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->val$fingerprintSensorProperties:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->this$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$2;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$2;->this$0:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnrolledForUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->val$fingerprintSensorProperties:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->this$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1;->this$0:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnrolledForUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
