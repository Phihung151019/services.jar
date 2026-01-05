.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 26

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, -0x2

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    iget v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda1;->f$1:I

    iget-object v5, v5, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    iput v0, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mBootPhase:I

    const/4 v6, -0x1

    const/16 v7, 0x226

    const/4 v8, 0x0

    const/4 v12, 0x0

    if-ne v0, v7, :cond_f

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;

    invoke-direct {v0, v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)V

    iget-object v7, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    invoke-virtual {v7, v0}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->registerStateCallback(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;)V

    iget-boolean v0, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasOpticalUdfps:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)V

    iget-object v9, v7, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBrightnessCallbacks:Ljava/util/List;

    check-cast v9, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    iget-object v7, v7, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBrightnessCallbacks:Ljava/util/List;

    check-cast v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-boolean v0, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUdfps:Z

    if-eqz v0, :cond_27

    iget-object v0, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object v7

    iget-object v9, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    iget-object v10, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    const/16 v11, 0x8

    const/4 v13, 0x0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;

    sget-object v14, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    invoke-virtual {v14}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    move-result-object v14

    invoke-direct {v0, v7, v14, v9}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;Landroid/os/Handler;Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {v7}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->isFirstApiLevel31orGreater()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "fingerprint_always_on"

    invoke-static {v15}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v14, v15, v12, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "fingerprint_screen_lock"

    invoke-static {v15}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v14, v15, v12, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "TspCommand: "

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "FingerprintService"

    invoke-static {v0, v6, v14}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_3
    const-string/jumbo v0, "fingerprint_screen_lock"

    invoke-static {v9, v13, v3, v0, v4}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v4, :cond_3

    :goto_4
    move v0, v13

    goto :goto_5

    :cond_3
    invoke-virtual {v7}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->isFirstApiLevel31orGreater()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "fingerprint_always_on"

    invoke-static {v9, v13, v3, v0, v4}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v4, :cond_4

    goto :goto_4

    :cond_4
    move v0, v4

    :goto_5
    iget-boolean v6, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsLpMode:Z

    if-ne v6, v0, :cond_5

    goto :goto_6

    :cond_5
    iput-boolean v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsLpMode:Z

    invoke-virtual {v7, v11}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->sendCommand(I)V

    :cond_6
    :goto_6
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "ro.factory.factory_binary"

    const-string v6, ""

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "factory"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v7, v12}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->enable(I)V

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$2;

    invoke-direct {v0, v7}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;)V

    invoke-virtual {v10, v0}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->registerStateCallback(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;)V

    :cond_7
    iget-object v0, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->IS_OPTICAL:Z

    sget-object v6, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    iget-object v5, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSysFsProviderImpl:Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;

    const-string v7, "/sys/class/fingerprint/fingerprint/position"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->readFile(Ljava/io/File;)[B

    move-result-object v0

    const/4 v7, 0x7

    if-eqz v0, :cond_8

    :try_start_1
    new-instance v9, Ljava/lang/String;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v0, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v9, ","

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v9, v0

    if-lt v9, v11, :cond_8

    aget-object v9, v0, v12

    iput-object v9, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginBottom:Ljava/lang/String;

    aget-object v9, v0, v4

    iput-object v9, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginLeft:Ljava/lang/String;

    aget-object v9, v0, v2

    iput-object v9, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaWidth:Ljava/lang/String;

    aget-object v1, v0, v1

    iput-object v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaHeight:Ljava/lang/String;

    aget-object v1, v0, v7

    iput-object v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorImageSize:Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v1, v0, v1

    iput-object v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorActiveArea:Ljava/lang/String;

    aget-object v0, v0, v11

    iput-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorDraggingArea:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "readSensorConfig: "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "FingerprintService"

    invoke-static {v0, v1, v9}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_8
    :goto_7
    :try_start_2
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v12}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$ResolutionUtils;->getSortedResolutions(Landroid/view/Display;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    move-object v1, v8

    goto :goto_8

    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    :goto_8
    if-nez v1, :cond_c

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-interface {v9, v12, v1}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_a

    :cond_a
    :goto_9
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v10, "display_cutout_hide_notch"

    invoke-static {v0, v10, v13, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "persist.sys.displayinset.top"

    invoke-static {v0, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v10, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v10, v0

    iput v10, v1, Landroid/graphics/Point;->y:I

    :cond_b
    iget v0, v9, Landroid/util/DisplayMetrics;->xdpi:F

    new-instance v9, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayInfo;

    invoke-direct {v9, v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayInfo;-><init>(Landroid/graphics/Point;F)V

    move-object v8, v9

    goto :goto_b

    :cond_c
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "display_cutout_hide_notch"

    invoke-static {v9, v10, v13, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-eqz v9, :cond_d

    const-string/jumbo v9, "persist.sys.displayinset.top"

    invoke-static {v9, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    iget v10, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v10, v9

    iput v10, v1, Landroid/graphics/Point;->y:I

    :cond_d
    invoke-virtual {v0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v9

    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v9}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    int-to-float v0, v0

    iget v9, v10, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v0, v9

    iget v9, v1, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    div-float/2addr v9, v0

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayInfo;

    invoke-direct {v0, v1, v9}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayInfo;-><init>(Landroid/graphics/Point;F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v8, v0

    goto :goto_b

    :goto_a
    const-string v1, "FingerprintService"

    const-string v9, "Display info retrieval failed"

    invoke-static {v1, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    if-nez v8, :cond_e

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v11, v5

    goto :goto_c

    :cond_e
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorActiveArea:Ljava/lang/String;

    iget-object v1, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginLeft:Ljava/lang/String;

    iget-object v9, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginBottom:Ljava/lang/String;

    iget-object v10, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaHeight:Ljava/lang/String;

    filled-new-array {v1, v9, v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    aget-object v0, v1, v13

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    aget-object v0, v1, v4

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    aget-object v0, v1, v2

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget v11, v8, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayInfo;->maxPhysicalXDpi:F

    move/from16 v17, v2

    float-to-double v2, v11

    mul-double/2addr v9, v2

    const-wide v18, 0x4039666666666666L    # 25.4

    div-double v9, v9, v18

    mul-double/2addr v13, v2

    div-double v13, v13, v18

    mul-double/2addr v15, v2

    div-double v15, v15, v18

    mul-double/2addr v0, v2

    div-double v0, v0, v18

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v18, v9, v2

    sub-double v13, v18, v13

    div-double/2addr v0, v2

    add-double/2addr v0, v15

    add-double v0, v0, v18

    iget-object v2, v8, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayInfo;->physicalSize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v3, 0x2

    move-object v11, v5

    int-to-double v4, v3

    sub-double/2addr v4, v13

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    sub-double/2addr v2, v0

    new-instance v0, Landroid/graphics/Rect;

    double-to-int v1, v4

    double-to-int v8, v2

    add-double/2addr v4, v9

    double-to-int v4, v4

    add-double/2addr v2, v9

    double-to-int v2, v2

    invoke-direct {v0, v1, v8, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_c
    iput-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mFodRect:Landroid/graphics/Rect;

    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mGetTspManager:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mFodRect:Landroid/graphics/Rect;

    const-string/jumbo v2, "set_fod_rect,"

    monitor-enter v1

    :try_start_3
    iput-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mFodRect:Landroid/graphics/Rect;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mCommands:Landroid/util/SparseArray;

    invoke-virtual {v2, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1, v7}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->sendCommand(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    const-string/jumbo v0, "key_fingerprint_lockstar_custom_effect"

    const/4 v1, -0x2

    const/4 v15, 0x1

    invoke-static {v11, v12, v1, v0, v15}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result v0

    if-nez v0, :cond_27

    const-string/jumbo v0, "key_fingerprint_lockstar_custom_effect"

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    :try_start_4
    invoke-static {v2, v0, v15, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1a

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "putIntDb: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "BiometricUtils"

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_1a

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :cond_f
    move/from16 v17, v2

    const/16 v2, 0x258

    if-ne v0, v2, :cond_23

    iget-object v0, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mPersistentBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_10

    goto :goto_d

    :cond_10
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$2;

    invoke-direct {v0, v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)V

    iput-object v0, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mPersistentBroadCastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getBiometricHandler()Landroid/os/Handler;

    move-result-object v23

    const/16 v22, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v0

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    invoke-static/range {v18 .. v24}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Handler;I)V

    :goto_d
    iget-object v0, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_27

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    sget-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_LOGGING_MODE:Z

    iget-boolean v3, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUdfps:Z

    sget-object v4, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    iget-object v7, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    if-eqz v3, :cond_12

    sget-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_TSP_BLOCK:Z

    if-eqz v3, :cond_12

    iget-object v9, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;

    invoke-virtual {v4}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    move-result-object v11

    invoke-direct {v10, v9, v2, v11}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;-><init>(Landroid/content/Context;Landroid/util/Pair;Landroid/os/Handler;)V

    iget-object v13, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v13, v10}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semAddEventListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;)V

    iget-object v13, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v13, v10}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semAddAuthenticationListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;)V

    iget-object v13, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v13, v10}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semAddEnrollmentListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;)V

    if-eqz v3, :cond_12

    iget-object v3, v10, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mTspBrReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_11

    goto :goto_e

    :cond_11
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$1;

    invoke-direct {v3, v10}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;)V

    iput-object v3, v10, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mTspBrReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v13, "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

    invoke-direct {v3, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v10, v10, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mTspBrReceiver:Landroid/content/BroadcastReceiver;

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v22, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v3

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v23, v11

    invoke-static/range {v18 .. v24}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Handler;I)V

    :cond_12
    :goto_e
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-boolean v9, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUdfps:Z

    if-eqz v9, :cond_13

    iget-object v9, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;

    new-instance v11, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;

    invoke-direct {v11}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;-><init>()V

    invoke-direct {v10, v9, v3, v11}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;)V

    iget-object v3, v10, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v3, v10}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semAddEventListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;)V

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$1;

    invoke-virtual {v4}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;Landroid/os/Handler;)V

    iput-object v3, v10, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v3, v10, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "any_screen_running"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v9, v10, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v10, v10, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v10, -0x2

    invoke-virtual {v3, v4, v12, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_13
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-boolean v4, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUltrasonicUdfps:Z

    if-eqz v4, :cond_14

    iget-object v4, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

    new-instance v10, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;

    invoke-direct {v10}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;-><init>()V

    invoke-direct {v9, v4, v3, v10}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;)V

    iput-object v9, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mFpProtectiveFilmGuide:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

    iget-object v3, v9, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v3, v9}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semAddAuthenticationListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;)V

    invoke-interface {v3, v9}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semAddEnrollmentListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;)V

    iget-object v3, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mFpProtectiveFilmGuide:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

    iget-object v4, v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;

    iget-object v9, v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v9, "fingerprint_protective_film_guideline_displayed_hun"

    invoke-static {v4, v9, v6, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ltz v4, :cond_14

    iget-object v3, v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mBadQualityCount:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v12, v6}, Landroid/util/SparseIntArray;->put(II)V

    :cond_14
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;

    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;)V

    invoke-direct {v3, v4, v12}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;-><init>(Ljava/util/function/Supplier;Z)V

    iget-object v4, v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mGetProviderPair:Ljava/util/function/Supplier;

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    if-nez v4, :cond_15

    goto :goto_10

    :cond_15
    iget-boolean v9, v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mUseAlwaysOn:Z

    if-nez v9, :cond_17

    iget-object v9, v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mGetProviderPair:Ljava/util/function/Supplier;

    invoke-interface {v9}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    if-nez v9, :cond_16

    move v9, v6

    goto :goto_f

    :cond_16
    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v11, 0x25

    move-object/from16 v25, v10

    move v10, v9

    move-object/from16 v9, v25

    invoke-interface/range {v9 .. v14}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(III[B[B)I

    move-result v9

    :goto_f
    const-string/jumbo v10, "TZ BUILD TYPE = "

    const-string/jumbo v11, "SemFpScreenStatusNotifier"

    invoke-static {v9, v10, v11}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x1

    if-eq v9, v15, :cond_17

    goto :goto_10

    :cond_17
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v4, v3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semAddAuthenticationListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;)V

    :goto_10
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getAllProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    if-ne v0, v1, :cond_21

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->IS_OPTICAL:Z

    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    if-eqz v4, :cond_21

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v0, v9}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semGetOpticalBrightnessConfigs(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v9, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x2d

    invoke-interface {v9, v10, v11}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(II)I

    move-result v9

    iget-object v10, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    iput v9, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mCalibrationStatus:I

    const/16 v11, 0x20d

    iput v11, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mNits:I

    const-string v13, "FingerprintService"

    if-eqz v0, :cond_1b

    :try_start_6
    array-length v10, v0

    if-lez v10, :cond_18

    aget-object v10, v0, v12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mNits:I

    goto :goto_12

    :catch_4
    move-exception v0

    goto :goto_14

    :cond_18
    :goto_12
    array-length v10, v0

    if-le v10, v1, :cond_19

    aget-object v10, v0, v1

    iput-object v10, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mBrightnessColor:Ljava/lang/String;

    :cond_19
    array-length v10, v0

    const/4 v11, 0x4

    if-le v10, v11, :cond_1a

    aget-object v10, v0, v11

    iput-object v10, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mBrightnessColorForLowBrightness:Ljava/lang/String;

    :cond_1a
    array-length v10, v0

    move v11, v12

    :goto_13
    if-ge v11, v10, :cond_1d

    aget-object v14, v0, v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setBrightnessConfigs: node = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    add-int/2addr v11, v15

    const/4 v12, 0x0

    goto :goto_13

    :cond_1b
    const-string/jumbo v0, "setBrightnessConfigs: failed to read from HAL"

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x1070083

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v10, v0

    const/4 v15, 0x1

    sub-int/2addr v10, v15

    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge v0, v11, :cond_1c

    iput v0, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mNits:I

    :cond_1c
    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mNits:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_15

    :goto_14
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "getBrightnessNitsValue: failure to read nits info: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v10, v13}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1d
    :goto_15
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, v4, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;I)V

    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->getBgHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;

    move/from16 v10, v17

    invoke-direct {v0, v4, v10}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;I)V

    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->getBgHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mGetDisplayStateMonitor:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    new-instance v10, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$1;

    invoke-direct {v10, v4}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;)V

    invoke-virtual {v0, v10}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->registerStateCallback(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;)V

    if-ltz v9, :cond_20

    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->getInstance()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_20

    new-instance v9, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string v10, "FPDA"

    const/4 v11, 0x2

    invoke-direct {v9, v6, v11, v10, v8}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    const-string v10, "FPCA"

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1e

    goto :goto_16

    :cond_1e
    iget-object v12, v9, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mDqaKeys:Ljava/util/Map;

    if-nez v12, :cond_1f

    new-instance v12, Landroid/util/ArrayMap;

    const/4 v15, 0x1

    invoke-direct {v12, v15}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v12, v9, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mDqaKeys:Ljava/util/Map;

    :cond_1f
    iget-object v12, v9, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mDqaKeys:Ljava/util/Map;

    check-cast v12, Landroid/util/ArrayMap;

    invoke-virtual {v12, v10, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_16
    invoke-virtual {v0, v9}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    goto :goto_17

    :cond_20
    const/4 v11, 0x2

    goto :goto_17

    :cond_21
    move/from16 v11, v17

    :goto_17
    move/from16 v17, v11

    const/4 v12, 0x0

    goto/16 :goto_11

    :cond_22
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpResetLockoutDispatcher;

    invoke-direct {v0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpResetLockoutDispatcher;-><init>(Landroid/util/Pair;)V

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semAddResetLockoutListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpResetLockoutDispatcher;)V

    goto/16 :goto_1a

    :cond_23
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_27

    iget-object v0, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getAllProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v1

    const/4 v15, 0x1

    iput-boolean v15, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mIsBootComplete:Z

    iget-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    if-nez v2, :cond_24

    goto :goto_18

    :cond_24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v12, 0x0

    :goto_19
    if-ge v12, v3, :cond_25

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/2addr v12, v15

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_19

    :cond_25
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-object v8, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    goto :goto_18

    :cond_26
    iget-object v0, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    iget-object v1, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "BiometricContextProvider"

    const-string/jumbo v0, "ensureBiometricContextListener"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIBiometricContextListener:Lcom/android/server/biometrics/log/BiometricContextProvider$2;

    invoke-interface {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V
    :try_end_7
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1a

    :catch_5
    move-exception v0

    const-string/jumbo v3, "StatusBarService connection error"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextProvider$4;

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/log/BiometricContextProvider$4;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    iget-object v1, v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->registerStateCallback(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;)V

    :cond_27
    :goto_1a
    return-void
.end method
