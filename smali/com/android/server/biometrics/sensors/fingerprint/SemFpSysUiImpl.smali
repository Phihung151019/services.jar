.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;


# static fields
.field static final DB_UDFPS_HIDE_AUTH_GUIDE_LAYER_PACKAGES:Ljava/lang/String; = "config_biometric_udfps_flag_hide_auth_guide_layer_packages"


# instance fields
.field public mAllowBackgroundAuthentication:Z

.field public mAllowHideAuthGuidePackage:Z

.field public final mContext:Landroid/content/Context;

.field public final mHasHideAuthGuideFlag:Z

.field public final mIsBiometricPrompt:Z

.field public mIsRequireTouchBlock:Z

.field public final mPackageName:Ljava/lang/String;

.field public final mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field public mSysUiCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl$SysUiCallback;

.field public final mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

.field public mSysUiSessionId:I

.field public mSysUiType:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iput p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mUserId:I

    iput p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiType:I

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iput-boolean p7, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mIsBiometricPrompt:Z

    iput-boolean p8, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mHasHideAuthGuideFlag:Z

    return-void
.end method


# virtual methods
.method public getAttribute()Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    sget-object p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public final handleOnAcquired(II)V
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mIsBiometricPrompt:Z

    const/16 v0, 0xca

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IILandroid/os/Bundle;)V

    invoke-virtual {v2, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiSessionId:I

    invoke-virtual {v2, v1, p0, v0, p2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(Landroid/os/Bundle;III)V

    return-void

    :cond_1
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiSessionId:I

    const/16 p2, 0xc9

    invoke-virtual {v2, v1, p0, p2, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(Landroid/os/Bundle;III)V

    return-void
.end method

.method public handleOnError(II)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    if-ne p1, v0, :cond_0

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiSessionId:I

    const/16 p1, 0xcc

    invoke-virtual {v2, v1, p0, p1, p2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(Landroid/os/Bundle;III)V

    return-void

    :cond_0
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiSessionId:I

    const/16 p2, 0xcb

    invoke-virtual {v2, v1, p0, p2, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(Landroid/os/Bundle;III)V

    return-void
.end method

.method public final onDismissed(I[B)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onError(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAttribute(ILandroid/os/Bundle;)V
    .locals 7

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "config_biometric_udfps_flag_hide_auth_guide_layer_packages"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x1

    const-string v2, "Biometrics/SemSysUiImpl"

    if-eqz p2, :cond_1

    array-length v3, p2

    if-ge v3, v0, :cond_2

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10700b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "can\'t find package resource, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    if-eqz p2, :cond_4

    array-length v3, p2

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v5, p2, v4

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string p2, "ClientExtImpl: specific allowlist attr"

    invoke-static {v2, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v0

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    move p2, v1

    :goto_3
    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mAllowHideAuthGuidePackage:Z

    if-eqz p2, :cond_5

    and-int/lit8 p2, p1, 0x40

    if-eqz p2, :cond_5

    const/16 p2, 0x80

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiType:I

    :cond_5
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_6

    move v1, v0

    :cond_6
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mAllowBackgroundAuthentication:Z

    return-void
.end method

.method public final start()V
    .locals 12

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mIsBiometricPrompt:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mAllowBackgroundAuthentication:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/hardware/biometrics/PromptInfo;

    invoke-direct {v0}, Landroid/hardware/biometrics/PromptInfo;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/PromptInfo;->setAllowBackgroundAuthentication(Z)V

    :goto_0
    move-object v11, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiSessionId:I

    iget v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiType:I

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->getAttribute()Landroid/os/Bundle;

    move-result-object v10

    iget-boolean v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mIsRequireTouchBlock:Z

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;

    iget v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mUserId:I

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mPackageName:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZILjava/lang/String;JLandroid/os/Bundle;Landroid/hardware/biometrics/PromptInfo;)V

    invoke-virtual {v2, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mIsBiometricPrompt:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiSessionId:I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda4;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;II)V

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
