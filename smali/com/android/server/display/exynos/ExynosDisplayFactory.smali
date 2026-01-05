.class public final Lcom/android/server/display/exynos/ExynosDisplayFactory;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final DEBUG:Z

.field public final EXTENSION_OFF:Ljava/lang/String;

.field public final EXTENSION_ON:Ljava/lang/String;

.field public final mColorModeModeIdx:[I

.field public final mColorModeSettingTable:[Ljava/lang/String;

.field public mCountDownTimerCount:I

.field public final mCountDownTimerTable:[[I

.field public final mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayFactory$3;

.field public final mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

.field public mFactoryXMLPath:Ljava/lang/String;

.field public final mIntervalMs:I

.field public final mLocalHandler:Landroid/os/Handler;

.field public final mTimeoutMs:I


# direct methods
.method public static -$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "mode_idx"

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/exynos/ExynosDisplayAdapter;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayFactory$3;

    const/16 v1, 0x320

    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mTimeoutMs:I

    const/16 v1, 0x28

    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mIntervalMs:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    const-string v2, "0"

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_OFF:Ljava/lang/String;

    const-string v2, "1"

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_ON:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x2

    filled-new-array {v2, v3}, [I

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    const-string/jumbo v4, "hdr10"

    const-string/jumbo v5, "hdr10p"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    filled-new-array {v1}, [I

    move-result-object v4

    filled-new-array {v1}, [I

    move-result-object v5

    filled-new-array {v4, v5}, [[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    new-instance v4, Lcom/android/server/display/exynos/ExynosDisplayFactory$2;

    invoke-direct {v4, p0}, Lcom/android/server/display/exynos/ExynosDisplayFactory$2;-><init>(Lcom/android/server/display/exynos/ExynosDisplayFactory;)V

    iput-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mLocalHandler:Landroid/os/Handler;

    new-array p1, v3, [I

    const/16 p2, 0x14

    aput p2, p1, v2

    aput v3, p1, v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    move p1, v1

    :goto_0
    if-ge p1, v3, :cond_1

    move v2, v1

    :goto_1
    if-ge v2, p2, :cond_0

    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v4, v4, p1

    aput v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;

    iget p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mTimeoutMs:I

    int-to-long v6, p1

    iget p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mIntervalMs:I

    int-to-long v8, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;-><init>(Lcom/android/server/display/exynos/ExynosDisplayFactory;JJ)V

    iput-object v4, v5, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayFactory$3;

    iput-object v0, v5, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    iget-object p0, v5, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mLocalHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/display/exynos/ExynosDisplayFactory$1;

    invoke-direct {p1, v5}, Lcom/android/server/display/exynos/ExynosDisplayFactory$1;-><init>(Lcom/android/server/display/exynos/ExynosDisplayFactory;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, v0, p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    array-length p1, p0

    const/4 p2, 0x1

    if-ge p1, p2, :cond_1

    goto :goto_0

    :cond_1
    aget-object p0, p0, v0

    const-string/jumbo p1, "\\s*,\\s*"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method


# virtual methods
.method public final startCountDownTimer(Ljava/lang/String;)V
    .locals 10

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    const-string v0, "DQE_coef_data.xml"

    invoke-virtual {p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xml"

    invoke-virtual {p1, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->existFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    const-string v1, "ExynosDisplayFactory"

    if-eqz v0, :cond_2

    const-string/jumbo v2, "startCountDownTimer: xml_path="

    invoke-static {v2, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    const/4 v5, 0x2

    if-ge v3, v5, :cond_4

    move v5, v2

    :goto_1
    const/16 v6, 0x14

    if-ge v5, v6, :cond_3

    aget-object v6, v4, v3

    aput v2, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXMLNodeText(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    array-length v6, v3

    const/4 v7, 0x1

    if-ge v6, v7, :cond_5

    goto/16 :goto_6

    :cond_5
    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "xml version: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :cond_6
    :goto_2
    move v0, v2

    :goto_3
    if-ge v0, v5, :cond_13

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string/jumbo v6, "aps"

    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_7

    aget-object v6, v4, v0

    aput v7, v6, v2

    :cond_7
    const-string/jumbo v6, "degamma"

    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_8

    aget-object v6, v4, v0

    aput v7, v6, v7

    :cond_8
    const-string/jumbo v6, "gamma"

    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_9

    aget-object v6, v4, v0

    aput v7, v6, v5

    :cond_9
    const-string/jumbo v6, "gamma_matrix"

    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_a

    aget-object v6, v4, v0

    const/4 v8, 0x3

    aput v7, v6, v8

    :cond_a
    const-string/jumbo v6, "hsc"

    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x4

    :goto_4
    const/4 v9, 0x5

    if-gt v8, v9, :cond_c

    if-lez v6, :cond_b

    aget-object v9, v4, v0

    aput v7, v9, v8

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_c
    const-string/jumbo v6, "scl"

    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_d

    aget-object v6, v4, v0

    const/4 v8, 0x6

    aput v7, v6, v8

    :cond_d
    const-string/jumbo v6, "cgc17_con"

    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x7

    :goto_5
    const/16 v9, 0xb

    if-gt v8, v9, :cond_f

    if-lez v6, :cond_e

    aget-object v9, v4, v0

    aput v7, v9, v8

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_f
    const-string/jumbo v6, "cgc_dither"

    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_10

    aget-object v6, v4, v0

    const/16 v8, 0xc

    aput v7, v6, v8

    :cond_10
    const-string/jumbo v6, "de"

    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_11

    aget-object v6, v4, v0

    const/16 v8, 0xd

    aput v7, v6, v8

    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v4, v0

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_12
    :goto_6
    const-string/jumbo p1, "xml version not found"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayFactory$3;

    if-eqz p1, :cond_14

    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayFactory$3;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_14
    :goto_8
    return-void
.end method

.method public final sysfsWriteCGC17_IDX(I)V
    .locals 2

    div-int/lit8 v0, p1, 0x11

    rem-int/lit8 p1, p1, 0x11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "cgc17_idx"

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final sysfsWriteDEGAMMA(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    const-string/jumbo v1, "degamma"

    invoke-virtual {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const-string/jumbo v0, "degamma_ext"

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v2, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {p0, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public final sysfsWriteGAMMA(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    const-string/jumbo v1, "gamma"

    invoke-virtual {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const-string/jumbo v0, "gamma_ext"

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v2, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {p0, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
