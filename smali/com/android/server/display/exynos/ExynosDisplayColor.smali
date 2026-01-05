.class public final Lcom/android/server/display/exynos/ExynosDisplayColor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public EXTENSION_OFF:Ljava/lang/String;

.field public EXTENSION_ON:Ljava/lang/String;

.field public HW_VER_8_0:Ljava/lang/String;

.field public bIsColortempOn:Z

.field public bIsRgbWeightOn:Z

.field public bgain_array:[Ljava/lang/String;

.field public cgc_dither_array:[Ljava/lang/String;

.field public colortemp_map:Ljava/util/TreeMap;

.field public eyetemp_array:[Ljava/lang/String;

.field public gamma_bypass_array:[Ljava/lang/String;

.field public gamma_ext_bypass_array:[Ljava/lang/String;

.field public gamma_matrix_bypass_array:[Ljava/lang/String;

.field public ggain_array:[Ljava/lang/String;

.field public hsc_bypass_array:[Ljava/lang/String;

.field public hw_ver:Ljava/lang/String;

.field public linear_matrix_bypass_array:[Ljava/lang/String;

.field public mColortempConvMethod:I

.field public mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

.field public mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

.field public rgain_array:[Ljava/lang/String;

.field public sharpness_array:[Ljava/lang/String;

.field public skincolor_array:[Ljava/lang/String;

.field public whitepoint_array:[Ljava/lang/String;


# direct methods
.method public static T2xy(I)[F
    .locals 13

    const/16 v0, 0x1b58

    const-wide/high16 v1, 0x4018000000000000L    # 6.0

    const-wide/high16 v3, 0x4022000000000000L    # 9.0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    if-gt p0, v0, :cond_0

    :try_start_0
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v0, v3

    const v3, -0x3f6c9375    # -4.607f

    mul-float/2addr v0, v3

    int-to-double v3, p0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v11, v11

    div-float/2addr v0, v11

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x403df06f    # 2.9678f

    mul-float/2addr v1, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    const v2, 0x3dcafa2f    # 0.09911f

    mul-float/2addr v0, v2

    int-to-float p0, p0

    div-float/2addr v0, p0

    add-float/2addr v0, v1

    const p0, 0x3e79eba7

    :goto_0
    add-float/2addr v0, p0

    goto :goto_1

    :cond_0
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v0, v3

    const v3, -0x3fff9724

    mul-float/2addr v0, v3

    int-to-double v3, p0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v11, v11

    div-float/2addr v0, v11

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3ff36e2f    # 1.9018f

    mul-float/2addr v1, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    const v2, 0x3e7d6b66    # 0.24748f

    mul-float/2addr v0, v2

    int-to-float p0, p0

    div-float/2addr v0, p0

    add-float/2addr v0, v1

    const p0, 0x3e72ba9d    # 0.23704f

    goto :goto_0

    :goto_1
    float-to-double v1, v0

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p0, v1

    const/high16 v1, -0x3fc00000    # -3.0f

    mul-float/2addr p0, v1

    const v1, 0x4037ae14    # 2.87f

    mul-float/2addr v1, v0

    add-float/2addr v1, p0

    const p0, 0x3e8ccccd    # 0.275f

    sub-float/2addr v1, p0

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v2, 0x0

    aput v0, p0, v2

    const/4 v0, 0x1

    aput v1, p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static calcChromaticAdaptation(IILcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;)[[F
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;->getFwdMethod()[[F

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;->getRewMethod()[[F

    move-result-object p2

    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->T2xy(I)[F

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->T2xy(I)[F

    move-result-object p1

    aget v5, p0, v3

    aget p0, p0, v2

    invoke-static {v5, p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->xyY2XYZ(FF)[F

    move-result-object p0

    aget v5, p1, v3

    aget p1, p1, v2

    invoke-static {v5, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->xyY2XYZ(FF)[F

    move-result-object p1

    aget v5, p0, v3

    new-array v6, v2, [F

    aput v5, v6, v3

    aget v5, p0, v2

    new-array v7, v2, [F

    aput v5, v7, v3

    aget p0, p0, v1

    new-array v5, v2, [F

    aput p0, v5, v3

    filled-new-array {v6, v7, v5}, [[F

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->matrixMultiplication([[F[[F)[[F

    move-result-object p0

    aget v5, p1, v3

    new-array v6, v2, [F

    aput v5, v6, v3

    aget v5, p1, v2

    new-array v7, v2, [F

    aput v5, v7, v3

    aget p1, p1, v1

    new-array v5, v2, [F

    aput p1, v5, v3

    filled-new-array {v6, v7, v5}, [[F

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->matrixMultiplication([[F[[F)[[F

    move-result-object p1

    aget-object v5, p1, v3

    aget v5, v5, v3

    aget-object v6, p0, v3

    aget v6, v6, v3

    div-float/2addr v5, v6

    const/4 v6, 0x0

    new-array v7, v0, [F

    aput v5, v7, v3

    aput v6, v7, v2

    aput v6, v7, v1

    aget-object v5, p1, v2

    aget v5, v5, v3

    aget-object v8, p0, v2

    aget v8, v8, v3

    div-float/2addr v5, v8

    new-array v8, v0, [F

    aput v6, v8, v3

    aput v5, v8, v2

    aput v6, v8, v1

    aget-object p1, p1, v1

    aget p1, p1, v3

    aget-object p0, p0, v1

    aget p0, p0, v3

    div-float/2addr p1, p0

    new-array p0, v0, [F

    aput v6, p0, v3

    aput v6, p0, v2

    aput p1, p0, v1

    filled-new-array {v7, v8, p0}, [[F

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->matrixMultiplication([[F[[F)[[F

    move-result-object p0

    invoke-static {p0, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->matrixMultiplication([[F[[F)[[F

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static xyY2XYZ(FF)[F
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    :try_start_0
    new-array p0, v0, [F

    fill-array-data p0, :array_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v2, p0, v1

    div-float/2addr v2, p1

    sub-float p0, v1, p0

    sub-float/2addr p0, p1

    mul-float/2addr p0, v1

    div-float/2addr p0, p1

    new-array p1, v0, [F

    const/4 v0, 0x0

    aput v2, p1, v0

    const/4 v0, 0x1

    aput v1, p1, v0

    const/4 v0, 0x2

    aput p0, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final BYPASS_XML_FILE_PATH()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    const-string/jumbo v0, "calib_data_bypass.xml"

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getColorModePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, "calib_data_colormode0.xml"

    const-string v1, ".xml"

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "bypass"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v3, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    const-string/jumbo v5, "xml"

    invoke-virtual {v4, v5}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v4, "subxml"

    invoke-static {v3, p1, v2, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v2, p1

    const/4 v4, 0x1

    if-ge v2, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v2, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {v2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    aget-object p1, p1, v0

    const-string/jumbo v2, "\\s*,\\s*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "_"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p1, v0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    return-object v3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2
.end method

.method public final getColorTempFromXml(I)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "getColorTempFromXml: failed to find "

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_map:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_map:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_map:Ljava/util/TreeMap;

    invoke-virtual {p0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_map:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_map:Ljava/util/TreeMap;

    invoke-virtual {p0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    const-string p0, "ExynosDisplayColor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method public final loadColorTempXml()V
    .locals 6

    const-string/jumbo v0, "linear_matrix"

    const-string/jumbo v1, "loadColorTempXml: invalid data in "

    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_map:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    const-string/jumbo v3, "calib_data_colortemp.xml"

    invoke-virtual {v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    const-string/jumbo v4, "xml"

    invoke-virtual {v3, v4}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const-string/jumbo v3, "colortemp"

    invoke-static {v2, v3, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "temp"

    invoke-static {v2, v0, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXMLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    array-length v4, v3

    array-length v5, v0

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_map:Ljava/util/TreeMap;

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v2, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-string p0, "ExynosDisplayColor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method public final setColorTempOn(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bIsColortempOn:Z

    if-eqz v2, :cond_2

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mColortempConvMethod:I

    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;->values()[Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;

    move-result-object v2

    array-length v2, v2

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->loadColorTempXml()V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_map:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->linear_matrix_bypass_array:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v0, "linear_matrix"

    if-nez p1, :cond_3

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "bypass"

    invoke-static {p1, v2, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->linear_matrix_bypass_array:[Ljava/lang/String;

    :cond_3
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->linear_matrix_bypass_array:[Ljava/lang/String;

    if-eqz p1, :cond_4

    array-length p1, p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->linear_matrix_bypass_array:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method public final setColorTempValue(II)V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bIsColortempOn:Z

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    iget v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mColortempConvMethod:I

    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;->values()[Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mColortempConvMethod:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;->values()[Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_2

    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;->values()[Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;

    move-result-object v2

    aget-object v0, v2, v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;->values()[Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;

    move-result-object v0

    aget-object v0, v0, v2

    :goto_1
    invoke-static {p1, p2, v0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->calcChromaticAdaptation(IILcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;)[[F

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    sget-object p2, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;->P3:Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;

    invoke-virtual {p2, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;->execute([[F)[[F

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v1

    :goto_2
    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->toString([[F)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/display/exynos/ExynosDisplayColor;->getColorTempFromXml(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    const-string/jumbo p1, "linear_matrix"

    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_4
    return-void
.end method

.method public final setEdgeSharpnessOn(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    const-string/jumbo v1, "de"

    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo p1, "calib_data_sharpness.xml"

    invoke-virtual {v0, p1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "sharpness"

    invoke-static {p1, v2, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->sharpness_array:[Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "bypass"

    invoke-static {p1, v2, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->sharpness_array:[Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->sharpness_array:[Ljava/lang/String;

    if-eqz p1, :cond_2

    array-length v2, p1

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    aget-object p1, p1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_2

    const-string v2, "ExynosDisplayColor"

    const-string/jumbo v3, "setEdgeSharpnessOn()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {p0, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    :cond_2
    :goto_3
    return-void
.end method

.method public final setGammaBypass()V
    .locals 8

    const-string/jumbo v0, "cgc_dither"

    const-string/jumbo v1, "gamma"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_bypass_array:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v4, "bypass"

    const/4 v5, 0x0

    if-nez v3, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v5, v3, v4, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_bypass_array:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_ext_bypass_array:[Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xa

    invoke-static {v6, v5, v3, v4, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_bypass_array:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x8

    invoke-static {v6, v5, v3, v4, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_ext_bypass_array:[Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v3, v2

    move-object v4, v3

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_bypass_array:[Ljava/lang/String;

    if-eqz v1, :cond_7

    array-length v1, v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_bypass_array:[Ljava/lang/String;

    aget-object v1, v1, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_ext_bypass_array:[Ljava/lang/String;

    if-eqz v3, :cond_3

    aget-object v3, v3, v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v4, v3

    move-object v3, v1

    move-object v1, v4

    move-object v4, v2

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    if-eqz v4, :cond_5

    array-length v6, v4

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    aget-object v2, v4, v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v4

    move-object v7, v3

    move-object v3, v1

    move-object v1, v4

    move-object v4, v7

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v3

    move-object v3, v4

    :cond_5
    :goto_3
    if-eqz v1, :cond_7

    const-string v4, "ExynosDisplayColor"

    const-string/jumbo v5, "setGammaBypass()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v4, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    :cond_6
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_OFF:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_ON:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final setHsvGainOn()V
    .locals 4

    const-string/jumbo v0, "hsc"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hsc_bypass_array:[Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "bypass"

    invoke-static {v1, v2, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hsc_bypass_array:[Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hsc_bypass_array:[Ljava/lang/String;

    if-eqz v1, :cond_2

    array-length v2, v1

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_2

    const-string v2, "ExynosDisplayColor"

    const-string/jumbo v3, "setHsvGainOn()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v2, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    :cond_2
    :goto_3
    return-void
.end method

.method public final setHsvGainValue(III)V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, ","

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, v1, Lcom/android/server/display/exynos/ExynosDisplayColor;->hsc_bypass_array:[Ljava/lang/String;

    if-eqz v4, :cond_8

    array-length v5, v4

    if-nez v5, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iget-object v6, v1, Lcom/android/server/display/exynos/ExynosDisplayColor;->hw_ver:Ljava/lang/String;

    const/4 v7, 0x1

    const/16 v8, 0xd

    const/16 v9, 0xc

    const/16 v10, 0xb

    const/16 v11, 0xa

    const/16 v12, 0x9

    const/16 v13, 0xff

    if-nez v6, :cond_1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v12

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    add-int/lit8 v6, p2, -0x7f

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    add-int/lit8 v6, p1, -0x7f

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    add-int/lit8 v6, p3, -0x7f

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0xe

    aput-object v6, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x92

    aput-object v6, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x93

    aput-object v6, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x94

    aput-object v6, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x95

    aput-object v6, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x96

    aput-object v6, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x97

    aput-object v6, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x98

    aput-object v6, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x99

    aput-object v6, v4, v8

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    iget-object v14, v1, Lcom/android/server/display/exynos/ExynosDisplayColor;->HW_VER_8_0:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    const/16 v14, 0x42

    const/16 v15, 0x8

    if-ltz v6, :cond_3

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    aput-object v6, v4, v8

    add-int/lit8 v6, p1, -0x7f

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x5

    aput-object v6, v4, v8

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x6

    aput-object v6, v4, v8

    add-int/lit8 v6, p2, -0x7f

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x7

    aput-object v6, v4, v8

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v15

    add-int/lit8 v6, p3, -0x7f

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v12

    const/16 v6, 0x31

    move v8, v6

    :goto_0
    if-gt v8, v14, :cond_2

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x3a

    aput-object v6, v4, v8

    goto :goto_2

    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v15

    add-int/lit8 v6, p1, -0x7f

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v12

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    add-int/lit8 v6, p2, -0x7f

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    add-int/lit8 v6, p3, -0x7f

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    const/16 v6, 0x39

    move v8, v6

    :goto_1
    const/16 v9, 0x4a

    if-gt v8, v9, :cond_4

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v14

    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_6

    array-length v6, v4

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v4, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_5
    aget-object v6, v4, v5

    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_5
    if-eqz v3, :cond_8

    const-string v0, "ExynosDisplayColor"

    const-string/jumbo v2, "setHsvGainValue()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    const-string/jumbo v2, "hsc"

    invoke-virtual {v0, v2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    :cond_8
    :goto_6
    return-void
.end method

.method public final setRgbGainOn(I)V
    .locals 3

    const-string/jumbo v0, "calib_data_rgbgain.xml"

    const-string/jumbo v1, "rgbgain"

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "red"

    invoke-static {p1, v1, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_array:[Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "green"

    invoke-static {p1, v1, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_array:[Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "blue"

    invoke-static {p1, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_array:[Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_array:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_array:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_array:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setGammaBypass()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final setRgbGainValue(III)V
    .locals 5

    const-string v0, ","

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_array:[Ljava/lang/String;

    if-eqz v1, :cond_7

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_array:[Ljava/lang/String;

    if-eqz v2, :cond_7

    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_array:[Ljava/lang/String;

    if-eqz v3, :cond_7

    array-length v4, v3

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    array-length v1, v1

    if-lt p1, v1, :cond_3

    goto :goto_0

    :cond_3
    array-length v1, v2

    if-lt p2, v1, :cond_4

    goto :goto_0

    :cond_4
    array-length v1, v3

    if-lt p3, v1, :cond_5

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_array:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_array:[Ljava/lang/String;

    aget-object p1, p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_array:[Ljava/lang/String;

    aget-object p1, p1, p3

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const-string p2, "ExynosDisplayColor"

    const-string/jumbo p3, "setGammaValue()"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_OFF:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayColor;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_0
    return-void
.end method

.method public final setRgbWeightOn(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bIsRgbWeightOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_2

    :try_start_1
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_matrix_bypass_array:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v1, "gamma_matrix"

    if-nez p1, :cond_1

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "bypass"

    invoke-static {p1, v2, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_matrix_bypass_array:[Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_matrix_bypass_array:[Ljava/lang/String;

    if-eqz p1, :cond_2

    array-length p1, p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {p1, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_matrix_bypass_array:[Ljava/lang/String;

    aget-object p0, p0, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final setSkinColorOn(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    const-string/jumbo v1, "hsc"

    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo p1, "calib_data_skincolor.xml"

    invoke-virtual {v0, p1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "skincolor"

    invoke-static {p1, v2, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->skincolor_array:[Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "bypass"

    invoke-static {p1, v2, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->skincolor_array:[Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->skincolor_array:[Ljava/lang/String;

    if-eqz p1, :cond_2

    array-length v2, p1

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    aget-object p1, p1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_2

    const-string v2, "ExynosDisplayColor"

    const-string/jumbo v3, "setSkinColorOn()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {p0, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    :cond_2
    :goto_3
    return-void
.end method

.method public final setWhitePointColorOn(I)V
    .locals 14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hw_ver:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    const-string/jumbo v4, "calib_data_whitepoint.xml"

    const-string/jumbo v5, "cgc_dither"

    const/4 v6, 0x0

    const-string/jumbo v7, "whitepoint"

    const/4 v8, 0x0

    const-string/jumbo v9, "bypass"

    const-string v10, "ExynosDisplayColor"

    if-nez v2, :cond_6

    const-string/jumbo v2, "cgc"

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {v3, v4}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->whitepoint_array:[Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v4, v8

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v9, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->whitepoint_array:[Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->whitepoint_array:[Ljava/lang/String;

    if-eqz p1, :cond_12

    array-length v4, p1

    if-nez v4, :cond_1

    goto/16 :goto_c

    :cond_1
    aget-object p1, p1, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9, v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    goto :goto_1

    :catch_1
    move-exception v4

    move-object v13, v4

    move-object v4, p1

    move-object p1, v13

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    if-eqz v4, :cond_4

    array-length v7, v4

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    aget-object v8, v4, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v4

    :cond_4
    :goto_3
    if-eqz p1, :cond_12

    const-string/jumbo v4, "setWhitePointColorOn()"

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_5

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {p0, v5}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    :cond_5
    invoke-virtual {v3, v2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    goto/16 :goto_c

    :cond_6
    const-string/jumbo v2, "cgc17_con"

    const-string/jumbo v11, "cgc17_enc"

    if-eqz p1, :cond_7

    invoke-virtual {v3, v4}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH()Ljava/lang/String;

    move-result-object p1

    move-object v7, v9

    :goto_4
    :try_start_2
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    if-nez v4, :cond_8

    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9, v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    goto :goto_5

    :catch_2
    move-exception p0

    goto/16 :goto_b

    :cond_8
    :goto_5
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    if-eqz v4, :cond_a

    array-length v9, v4

    if-nez v9, :cond_9

    goto :goto_6

    :cond_9
    aget-object v8, v4, v6

    :cond_a
    :goto_6
    if-eqz v8, :cond_b

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {p0, v5}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    :cond_b
    move p0, v6

    :goto_7
    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ge p0, v4, :cond_f

    move v4, v6

    :goto_8
    const/16 v8, 0x11

    if-ge v4, v8, :cond_e

    invoke-static {p0, v4, p1, v7, v11}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d

    array-length v9, v8

    if-ge v9, v5, :cond_c

    goto :goto_9

    :cond_c
    aget-object v8, v8, v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v12, "cgc17_idx"

    invoke-virtual {v3, v12}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v9}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v3, v11}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_d
    :goto_9
    const-string/jumbo p0, "xml cgc17_enc not found"

    invoke-static {v10, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_e
    add-int/lit8 p0, p0, 0x1

    goto :goto_7

    :cond_f
    const-string/jumbo p0, "cgc17_dec"

    invoke-virtual {v3, p0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v4, "7"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    invoke-static {v6, v6, p1, v7, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    array-length p1, p0

    if-ge p1, v5, :cond_10

    goto :goto_a

    :cond_10
    aget-object p0, p0, v6

    invoke-virtual {v3, v2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_c

    :cond_11
    :goto_a
    const-string/jumbo p0, "xml cgc17_con not found"

    invoke-static {v10, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_c

    :goto_b
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    :goto_c
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "elaspedTime: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setXMLColorModesImpl(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "setXMLColorModesImpl: xml_path="

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->getColorModePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v2, "bypass"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    const-string/jumbo v3, "calib_data_colormode0.xml"

    invoke-virtual {v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    const-string/jumbo v4, "xml"

    invoke-virtual {v3, v4}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "subxml"

    const/4 v4, 0x0

    invoke-static {v2, p1, v4, v3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "tune"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    const-string v2, "ExynosDisplayColor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mode_name="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1, p1}, Lcom/android/server/display/exynos/ExynosDisplayTune;->setCalibrationDQE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    const-string/jumbo v0, "gamma_ext"

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    const-string/jumbo p2, "gamma"

    invoke-virtual {p0, p2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    :cond_0
    return-void
.end method
