.class public final Lcom/android/server/display/config/DisplayBrightnessMappingConfig;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEFAULT_BRIGHTNESS_MAPPING_KEY:Ljava/lang/String;


# instance fields
.field public final mBrightnessLevelsLuxMap:Ljava/util/Map;

.field public final mBrightnessLevelsMap:Ljava/util/Map;

.field public final mBrightnessLevelsNits:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/display/config/AutoBrightnessModeName;->_default:Lcom/android/server/display/config/AutoBrightnessModeName;

    invoke-virtual {v1}, Lcom/android/server/display/config/AutoBrightnessModeName;->getRawName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/display/config/AutoBrightnessSettingName;->normal:Lcom/android/server/display/config/AutoBrightnessSettingName;

    invoke-virtual {v1}, Lcom/android/server/display/config/AutoBrightnessSettingName;->getRawName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->DEFAULT_BRIGHTNESS_MAPPING_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/AutoBrightness;Landroid/util/Spline;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsLuxMap:Ljava/util/Map;

    iget-object p2, p2, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {p2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/android/server/display/config/AutoBrightness;->getLuxToBrightnessMapping()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p3}, Lcom/android/server/display/config/AutoBrightness;->getLuxToBrightnessMapping()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_6

    invoke-virtual {p3}, Lcom/android/server/display/config/AutoBrightness;->getLuxToBrightnessMapping()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/display/config/LuxToBrightnessMapping;

    iget-object v1, p3, Lcom/android/server/display/config/LuxToBrightnessMapping;->map:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    invoke-virtual {v1}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [F

    new-array v3, v1, [F

    move v4, v0

    :goto_1
    if-ge v4, v1, :cond_0

    iget-object v5, p3, Lcom/android/server/display/config/LuxToBrightnessMapping;->map:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    invoke-virtual {v5}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;

    iget-object v5, v5, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->second:Ljava/math/BigDecimal;

    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    move-result v5

    invoke-virtual {p4, v5}, Landroid/util/Spline;->interpolate(F)F

    move-result v5

    aput v5, v2, v4

    iget-object v5, p3, Lcom/android/server/display/config/LuxToBrightnessMapping;->map:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    invoke-virtual {v5}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;

    iget-object v5, v5, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->first:Ljava/math/BigDecimal;

    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_5

    aget v1, v3, v0

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p3, Lcom/android/server/display/config/LuxToBrightnessMapping;->mode:Lcom/android/server/display/config/AutoBrightnessModeName;

    if-nez v4, :cond_1

    sget-object v4, Lcom/android/server/display/config/AutoBrightnessModeName;->_default:Lcom/android/server/display/config/AutoBrightnessModeName;

    invoke-virtual {v4}, Lcom/android/server/display/config/AutoBrightnessModeName;->getRawName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lcom/android/server/display/config/AutoBrightnessModeName;->getRawName()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/android/server/display/config/LuxToBrightnessMapping;->setting:Lcom/android/server/display/config/AutoBrightnessSettingName;

    if-nez p3, :cond_2

    sget-object p3, Lcom/android/server/display/config/AutoBrightnessSettingName;->normal:Lcom/android/server/display/config/AutoBrightnessSettingName;

    invoke-virtual {p3}, Lcom/android/server/display/config/AutoBrightnessSettingName;->getRawName()Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_2
    invoke-virtual {p3}, Lcom/android/server/display/config/AutoBrightnessSettingName;->getRawName()Ljava/lang/String;

    move-result-object p3

    :goto_3
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsLuxMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsLuxMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A display brightness mapping with key "

    const-string p2, " already exists"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "The first lux value in the display brightness mapping must be 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A display brightness mapping should not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    iget-object p2, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsMap:Ljava/util/Map;

    check-cast p2, Ljava/util/HashMap;

    sget-object p3, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->DEFAULT_BRIGHTNESS_MAPPING_KEY:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsLuxMap:Ljava/util/Map;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_4

    :cond_7
    return-void

    :cond_8
    :goto_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1070097

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/display/DisplayDeviceConfig;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsNits:[F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x107009c

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [F

    move v2, v0

    :goto_5
    array-length v3, p2

    if-ge v2, v3, :cond_9

    add-int/lit8 v3, v2, 0x1

    aget v2, p2, v2

    int-to-float v2, v2

    aput v2, v1, v3

    move v2, v3

    goto :goto_5

    :cond_9
    iget-object p2, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsLuxMap:Ljava/util/Map;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x107009a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsMap:Ljava/util/Map;

    array-length p2, p1

    new-array p2, p2, [F

    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_a

    aget v1, p1, v0

    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v1

    invoke-virtual {p4, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static autoBrightnessModeToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/android/server/display/config/AutoBrightnessModeName;->bedtime_wear:Lcom/android/server/display/config/AutoBrightnessModeName;

    invoke-virtual {p0}, Lcom/android/server/display/config/AutoBrightnessModeName;->getRawName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown auto-brightness mode: "

    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/android/server/display/config/AutoBrightnessModeName;->doze:Lcom/android/server/display/config/AutoBrightnessModeName;

    invoke-virtual {p0}, Lcom/android/server/display/config/AutoBrightnessModeName;->getRawName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/server/display/config/AutoBrightnessModeName;->idle:Lcom/android/server/display/config/AutoBrightnessModeName;

    invoke-virtual {p0}, Lcom/android/server/display/config/AutoBrightnessModeName;->getRawName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/server/display/config/AutoBrightnessModeName;->_default:Lcom/android/server/display/config/AutoBrightnessModeName;

    invoke-virtual {p0}, Lcom/android/server/display/config/AutoBrightnessModeName;->getRawName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static autoBrightnessPresetToString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/android/server/display/config/AutoBrightnessSettingName;->dim:Lcom/android/server/display/config/AutoBrightnessSettingName;

    invoke-virtual {p0}, Lcom/android/server/display/config/AutoBrightnessSettingName;->getRawName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown auto-brightness preset value: "

    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/android/server/display/config/AutoBrightnessSettingName;->normal:Lcom/android/server/display/config/AutoBrightnessSettingName;

    invoke-virtual {p0}, Lcom/android/server/display/config/AutoBrightnessSettingName;->getRawName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/server/display/config/AutoBrightnessSettingName;->bright:Lcom/android/server/display/config/AutoBrightnessSettingName;

    invoke-virtual {p0}, Lcom/android/server/display/config/AutoBrightnessSettingName;->getRawName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsLuxMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ", "

    const-string v5, "="

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v0, v2, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    invoke-static {v7}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v3, :cond_3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v6, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mBrightnessLevelsNits= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->mBrightnessLevelsNits:[F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", mBrightnessLevelsLuxMap= "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", mBrightnessLevelsMap= "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
