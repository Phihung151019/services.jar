.class public Lcom/android/server/display/config/HdrBrightnessData;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final allowInLowPowerMode:Z

.field public final brightnessDecreaseDebounceMillis:J

.field public final brightnessIncreaseDebounceMillis:J

.field public final hbmTransitionPoint:F

.field public final highestHdrSdrRatio:F

.field public final maxBrightnessLimits:Ljava/util/Map;

.field public final minimumHdrPercentOfScreenForHbm:F

.field public final minimumHdrPercentOfScreenForNbm:F

.field public final screenBrightnessRampDecrease:F

.field public final screenBrightnessRampIncrease:F

.field public final sdrToHdrRatioSpline:Landroid/util/Spline;

.field public final sdrToHdrSpline:Landroid/util/Spline;


# direct methods
.method public constructor <init>(FLandroid/util/Spline;)V
    .locals 3

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/config/HdrBrightnessData;->maxBrightnessLimits:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/config/HdrBrightnessData;->brightnessIncreaseDebounceMillis:J

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/server/display/config/HdrBrightnessData;->screenBrightnessRampIncrease:F

    iput-wide v0, p0, Lcom/android/server/display/config/HdrBrightnessData;->brightnessDecreaseDebounceMillis:J

    iput v2, p0, Lcom/android/server/display/config/HdrBrightnessData;->screenBrightnessRampDecrease:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/display/config/HdrBrightnessData;->hbmTransitionPoint:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/server/display/config/HdrBrightnessData;->minimumHdrPercentOfScreenForNbm:F

    iput v0, p0, Lcom/android/server/display/config/HdrBrightnessData;->minimumHdrPercentOfScreenForHbm:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/config/HdrBrightnessData;->allowInLowPowerMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/config/HdrBrightnessData;->sdrToHdrRatioSpline:Landroid/util/Spline;

    iput p1, p0, Lcom/android/server/display/config/HdrBrightnessData;->highestHdrSdrRatio:F

    iput-object p2, p0, Lcom/android/server/display/config/HdrBrightnessData;->sdrToHdrSpline:Landroid/util/Spline;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;JFJFFFFZLandroid/util/Spline;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;JFJFFFFZ",
            "Landroid/util/Spline;",
            "F)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/config/HdrBrightnessData;->maxBrightnessLimits:Ljava/util/Map;

    iput-wide p2, p0, Lcom/android/server/display/config/HdrBrightnessData;->brightnessIncreaseDebounceMillis:J

    iput p4, p0, Lcom/android/server/display/config/HdrBrightnessData;->screenBrightnessRampIncrease:F

    iput-wide p5, p0, Lcom/android/server/display/config/HdrBrightnessData;->brightnessDecreaseDebounceMillis:J

    iput p7, p0, Lcom/android/server/display/config/HdrBrightnessData;->screenBrightnessRampDecrease:F

    iput p8, p0, Lcom/android/server/display/config/HdrBrightnessData;->hbmTransitionPoint:F

    iput p9, p0, Lcom/android/server/display/config/HdrBrightnessData;->minimumHdrPercentOfScreenForNbm:F

    iput p10, p0, Lcom/android/server/display/config/HdrBrightnessData;->minimumHdrPercentOfScreenForHbm:F

    iput-boolean p11, p0, Lcom/android/server/display/config/HdrBrightnessData;->allowInLowPowerMode:Z

    iput-object p12, p0, Lcom/android/server/display/config/HdrBrightnessData;->sdrToHdrRatioSpline:Landroid/util/Spline;

    iput p13, p0, Lcom/android/server/display/config/HdrBrightnessData;->highestHdrSdrRatio:F

    return-void
.end method

