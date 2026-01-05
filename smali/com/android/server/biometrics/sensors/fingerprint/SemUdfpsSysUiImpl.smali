.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;
.super Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mCustomIconAttribute:Landroid/os/Bundle;

.field public final mIsKeyguard:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZZ)V

    iput-boolean p9, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsKeyguard:Z

    return-void
.end method


# virtual methods
.method public final getAttribute()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mCustomIconAttribute:Landroid/os/Bundle;

    return-object p0
.end method

.method public final handleOnError(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->handleOnError(II)V

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isOpticalUdfps()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isOpticalUdfps()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->IS_OPTICAL:Z

    sget-object p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mLatestHwLightMode:Ljava/lang/String;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mSysFsProvider:Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/lcd/panel/fp_green_circle"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/android/server/biometrics/Utils;->writeFile(Ljava/io/File;[B)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mLatestHwLightMode:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final setAttribute(ILandroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->setAttribute(ILandroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsKeyguard:Z

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mHasHideAuthGuideFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiType:I

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mAllowHideAuthGuidePackage:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiType:I

    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mIsRequireTouchBlock:Z

    if-nez p2, :cond_3

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_3
    and-int/lit8 p1, p1, 0x20

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    move p1, v1

    goto :goto_1

    :cond_4
    move p1, v0

    :goto_1
    const-string v2, "EXTRA_KEY_ICON_COLOR"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EXTRA_KEY_ICON_CONTAINER_COLOR"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    if-nez p1, :cond_8

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    return-void

    :cond_8
    :goto_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mCustomIconAttribute:Landroid/os/Bundle;

    return-void
.end method

.method public final stop()V
    .locals 4

    invoke-super {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->stop()V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isOpticalUdfps()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->IS_OPTICAL:Z

    sget-object p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mLatestHwLightMode:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mSysFsProvider:Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/lcd/panel/fp_green_circle"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/android/server/biometrics/Utils;->writeFile(Ljava/io/File;[B)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mLatestHwLightMode:Ljava/lang/String;

    :cond_0
    return-void
.end method
