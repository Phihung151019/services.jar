.class public final Lcom/android/server/accessibility/CVDCalculator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public CVDSeverity:D

.field public CVDType:I

.field public SpotsU:[D

.field public SpotsV:[D

.field public c_index:D

.field public mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

.field public mInputNums:[I

.field public majorAngle:D

.field public majorRadius:D

.field public minorRadius:D

.field public u:[D

.field public v:[D


# virtual methods
.method public final getRGBCMY(IIDD)[I
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    const/16 v2, 0xc

    new-array v8, v2, [I

    const-string/jumbo v2, "getRGBCMY "

    const-string v6, ", CVDType : "

    const-string v7, ", Severity : "

    invoke-static {v1, v3, v2, v6, v7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", user : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, p5

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v9, "CVDCalculator"

    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/16 v15, 0xb

    const/16 v16, 0xa

    const/16 v17, 0x9

    const/4 v2, 0x6

    const/16 v18, 0x8

    const/4 v9, 0x2

    const/16 v19, 0x7

    const/4 v10, 0x1

    const v20, 0xff00

    const/16 v21, 0xff

    if-nez v1, :cond_2

    if-eqz v3, :cond_1

    if-eq v3, v10, :cond_1

    if-ne v3, v9, :cond_0

    goto :goto_0

    :cond_0
    aput v20, v8, v14

    aput v21, v8, v10

    aput v21, v8, v9

    aput v21, v8, v13

    aput v20, v8, v12

    aput v21, v8, v11

    aput v21, v8, v2

    aput v21, v8, v19

    aput v20, v8, v18

    aput v21, v8, v17

    aput v21, v8, v16

    aput v21, v8, v15

    return-object v8

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    move/from16 v20, v2

    const/4 v2, 0x1

    move/from16 v22, v11

    move/from16 v11, v20

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v1

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v2, v1

    const/4 v1, 0x4

    move v3, v2

    const/4 v2, 0x1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v23, v12

    move v12, v3

    move/from16 v3, p2

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v1

    mul-int/lit16 v2, v12, 0x100

    add-int/2addr v2, v1

    aput v2, v8, v14

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v12

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v1

    mul-int/lit16 v12, v12, 0x100

    add-int/2addr v12, v1

    aput v12, v8, v10

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v10

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v1

    mul-int/lit16 v10, v10, 0x100

    add-int/2addr v10, v1

    aput v10, v8, v9

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v9

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x6

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v1

    mul-int/lit16 v9, v9, 0x100

    add-int/2addr v9, v1

    aput v9, v8, v13

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    const/4 v2, 0x3

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v9

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x6

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v1

    mul-int/lit16 v9, v9, 0x100

    add-int/2addr v9, v1

    aput v9, v8, v23

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    const/4 v2, 0x5

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v9

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x6

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v1

    mul-int/lit16 v9, v9, 0x100

    add-int/2addr v9, v1

    aput v9, v8, v22

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v9

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v1

    mul-int/lit16 v9, v9, 0x100

    add-int/2addr v9, v1

    aput v9, v8, v11

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x5

    const/4 v2, 0x3

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v9

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v1

    mul-int/lit16 v9, v9, 0x100

    add-int/2addr v9, v1

    aput v9, v8, v19

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v9

    iget-object v0, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v0

    mul-int/lit16 v9, v9, 0x100

    add-int/2addr v9, v0

    aput v9, v8, v18

    aput v21, v8, v17

    aput v21, v8, v16

    aput v21, v8, v15

    return-object v8

    :cond_2
    move/from16 v22, v11

    move/from16 v23, v12

    move v11, v2

    if-ne v1, v10, :cond_6

    if-eqz v3, :cond_4

    if-eq v3, v10, :cond_4

    if-ne v3, v9, :cond_3

    goto :goto_1

    :cond_3
    aput v20, v8, v14

    aput v21, v8, v10

    aput v21, v8, v9

    aput v21, v8, v13

    aput v20, v8, v23

    aput v21, v8, v22

    aput v21, v8, v11

    aput v21, v8, v19

    aput v20, v8, v18

    aput v21, v8, v17

    aput v21, v8, v16

    aput v21, v8, v15

    return-object v8

    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v12

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    move/from16 v3, p2

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v1

    mul-int/lit16 v12, v12, 0x100

    add-int/2addr v12, v1

    aput v12, v8, v14

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v12

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v1

    mul-int/lit16 v12, v12, 0x100

    add-int/2addr v12, v1

    aput v12, v8, v10

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v10

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v1

    mul-int/lit16 v10, v10, 0x100

    add-int/2addr v10, v1

    aput v10, v8, v9

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v9

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x6

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v1

    mul-int/lit16 v9, v9, 0x100

    add-int/2addr v9, v1

    aput v9, v8, v13

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    const/4 v2, 0x3

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v9

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x6

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v1

    mul-int/lit16 v9, v9, 0x100

    add-int/2addr v9, v1

    aput v9, v8, v23

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    const/4 v2, 0x5

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v9

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x6

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v1

    mul-int/lit16 v9, v9, 0x100

    add-int/2addr v9, v1

    aput v9, v8, v22

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v9

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v1

    mul-int/lit16 v9, v9, 0x100

    add-int/2addr v9, v1

    aput v9, v8, v11

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x5

    const/4 v2, 0x3

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v9

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v1

    mul-int/lit16 v9, v9, 0x100

    add-int/2addr v9, v1

    aput v9, v8, v19

    iget-object v1, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-static/range {v1 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v9

    iget-object v0, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v0

    mul-int/lit16 v9, v9, 0x100

    add-int/2addr v9, v0

    aput v9, v8, v18

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double v0, v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    if-ge v0, v11, :cond_5

    const/16 v0, 0xcc

    aput v0, v8, v17

    aput v0, v8, v16

    aput v0, v8, v15

    return-object v8

    :cond_5
    aput v21, v8, v17

    aput v21, v8, v16

    aput v21, v8, v15

    return-object v8

    :cond_6
    aput v20, v8, v14

    aput v21, v8, v10

    aput v21, v8, v9

    aput v21, v8, v13

    aput v20, v8, v23

    aput v21, v8, v22

    aput v21, v8, v11

    aput v21, v8, v19

    aput v20, v8, v18

    aput v21, v8, v17

    aput v21, v8, v16

    aput v21, v8, v15

    return-object v8
.end method