.method public static loadConfig(Lcom/android/server/display/config/DisplayConfiguration;Lcom/android/server/display/DisplayDeviceConfig$$ExternalSyntheticLambda0;)Lcom/android/server/display/config/HdrBrightnessData;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    iget-object v3, v0, Lcom/android/server/display/config/DisplayConfiguration;->hdrBrightnessConfig:Lcom/android/server/display/config/HdrBrightnessConfig;

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-nez v3, :cond_4

    if-nez v2, :cond_0

    return-object v6

    :cond_0
    iget-object v0, v2, Lcom/android/server/display/config/HighBrightnessMode;->minimumHdrPercentOfScreen_all:Ljava/math/BigDecimal;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    :cond_1
    move/from16 v16, v4

    iget-object v0, v2, Lcom/android/server/display/config/HighBrightnessMode;->sdrHdrRatioMap_all:Lcom/android/server/display/config/SdrHdrRatioMap;

    if-nez v0, :cond_2

    :goto_0
    move-object/from16 v19, v6

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/display/config/SdrHdrRatioMap;->getPoint()Ljava/util/List;

    move-result-object v0

    new-instance v3, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda0;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v4, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda0;

    const/4 v6, 0x2

    invoke-direct {v4, v6}, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v3, v4}, Lcom/android/server/display/config/DisplayDeviceConfigUtils;->createSpline(Ljava/util/List;Ljava/util/function/Function;Ljava/util/function/Function;)Landroid/util/Spline;

    move-result-object v6

    goto :goto_0

    :goto_1
    new-instance v7, Lcom/android/server/display/config/HdrBrightnessData;

    sget-object v8, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayDeviceConfig$$ExternalSyntheticLambda0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v15

    iget-object v0, v2, Lcom/android/server/display/config/HighBrightnessMode;->sdrHdrRatioMap_all:Lcom/android/server/display/config/SdrHdrRatioMap;

    if-nez v0, :cond_3

    :goto_2
    move/from16 v20, v5

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/display/config/SdrHdrRatioMap;->getPoint()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/server/display/config/DisplayDeviceConfigUtils;->getHighestHdrSdrRatio(Ljava/util/List;Ljava/util/function/Function;)F

    move-result v5

    goto :goto_2

    :goto_3
    const/high16 v11, -0x40800000    # -1.0f

    const/16 v18, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v12, 0x0

    const/high16 v14, -0x40800000    # -1.0f

    move/from16 v17, v16

    invoke-direct/range {v7 .. v20}, Lcom/android/server/display/config/HdrBrightnessData;-><init>(Ljava/util/Map;JFJFFFFZLandroid/util/Spline;F)V

    return-object v7

    :cond_4
    iget-object v7, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessMap:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    invoke-virtual {v7}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    move-result-object v7

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;

    iget-object v10, v8, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->first:Ljava/math/BigDecimal;

    invoke-virtual {v10}, Ljava/math/BigDecimal;->floatValue()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    iget-object v8, v8, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->second:Ljava/math/BigDecimal;

    invoke-virtual {v8}, Ljava/math/BigDecimal;->floatValue()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    iget-object v7, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->minimumHdrPercentOfScreenForHbm:Ljava/math/BigDecimal;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    :cond_6
    :goto_5
    move/from16 v18, v4

    goto :goto_7

    :cond_7
    if-eqz v2, :cond_8

    iget-object v7, v2, Lcom/android/server/display/config/HighBrightnessMode;->minimumHdrPercentOfScreen_all:Ljava/math/BigDecimal;

    goto :goto_6

    :cond_8
    move-object v7, v6

    :goto_6
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    goto :goto_5

    :goto_7
    iget-object v4, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->minimumHdrPercentOfScreenForNbm:Ljava/math/BigDecimal;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    move/from16 v17, v4

    goto :goto_8

    :cond_9
    move/from16 v17, v18

    :goto_8
    cmpl-float v4, v17, v18

    if-gtz v4, :cond_12

    new-instance v8, Lcom/android/server/display/config/HdrBrightnessData;

    iget-object v4, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessIncreaseDebounceMillis:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    iget-object v4, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->screenBrightnessRampIncrease:Ljava/math/BigDecimal;

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v12

    iget-object v4, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessDecreaseDebounceMillis:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v13

    iget-object v4, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->screenBrightnessRampDecrease:Ljava/math/BigDecimal;

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v15

    if-nez v2, :cond_a

    move/from16 v16, v5

    goto :goto_9

    :cond_a
    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayDeviceConfig$$ExternalSyntheticLambda0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move/from16 v16, v1

    :goto_9
    iget-object v1, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->allowInLowPowerMode:Ljava/lang/Boolean;

    if-nez v1, :cond_b

    const/4 v1, 0x0

    :goto_a
    move/from16 v19, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_a

    :goto_b
    iget-object v1, v0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    iget-object v2, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->sdrHdrRatioMap:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    if-nez v2, :cond_e

    if-eqz v1, :cond_c

    iget-object v1, v1, Lcom/android/server/display/config/HighBrightnessMode;->sdrHdrRatioMap_all:Lcom/android/server/display/config/SdrHdrRatioMap;

    goto :goto_c

    :cond_c
    move-object v1, v6

    :goto_c
    if-nez v1, :cond_d

    move-object v1, v6

    goto :goto_d

    :cond_d
    invoke-virtual {v1}, Lcom/android/server/display/config/SdrHdrRatioMap;->getPoint()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda0;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v4, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda0;

    const/4 v7, 0x2

    invoke-direct {v4, v7}, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v1, v2, v4}, Lcom/android/server/display/config/DisplayDeviceConfigUtils;->createSpline(Ljava/util/List;Ljava/util/function/Function;Ljava/util/function/Function;)Landroid/util/Spline;

    move-result-object v1

    :goto_d
    move-object/from16 v20, v1

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v4, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda0;

    const/4 v7, 0x1

    invoke-direct {v4, v7}, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v1, v2, v4}, Lcom/android/server/display/config/DisplayDeviceConfigUtils;->createSpline(Ljava/util/List;Ljava/util/function/Function;Ljava/util/function/Function;)Landroid/util/Spline;

    move-result-object v1

    goto :goto_d

    :goto_e
    iget-object v0, v0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    iget-object v1, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->sdrHdrRatioMap:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    if-nez v1, :cond_11

    if-eqz v0, :cond_f

    iget-object v6, v0, Lcom/android/server/display/config/HighBrightnessMode;->sdrHdrRatioMap_all:Lcom/android/server/display/config/SdrHdrRatioMap;

    :cond_f
    if-nez v6, :cond_10

    goto :goto_f

    :cond_10
    invoke-virtual {v6}, Lcom/android/server/display/config/SdrHdrRatioMap;->getPoint()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/server/display/config/DisplayDeviceConfigUtils;->getHighestHdrSdrRatio(Ljava/util/List;Ljava/util/function/Function;)F

    move-result v5

    :goto_f
    move/from16 v21, v5

    goto :goto_10

    :cond_11
    invoke-virtual {v1}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/server/display/config/DisplayDeviceConfigUtils;->getHighestHdrSdrRatio(Ljava/util/List;Ljava/util/function/Function;)F

    move-result v5

    goto :goto_f

    :goto_10
    invoke-direct/range {v8 .. v21}, Lcom/android/server/display/config/HdrBrightnessData;-><init>(Ljava/util/Map;JFJFFFFZLandroid/util/Spline;F)V

    return-object v8

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "minHdrPercentForHbm should be >= minHdrPercentForNbm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HdrBrightnessData {mMaxBrightnessLimits: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->maxBrightnessLimits:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessIncreaseDebounceMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->brightnessIncreaseDebounceMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenBrightnessRampIncrease: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->screenBrightnessRampIncrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessDecreaseDebounceMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->brightnessDecreaseDebounceMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenBrightnessRampDecrease: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->screenBrightnessRampDecrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", transitionPoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->hbmTransitionPoint:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minimumHdrPercentOfScreenForNbm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->minimumHdrPercentOfScreenForNbm:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minimumHdrPercentOfScreenForHbm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->minimumHdrPercentOfScreenForHbm:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", allowInLowPowerMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->allowInLowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sdrToHdrRatioSpline: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->sdrToHdrRatioSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", highestHdrSdrRatio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->highestHdrSdrRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sdrToHdrSpline: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/config/HdrBrightnessData;->sdrToHdrSpline:Landroid/util/Spline;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "} "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
