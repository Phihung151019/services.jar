.class public final synthetic Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:[Ljava/lang/String;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/content/Context;

.field public final synthetic f$5:Landroid/hardware/fingerprint/IFingerprintService;


# direct methods
.method public synthetic constructor <init>(Z[Ljava/lang/String;[Ljava/lang/String;ZLandroid/content/Context;Landroid/hardware/fingerprint/IFingerprintService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;->f$0:Z

    iput-object p2, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;->f$2:[Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;->f$3:Z

    iput-object p5, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;->f$4:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;->f$5:Landroid/hardware/fingerprint/IFingerprintService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;->f$0:Z

    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;->f$2:[Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;->f$3:Z

    iget-object v4, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;->f$4:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;->f$5:Landroid/hardware/fingerprint/IFingerprintService;

    new-instance v5, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;

    invoke-direct {v5, v3}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;-><init>(Z)V

    if-eqz v0, :cond_0

    invoke-virtual {v5, v1}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->addAidlSensors([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v2, v4}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->addHidlSensors([Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    const-string v0, "AuthService"

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0, v5}, Landroid/hardware/fingerprint/IFingerprintService;->registerAuthenticators(Landroid/hardware/fingerprint/FingerprintSensorConfigurations;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo v1, "RemoteException when registering fingerprint authenticators"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->hasSensorConfigurations()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Fingerprint configuration exists, but FingerprintService is null."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
