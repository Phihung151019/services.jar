.class public Lcom/android/server/display/config/SensorData;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final UNSPECIFIED_SENSOR_DATA:Lcom/android/server/display/config/SensorData;


# instance fields
.field public final maxRefreshRate:F

.field public final minRefreshRate:F

.field public final name:Ljava/lang/String;

.field public final supportedModes:Ljava/util/List;

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/display/config/SensorData;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/config/SensorData;->UNSPECIFIED_SENSOR_DATA:Lcom/android/server/display/config/SensorData;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;FFLjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FFLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FF",
            "Ljava/util/List<",
            "Lcom/android/server/display/config/SupportedModeData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/display/config/SensorData;->minRefreshRate:F

    iput p4, p0, Lcom/android/server/display/config/SensorData;->maxRefreshRate:F

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/SensorData;->supportedModes:Ljava/util/List;

    return-void
.end method

.method public static loadProxSensorConfig(Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/SensorData;
    .locals 7

    iget-object v0, p1, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Ljava/util/List;

    :cond_0
    iget-object p1, p1, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    sget-object v1, Lcom/android/server/display/config/SensorData;->UNSPECIFIED_SENSOR_DATA:Lcom/android/server/display/config/SensorData;

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :cond_2
    if-ge v3, v0, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/display/config/SensorDetails;

    iget-object v5, v4, Lcom/android/server/display/config/SensorDetails;->featureFlag:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mUseFusionProxSensor:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v6}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mUseFusionProxSensor:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    iget-object v6, v6, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->mName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lcom/android/server/display/config/SensorData;->loadSensorData(Lcom/android/server/display/config/SensorDetails;)Lcom/android/server/display/config/SensorData;

    move-result-object p0

    goto :goto_0

    :cond_3
    move-object p0, v1

    :goto_0
    if-ne v1, p0, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/display/config/SensorDetails;

    iget-object v4, v3, Lcom/android/server/display/config/SensorDetails;->featureFlag:Ljava/lang/String;

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v3}, Lcom/android/server/display/config/SensorData;->loadSensorData(Lcom/android/server/display/config/SensorDetails;)Lcom/android/server/display/config/SensorData;

    move-result-object p0

    :cond_5
    if-eq v1, p0, :cond_6

    iget-object p1, p0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p0, 0x0

    :cond_6
    return-object p0
.end method

.method public static loadSensorData(Lcom/android/server/display/config/SensorDetails;)Lcom/android/server/display/config/SensorData;
    .locals 8

    iget-object v0, p0, Lcom/android/server/display/config/SensorDetails;->refreshRate:Lcom/android/server/display/config/RefreshRateRange;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/display/config/RefreshRateRange;->minimum:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->floatValue()F

    move-result v1

    iget-object v0, v0, Lcom/android/server/display/config/RefreshRateRange;->maximum:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    :goto_0
    move v6, v0

    move v5, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/android/server/display/config/SensorDetails;->supportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    invoke-static {v0}, Lcom/android/server/display/config/SupportedModeData;->load(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)Ljava/util/List;

    move-result-object v7

    new-instance v2, Lcom/android/server/display/config/SensorData;

    iget-object v3, p0, Lcom/android/server/display/config/SensorDetails;->type:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/display/config/SensorDetails;->name:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;FFLjava/util/List;)V

    return-object v2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SensorData{type= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refreshRateRange: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/SensorData;->minRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/SensorData;->maxRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "], supportedModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/config/SensorData;->supportedModes:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
