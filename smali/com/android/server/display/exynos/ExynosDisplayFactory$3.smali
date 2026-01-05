.class public final Lcom/android/server/display/exynos/ExynosDisplayFactory$3;
.super Landroid/os/CountDownTimer;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayFactory;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-boolean v0, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CountDownTimer finished = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget v1, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    const-string v2, "ExynosDisplayFactory"

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    return-void
.end method

.method public final onTick(J)V
    .locals 16

    move-object/from16 v1, p0

    const-string/jumbo v2, "cgc17_enc"

    const-string/jumbo v3, "de"

    const-string/jumbo v4, "cgc17_con"

    const-string/jumbo v5, "scl"

    const-string/jumbo v6, "hsc"

    const-string/jumbo v7, "gamma_matrix"

    const-string/jumbo v8, "aps"

    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget v9, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    const/4 v10, 0x1

    const-string v11, "0"

    const-string/jumbo v12, "xml array size wrong: "

    const-string v13, "ExynosDisplayFactory"

    const/4 v14, 0x2

    const/4 v15, 0x0

    if-gtz v9, :cond_5

    move v2, v15

    :goto_0
    if-ge v2, v14, :cond_43

    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v3, v3, v2

    iget v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    aget v3, v3, v4

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    aget v3, v3, v2

    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string/jumbo v5, "setCalibrationAPS"

    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {v15, v15, v3, v4, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string/jumbo v0, "xml aps not found"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    array-length v4, v3

    if-ge v4, v10, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    aget-object v3, v3, v15

    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v4, v8}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v0, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v0, v8}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v3}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/16 v8, 0xa

    if-gt v9, v10, :cond_a

    move v2, v15

    :goto_3
    if-ge v2, v14, :cond_43

    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v3, v3, v2

    iget v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    aget v3, v3, v4

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    aget v3, v3, v2

    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string/jumbo v5, "degamma"

    const-string/jumbo v6, "setCalibrationDEGAMMA"

    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-static {v15, v15, v3, v4, v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v7, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_OFF:Ljava/lang/String;

    if-eqz v6, :cond_8

    :try_start_2
    array-length v9, v6

    if-lt v9, v10, :cond_8

    aget-object v3, v6, v15

    invoke-virtual {v0, v3, v7}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteDEGAMMA(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_8
    invoke-static {v8, v15, v3, v4, v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    array-length v9, v6

    if-lt v9, v10, :cond_9

    aget-object v6, v6, v15

    invoke-virtual {v0, v6, v7}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteDEGAMMA(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x8

    invoke-static {v6, v15, v3, v4, v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    array-length v4, v3

    if-lt v4, v10, :cond_9

    aget-object v3, v3, v15

    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_ON:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteDEGAMMA(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    if-gt v9, v14, :cond_10

    move v2, v15

    :goto_6
    if-ge v2, v14, :cond_43

    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v3, v3, v2

    iget v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    aget v3, v3, v4

    if-nez v3, :cond_c

    :cond_b
    :goto_7
    const/16 v6, 0x8

    goto :goto_9

    :cond_c
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    aget v3, v3, v2

    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_7

    :cond_d
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string/jumbo v5, "gamma"

    const-string/jumbo v6, "setCalibrationGAMMA"

    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    invoke-static {v15, v15, v3, v4, v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    iget-object v7, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_OFF:Ljava/lang/String;

    if-eqz v6, :cond_e

    :try_start_4
    array-length v9, v6

    if-lt v9, v10, :cond_e

    aget-object v3, v6, v15

    invoke-virtual {v0, v3, v7}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteGAMMA(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_2
    move-exception v0

    const/16 v6, 0x8

    goto :goto_8

    :cond_e
    invoke-static {v8, v15, v3, v4, v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    array-length v9, v6

    if-lt v9, v10, :cond_b

    aget-object v6, v6, v15

    invoke-virtual {v0, v6, v7}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteGAMMA(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/16 v6, 0x8

    :try_start_5
    invoke-static {v6, v15, v3, v4, v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    array-length v4, v3

    if-lt v4, v10, :cond_f

    aget-object v3, v3, v15

    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_ON:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteGAMMA(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_10
    const/4 v8, 0x3

    if-gt v9, v8, :cond_16

    move v2, v15

    :goto_a
    if-ge v2, v14, :cond_43

    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v3, v3, v2

    iget v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    aget v3, v3, v4

    if-nez v3, :cond_11

    goto :goto_c

    :cond_11
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    aget v3, v3, v2

    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_c

    :cond_12
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string/jumbo v5, "setCalibrationGAMMA_MATRIX"

    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_6
    invoke-static {v15, v15, v3, v4, v7}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_13

    const-string/jumbo v0, "xml gamma_matrix not found"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catch_4
    move-exception v0

    goto :goto_b

    :cond_13
    array-length v4, v3

    if-ge v4, v10, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_14
    aget-object v3, v3, v15

    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v4, v7}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    iget-object v0, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v0, v7}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v3}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_c

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    const/4 v7, 0x4

    if-gt v9, v7, :cond_1c

    move v2, v15

    :goto_d
    if-ge v2, v14, :cond_43

    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v3, v3, v2

    iget v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    aget v3, v3, v4

    if-nez v3, :cond_17

    goto :goto_11

    :cond_17
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    aget v3, v3, v2

    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_11

    :cond_18
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget v5, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    sub-int/2addr v5, v7

    iget-object v0, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    const-string/jumbo v6, "hsc48_lcg"

    const-string/jumbo v9, "setCalibrationHSC48_LCG: "

    invoke-static {v5, v9, v13}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move v5, v15

    :goto_e
    if-ge v5, v8, :cond_1b

    :try_start_7
    invoke-static {v5, v15, v3, v4, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1a

    array-length v11, v9

    if-ge v11, v10, :cond_19

    goto :goto_f

    :cond_19
    aget-object v9, v9, v15

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "hsc48_idx"

    invoke-virtual {v0, v12}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v11}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v0, v6}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :catch_5
    move-exception v0

    goto :goto_10

    :cond_1a
    :goto_f
    const-string/jumbo v0, "xml hsc48_lcg not found"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_11

    :goto_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1b
    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1c
    const/4 v7, 0x5

    if-gt v9, v7, :cond_22

    move v2, v15

    :goto_12
    if-ge v2, v14, :cond_43

    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v3, v3, v2

    iget v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    aget v3, v3, v4

    if-nez v3, :cond_1d

    goto :goto_14

    :cond_1d
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    aget v3, v3, v2

    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_14

    :cond_1e
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string/jumbo v5, "setCalibrationHSC"

    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    invoke-static {v15, v15, v3, v4, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1f

    const-string/jumbo v0, "xml hsc not found"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :catch_6
    move-exception v0

    goto :goto_13

    :cond_1f
    array-length v4, v3

    if-ge v4, v10, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_20
    aget-object v3, v3, v15

    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v4, v6}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_21

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    iget-object v0, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v0, v6}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v3}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_14

    :goto_13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_21
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_22
    const/4 v6, 0x6

    if-gt v9, v6, :cond_28

    move v2, v15

    :goto_15
    if-ge v2, v14, :cond_43

    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v3, v3, v2

    iget v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    aget v3, v3, v4

    if-nez v3, :cond_23

    goto :goto_17

    :cond_23
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    aget v3, v3, v2

    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_17

    :cond_24
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string/jumbo v6, "setCalibrationSCL"

    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_9
    invoke-static {v15, v15, v3, v4, v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_25

    const-string/jumbo v0, "xml scl not found"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :catch_7
    move-exception v0

    goto :goto_16

    :cond_25
    array-length v4, v3

    if-ge v4, v10, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_26
    aget-object v3, v3, v15

    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v4, v5}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_27

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    iget-object v0, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v0, v5}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v3}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_17

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_27
    :goto_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_28
    const/16 v5, 0x9

    if-gt v9, v5, :cond_2e

    move v3, v15

    :goto_18
    if-ge v3, v14, :cond_43

    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v4, v4, v3

    iget v5, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    aget v4, v4, v5

    if-nez v4, :cond_29

    goto :goto_1c

    :cond_29
    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    aget v4, v4, v3

    invoke-static {v0, v4}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_1c

    :cond_2a
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget v6, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    add-int/lit8 v6, v6, -0x7

    const-string/jumbo v7, "setCalibrationCGC17_ENC + "

    invoke-static {v6, v7, v13}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move v7, v15

    :goto_19
    const/16 v8, 0x11

    if-ge v7, v8, :cond_2d

    :try_start_a
    invoke-static {v6, v7, v4, v5, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2c

    array-length v9, v8

    if-ge v9, v10, :cond_2b

    goto :goto_1a

    :cond_2b
    aget-object v8, v8, v15

    mul-int/lit8 v9, v6, 0x11

    add-int/2addr v9, v7

    invoke-virtual {v0, v9}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteCGC17_IDX(I)V

    iget-object v9, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v9, v2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :catch_8
    move-exception v0

    goto :goto_1b

    :cond_2c
    :goto_1a
    const-string/jumbo v0, "xml cgc17_enc not found"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_1c

    :goto_1b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2d
    const-string/jumbo v0, "setCalibrationCGC17_ENC - "

    invoke-static {v6, v0, v13}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2e
    const/16 v2, 0xa

    if-gt v9, v2, :cond_31

    :goto_1d
    if-ge v15, v14, :cond_43

    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object v2, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v2, v2, v15

    iget v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    aget v2, v2, v3

    if-nez v2, :cond_2f

    goto :goto_1e

    :cond_2f
    iget-object v2, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    aget v2, v2, v15

    invoke-static {v0, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_1e

    :cond_30
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "setCalibrationCGC17_DEC"

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    const-string/jumbo v2, "cgc17_dec"

    invoke-virtual {v0, v2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "7"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    :goto_1e
    add-int/lit8 v15, v15, 0x1

    goto :goto_1d

    :cond_31
    const/16 v2, 0xb

    if-gt v9, v2, :cond_37

    move v2, v15

    :goto_1f
    if-ge v2, v14, :cond_43

    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v3, v3, v2

    iget v5, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    aget v3, v3, v5

    if-nez v3, :cond_32

    goto :goto_21

    :cond_32
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    aget v3, v3, v2

    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_21

    :cond_33
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "setCalibrationCGC17_CON"

    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_b
    invoke-static {v15, v15, v3, v5, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_34

    const-string/jumbo v0, "xml cgc17_con not found"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :catch_9
    move-exception v0

    goto :goto_20

    :cond_34
    array-length v5, v3

    if-ge v5, v10, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_35
    aget-object v3, v3, v15

    iget-object v5, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v5, v4}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_36

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    iget-object v0, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v0, v4}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v3}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_21

    :goto_20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_36
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_37
    const/16 v2, 0xc

    if-gt v9, v2, :cond_3c

    move v2, v15

    :goto_22
    if-ge v2, v14, :cond_43

    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v3, v3, v2

    iget v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    aget v3, v3, v4

    if-nez v3, :cond_38

    goto :goto_24

    :cond_38
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    aget v3, v3, v2

    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_24

    :cond_39
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string/jumbo v5, "cgc_dither"

    const-string/jumbo v6, "setCalibrationCGC_DITHER"

    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_c
    invoke-static {v15, v15, v3, v4, v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3a

    const-string/jumbo v0, "xml degamma not found"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :catch_a
    move-exception v0

    goto :goto_23

    :cond_3a
    array-length v4, v3

    if-ge v4, v10, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :cond_3b
    aget-object v3, v3, v15

    iget-object v0, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v0, v5}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_24

    :goto_23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_3c
    const/16 v2, 0xd

    if-gt v9, v2, :cond_42

    move v2, v15

    :goto_25
    if-ge v2, v14, :cond_43

    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v4, v4, v2

    iget v5, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    aget v4, v4, v5

    if-nez v4, :cond_3d

    goto :goto_27

    :cond_3d
    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    aget v4, v4, v2

    invoke-static {v0, v4}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_27

    :cond_3e
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string/jumbo v6, "setCalibrationDE"

    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_d
    invoke-static {v15, v15, v4, v5, v3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3f

    const-string/jumbo v0, "xml de not found"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :catch_b
    move-exception v0

    goto :goto_26

    :cond_3f
    array-length v5, v4

    if-ge v5, v10, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :cond_40
    aget-object v4, v4, v15

    iget-object v5, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v5, v3}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_41

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    iget-object v0, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v4}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_27

    :goto_26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_41
    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_42
    const/16 v2, 0xe

    if-gt v9, v2, :cond_43

    invoke-static {v0, v15}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    :cond_43
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget v1, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    return-void
.end method
