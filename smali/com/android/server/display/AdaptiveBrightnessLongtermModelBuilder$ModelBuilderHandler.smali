.class public final Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_10

    :pswitch_1
    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/display/BrightnessMappingStrategy;

    iput-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget-object v2, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    if-eqz v2, :cond_18

    monitor-enter v2

    :try_start_0
    iput-object v1, v2, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget-object v0, v2, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v3, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/BrightnessMappingStrategy;)V

    invoke-interface {v0, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_2
    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "handleBrightnessBnrPackageCleared()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->resetBrightnessConfiguration()V

    return-void

    :pswitch_3
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget-object v0, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "handleShortTermModelValid()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    monitor-enter v2

    :try_start_2
    iget-object v0, v2, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    iget-object v5, v2, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    iget-object v5, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    invoke-virtual {v0, v5}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->getOrCreateUserStats(Ljava/util/Map;)Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->summarizeStats()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v2

    iget-object v5, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    monitor-enter v5

    :try_start_3
    iget-object v0, v5, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    iget-object v2, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit v5

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getTimeCollectorStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getContinuityCollectorStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    move-result-object v0

    move-object v6, v5

    move-object v5, v2

    move-object v2, v0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-eqz v5, :cond_18

    if-eqz v6, :cond_18

    if-eqz v2, :cond_18

    array-length v0, v5

    new-array v8, v0, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    move v9, v3

    :goto_2
    if-ge v9, v0, :cond_2

    aget-object v10, v5, v9

    invoke-virtual {v10}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->copy()Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    iget-object v9, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mComparatorDecsendingForWeight:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;

    invoke-static {v8, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    move v9, v3

    :cond_3
    if-ge v9, v0, :cond_8

    aget-object v10, v8, v9

    invoke-virtual {v10}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    move-result v10

    aget-object v11, v8, v9

    invoke-virtual {v11}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    move-result v11

    add-int/lit8 v9, v9, 0x1

    move v12, v9

    :goto_3
    if-ge v12, v0, :cond_3

    aget-object v13, v8, v12

    invoke-virtual {v13}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    move-result v13

    aget-object v14, v8, v12

    invoke-virtual {v14}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    move-result v14

    sget-boolean v15, Lcom/android/server/power/PowerManagerUtil;->USE_PERMISSIBLE_RATIO_FOR_LONGTERM_MODEL:Z

    if-eqz v15, :cond_5

    invoke-static {v13, v10}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleMinimumRatio(FF)F

    move-result v15

    const/high16 v16, 0x3e800000    # 0.25f

    add-float v17, v13, v16

    add-float v16, v10, v16

    div-float v7, v17, v16

    const/16 v16, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v7, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v4

    cmpl-float v7, v13, v10

    if-lez v7, :cond_4

    mul-float/2addr v15, v11

    mul-float/2addr v4, v11

    invoke-static {v14, v15, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v4

    goto :goto_4

    :cond_4
    mul-float/2addr v4, v11

    mul-float/2addr v15, v11

    invoke-static {v14, v4, v15}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v4

    goto :goto_4

    :cond_5
    const/16 v16, 0x1

    cmpl-float v4, v13, v10

    if-lez v4, :cond_6

    invoke-static {v14, v11}, Landroid/util/MathUtils;->max(FF)F

    move-result v4

    goto :goto_4

    :cond_6
    invoke-static {v14, v11}, Landroid/util/MathUtils;->min(FF)F

    move-result v4

    :goto_4
    invoke-static {v14, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_7

    aget-object v7, v8, v12

    invoke-virtual {v7, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->setBrightness(F)V

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_8
    const/16 v16, 0x1

    move v4, v3

    :goto_5
    if-ge v4, v0, :cond_a

    aget-object v7, v8, v4

    invoke-virtual {v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    move-result v7

    iget v9, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaxBrightnessForNonHbmLux:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_9

    aget-object v7, v8, v4

    invoke-virtual {v7, v9}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->setBrightness(F)V

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    iget-object v4, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mComparatorAscendingForLux:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;

    invoke-static {v8, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v3

    :goto_6
    if-ge v7, v0, :cond_b

    aget-object v9, v8, v7

    const-string v10, "%9s"

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v11, 0x1

    invoke-static {v10, v9, v4, v7, v11}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    move-result v7

    goto :goto_6

    :cond_b
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "lux sorted: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mTag:Ljava/lang/String;

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v4, v0, [F

    new-array v9, v0, [F

    iget-object v10, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitCount:[I

    array-length v11, v10

    new-array v11, v11, [Z

    move v12, v3

    :goto_7
    if-ge v12, v0, :cond_10

    aget-object v13, v8, v12

    invoke-virtual {v13}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    move-result v13

    aput v13, v4, v12

    aget-object v13, v8, v12

    invoke-virtual {v13}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    move-result v13

    aput v13, v9, v12

    iget-object v13, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMinimumBrightnessSpline:Landroid/util/Spline;

    aget v14, v4, v12

    invoke-virtual {v13, v14}, Landroid/util/Spline;->interpolate(F)F

    move-result v13

    iget-object v14, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessSpline:Landroid/util/Spline;

    aget v15, v4, v12

    invoke-virtual {v14, v15}, Landroid/util/Spline;->interpolate(F)F

    move-result v14

    aget v15, v9, v12

    invoke-static {v15, v13, v14}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v15

    aget v3, v9, v12

    invoke-static {v3, v15}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v3

    if-nez v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    move/from16 p1, v0

    const-string/jumbo v0, "buildBrightnessConfiguration: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v0, v4, v12

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " lux, "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v9, v12

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " nits Limit: ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " ~ "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v0, v9, v12

    cmpl-float v0, v0, v14

    if-lez v0, :cond_e

    const/4 v0, 0x0

    :goto_8
    iget-object v3, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitLux:[F

    array-length v13, v3

    if-ge v0, v13, :cond_e

    aget v3, v3, v0

    aget v13, v4, v12

    cmpl-float v3, v3, v13

    if-ltz v3, :cond_d

    aget-boolean v3, v11, v0

    if-eqz v3, :cond_c

    goto :goto_9

    :cond_c
    aget v3, v10, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v10, v0

    aput-boolean v16, v11, v0

    goto :goto_9

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_e
    :goto_9
    aput v15, v9, v12

    goto :goto_a

    :cond_f
    move/from16 p1, v0

    :goto_a
    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p1

    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_10
    :try_start_4
    new-instance v0, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {v0, v4, v9}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    const-string/jumbo v3, "sbs:0"

    invoke-virtual {v0, v3}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setDescription(Ljava/lang/String;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v8, v7

    goto :goto_b

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v8, 0x0

    :goto_b
    if-eqz v8, :cond_15

    iget-object v0, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/hardware/display/DisplayManager;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_c
    array-length v3, v5

    if-ge v0, v3, :cond_11

    aget-object v3, v5, v0

    invoke-virtual {v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getWeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_11
    const/4 v0, 0x0

    :goto_d
    array-length v3, v6

    if-ge v0, v3, :cond_12

    aget-object v3, v6, v0

    invoke-virtual {v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_12
    const/4 v3, 0x0

    :goto_e
    array-length v0, v2

    if-ge v3, v0, :cond_13

    aget-object v0, v2, v3

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_13
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    if-eqz v0, :cond_14

    iget v0, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDisplayId:I

    invoke-virtual {v7, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v13, v12

    move-object v12, v11

    const-string/jumbo v11, "sbs"

    invoke-virtual/range {v7 .. v14}, Landroid/hardware/display/DisplayManager;->setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_10

    :cond_14
    move-object v13, v12

    move-object v12, v11

    const/4 v9, 0x0

    const-string/jumbo v10, "sbs"

    move-object v12, v13

    move-object v13, v14

    invoke-virtual/range {v7 .. v13}, Landroid/hardware/display/DisplayManager;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_10

    :cond_15
    iget-object v0, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "handleShortTermModelValid: brightnessConfiguration is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :pswitch_4
    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iput v1, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastAmbientLux:F

    const-string v2, "Ambient Lux event "

    iget-object v3, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_7
    iget-object v4, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastLightData:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

    iget-object v4, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;->timestamp:J

    iget-object v2, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastLightData:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

    iput v1, v2, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;->lux:F

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    iget-object v2, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleAmbientLuxChanged: ambientLux: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->updateAdaptiveBrightnessStats(Z)V

    return-void

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :pswitch_5
    move v2, v3

    const/16 v16, 0x1

    iget-object v3, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/display/BrightnessConfiguration;

    iput-object v1, v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/hardware/display/BrightnessConfiguration;->shouldCollectColorSamples()Z

    move-result v1

    if-eqz v1, :cond_16

    move/from16 v3, v16

    goto :goto_f

    :cond_16
    move v3, v2

    :goto_f
    if-eqz v3, :cond_17

    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget-boolean v2, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    if-nez v2, :cond_17

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->enableColorSampling()V

    return-void

    :cond_17
    if-nez v3, :cond_18

    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget-boolean v1, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->disableColorSampling()V

    :cond_18
    :goto_10
    return-void

    :pswitch_6
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->startAdaptiveBrightnessStatsTracker()V

    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->enableColorSampling()V

    return-void

    :pswitch_7
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->stopAdaptiveBrightnessStatsTracker()V

    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->disableColorSampling()V

    return-void

    :pswitch_8
    move v2, v3

    const/16 v16, 0x1

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;

    iget v1, v1, Landroid/os/Message;->arg1:I

    move/from16 v4, v16

    if-ne v1, v4, :cond_19

    move v7, v4

    goto :goto_11

    :cond_19
    move v7, v2

    :goto_11
    iget-object v5, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget v6, v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->brightness:F

    iget v8, v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->powerBrightnessFactor:F

    iget-boolean v9, v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->isUserSetBrightness:Z

    iget-boolean v10, v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->isDefaultBrightnessConfig:Z

    iget-wide v11, v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->timestamp:J

    iget-object v13, v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->uniqueDisplayId:Ljava/lang/String;

    iget-object v14, v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->brightnessSpline:Landroid/util/Spline;

    invoke-static/range {v5 .. v14}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$mhandleBrightnessChanged(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;FZFZZJLjava/lang/String;Landroid/util/Spline;)V

    return-void

    :pswitch_9
    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$mbackgroundStart(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
