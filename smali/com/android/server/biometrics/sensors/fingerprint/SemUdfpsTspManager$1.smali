.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;->val$context:Landroid/content/Context;

    const-string/jumbo v0, "fingerprint_screen_lock"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {p0, v2, v3, v0, v1}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v1, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->isFirstApiLevel31orGreater()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "fingerprint_always_on"

    invoke-static {p0, v2, v3, v0, v1}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result p0

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean p0, p1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsLpMode:Z

    if-ne p0, v1, :cond_2

    return-void

    :cond_2
    iput-boolean v1, p1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsLpMode:Z

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->sendCommand(I)V

    return-void
.end method
