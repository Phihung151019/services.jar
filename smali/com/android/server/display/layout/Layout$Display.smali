.class public final Lcom/android/server/display/layout/Layout$Display;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAddress:Landroid/view/DisplayAddress;

.field public final mDisplayGroupName:Ljava/lang/String;

.field public final mIsEnabled:Z

.field public final mLeadDisplayAddress:Landroid/view/DisplayAddress;

.field public mLeadDisplayId:I

.field public final mLogicalDisplayId:I

.field public final mPosition:I

.field public final mPowerThrottlingMapId:Ljava/lang/String;

.field public final mRefreshRateZoneId:Ljava/lang/String;

.field public final mThermalBrightnessThrottlingMapId:Ljava/lang/String;

.field public final mThermalRefreshRateThrottlingMapId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/DisplayAddress;IZLjava/lang/String;Ljava/lang/String;ILandroid/view/DisplayAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    iput p2, p0, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    iput-boolean p3, p0, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    iput-object p4, p0, Lcom/android/server/display/layout/Layout$Display;->mDisplayGroupName:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/display/layout/Layout$Display;->mPosition:I

    iput-object p5, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalBrightnessThrottlingMapId:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayAddress:Landroid/view/DisplayAddress;

    iput-object p8, p0, Lcom/android/server/display/layout/Layout$Display;->mRefreshRateZoneId:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalRefreshRateThrottlingMapId:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/server/display/layout/Layout$Display;->mPowerThrottlingMapId:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayId:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/server/display/layout/Layout$Display;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/server/display/layout/Layout$Display;

    iget-boolean v0, p1, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/android/server/display/layout/Layout$Display;->mPosition:I

    iget v2, p0, Lcom/android/server/display/layout/Layout$Display;->mPosition:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    iget v2, p0, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/display/layout/Layout$Display;->mDisplayGroupName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/display/layout/Layout$Display;->mDisplayGroupName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    iget-object v2, p1, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalBrightnessThrottlingMapId:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/display/layout/Layout$Display;->mThermalBrightnessThrottlingMapId:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/display/layout/Layout$Display;->mRefreshRateZoneId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/layout/Layout$Display;->mRefreshRateZoneId:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayId:I

    iget v2, p1, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayId:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayAddress:Landroid/view/DisplayAddress;

    iget-object v2, p1, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayAddress:Landroid/view/DisplayAddress;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalRefreshRateThrottlingMapId:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/display/layout/Layout$Display;->mThermalRefreshRateThrottlingMapId:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/display/layout/Layout$Display;->mPowerThrottlingMapId:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/display/layout/Layout$Display;->mPowerThrottlingMapId:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/display/layout/Layout$Display;->mPosition:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mDisplayGroupName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalBrightnessThrottlingMapId:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/server/display/layout/Layout$Display;->mRefreshRateZoneId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayAddress:Landroid/view/DisplayAddress;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalRefreshRateThrottlingMapId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/server/display/layout/Layout$Display;->mPowerThrottlingMapId:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{dispId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ON"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "OFF"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), displayGroupName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mDisplayGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/server/display/layout/Layout$Display;->mPosition:I

    if-ne v2, v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    const-string v1, ", position: "

    invoke-static {v2, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mThermalBrightnessThrottlingMapId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalBrightnessThrottlingMapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefreshRateZoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mRefreshRateZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLeadDisplayId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLeadDisplayAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayAddress:Landroid/view/DisplayAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mThermalRefreshRateThrottlingMapId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalRefreshRateThrottlingMapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPowerThrottlingMapId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/layout/Layout$Display;->mPowerThrottlingMapId:Ljava/lang/String;

    const-string/jumbo v1, "}"

    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
