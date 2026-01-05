.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    return-void
.end method


# virtual methods
.method public final onDisplayOff()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->screenOff()V

    return-void
.end method

.method public final onDisplayOn()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->screenOn()V

    return-void
.end method
