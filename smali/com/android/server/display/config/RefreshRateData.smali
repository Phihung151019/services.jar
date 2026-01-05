.class public Lcom/android/server/display/config/RefreshRateData;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEFAULT_REFRESH_RATE_DATA:Lcom/android/server/display/config/RefreshRateData;


# instance fields
.field public final defaultPeakRefreshRate:I

.field public final defaultRefreshRate:I

.field public final defaultRefreshRateInHbmHdr:I

.field public final defaultRefreshRateInHbmSunlight:I

.field public final lowLightBlockingZoneSupportedModes:Ljava/util/List;

.field public final lowPowerSupportedModes:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/android/server/display/config/RefreshRateData;->loadRefreshRateData(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/RefreshRateData;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/config/RefreshRateData;->DEFAULT_REFRESH_RATE_DATA:Lcom/android/server/display/config/RefreshRateData;

    return-void
.end method

.method public constructor <init>(IIIILjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Lcom/android/server/display/config/SupportedModeData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/display/config/SupportedModeData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRate:I

    iput p2, p0, Lcom/android/server/display/config/RefreshRateData;->defaultPeakRefreshRate:I

    iput p3, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmHdr:I

    iput p4, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmSunlight:I

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateData;->lowPowerSupportedModes:Ljava/util/List;

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateData;->lowLightBlockingZoneSupportedModes:Ljava/util/List;

    return-void
.end method

.method public static loadRefreshRateData(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/RefreshRateData;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->refreshRate:Lcom/android/server/display/config/RefreshRateConfigs;

    :goto_0
    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRate:Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    :goto_1
    move v3, v1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_3

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz v1, :cond_2

    const v1, 0x10e0146

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_1

    :cond_2
    const v1, 0x10e008c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_1

    :cond_3
    const/16 v1, 0x3c

    goto :goto_1

    :goto_2
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    iget-object v2, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultPeakRefreshRate:Ljava/math/BigInteger;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    :goto_3
    move v4, v2

    goto :goto_4

    :cond_4
    if-eqz p1, :cond_6

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz v2, :cond_5

    const v2, 0x10e0145

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto :goto_3

    :cond_5
    const v2, 0x10e0089

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto :goto_3

    :cond_6
    move v4, v1

    :goto_4
    if-eqz p0, :cond_7

    iget-object v2, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRateInHbmHdr:Ljava/math/BigInteger;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    :goto_5
    move v5, v2

    goto :goto_6

    :cond_7
    if-eqz p1, :cond_8

    const v2, 0x10e008d

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto :goto_5

    :cond_8
    move v5, v1

    :goto_6
    if-eqz p0, :cond_a

    iget-object v2, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRateInHbmSunlight:Ljava/math/BigInteger;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    :cond_9
    :goto_7
    move v6, v1

    goto :goto_8

    :cond_a
    if-eqz p1, :cond_9

    const v1, 0x10e008e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_7

    :goto_8
    if-nez p0, :cond_b

    move-object p1, v0

    goto :goto_9

    :cond_b
    iget-object p1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->lowPowerSupportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    :goto_9
    invoke-static {p1}, Lcom/android/server/display/config/SupportedModeData;->load(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)Ljava/util/List;

    move-result-object v7

    if-nez p0, :cond_c

    move-object p0, v0

    goto :goto_a

    :cond_c
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateConfigs;->lowerBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

    :goto_a
    if-nez p0, :cond_d

    goto :goto_b

    :cond_d
    iget-object v0, p0, Lcom/android/server/display/config/BlockingZoneConfig;->supportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    :goto_b
    invoke-static {v0}, Lcom/android/server/display/config/SupportedModeData;->load(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)Ljava/util/List;

    move-result-object v8

    new-instance v2, Lcom/android/server/display/config/RefreshRateData;

    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/config/RefreshRateData;-><init>(IIIILjava/util/List;Ljava/util/List;)V

    return-object v2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "RefreshRateData {defaultRefreshRate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", defaultPeakRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/RefreshRateData;->defaultPeakRefreshRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", defaultRefreshRateInHbmHdr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmHdr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", defaultRefreshRateInHbmSunlight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmSunlight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lowPowerSupportedModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/RefreshRateData;->lowPowerSupportedModes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lowLightBlockingZoneSupportedModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateData;->lowLightBlockingZoneSupportedModes:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "} "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
