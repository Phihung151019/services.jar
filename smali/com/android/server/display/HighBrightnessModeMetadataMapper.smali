.class public final Lcom/android/server/display/HighBrightnessModeMetadataMapper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHighBrightnessModeMetadataMap:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/HighBrightnessModeMetadataMapper;->mHighBrightnessModeMetadataMap:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final getHighBrightnessModeMetadataLocked(Lcom/android/server/display/LogicalDisplay;)Lcom/android/server/display/HighBrightnessModeMetadata;
    .locals 3

    iget-object v0, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Display Device is null in DisplayPowerController for display: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HighBrightnessModeMetadataMapper"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    if-eqz p1, :cond_1

    iget-boolean v2, p1, Lcom/android/server/display/config/HighBrightnessModeData;->isHighBrightnessModeEnabled:Z

    if-nez v2, :cond_2

    :cond_1
    move-object p1, v1

    :cond_2
    if-nez p1, :cond_3

    return-object v1

    :cond_3
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeMetadataMapper;->mHighBrightnessModeMetadataMap:Landroid/util/ArrayMap;

    iget-object v0, v0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeMetadataMapper;->mHighBrightnessModeMetadataMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/HighBrightnessModeMetadata;

    return-object p0

    :cond_4
    new-instance p1, Lcom/android/server/display/HighBrightnessModeMetadata;

    invoke-direct {p1}, Lcom/android/server/display/HighBrightnessModeMetadata;-><init>()V

    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeMetadataMapper;->mHighBrightnessModeMetadataMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
