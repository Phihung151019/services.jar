.class public final synthetic Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:J

.field public final synthetic f$7:Landroid/os/Bundle;

.field public final synthetic f$8:Landroid/hardware/biometrics/PromptInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZILjava/lang/String;JLandroid/os/Bundle;Landroid/hardware/biometrics/PromptInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iput p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$3:Z

    iput p5, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$4:I

    iput-object p6, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$5:Ljava/lang/String;

    iput-wide p7, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$6:J

    iput-object p9, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$7:Landroid/os/Bundle;

    iput-object p10, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$8:Landroid/hardware/biometrics/PromptInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v3, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$1:I

    iget v4, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$2:I

    iget-boolean v7, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$3:Z

    iget v8, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$4:I

    iget-object v9, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$5:Ljava/lang/String;

    iget-wide v10, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$6:J

    iget-object v5, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$7:Landroid/os/Bundle;

    iget-object v12, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;->f$8:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v1, v3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->findSessionId(I)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    move-result-object p0

    const-string v13, "BiometricSysUiManager"

    if-nez p0, :cond_0

    const-string/jumbo p0, "show: No exist ID, "

    invoke-static {v3, p0, v13}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiService:Lcom/samsung/android/biometrics/ISemBiometricSysUiService;

    iget-object v6, v1, Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSysUiServiceReceiver:Lcom/android/server/biometrics/SemBiometricSysUiManager$1;

    invoke-interface/range {v2 .. v12}, Lcom/samsung/android/biometrics/ISemBiometricSysUiService;->showBiometricDialog(IILandroid/os/Bundle;Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;ZILjava/lang/String;JLandroid/hardware/biometrics/PromptInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "show: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v13, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    invoke-virtual {v1, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendConnectionError(I)V

    return-void
.end method
