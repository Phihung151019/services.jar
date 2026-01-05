.class public final Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;
.super Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mServices:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;-><init>()V

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mServices:Ljava/util/List;

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_6

    aget v2, v1, v0

    const-string v3, "/sys/class/dqe/dqe"

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v2}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/vendor/etc/dqe/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :goto_2
    const-string v3, "/vendor/etc/dqe"

    :cond_4
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mServices:Ljava/util/List;

    new-instance v4, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    invoke-direct {v4, p1, v2}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;-><init>(Landroid/content/Context;I)V

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public final applyToService(Ljava/util/function/Consumer;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mServices:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getColorEnhancementMode()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "unsupported"

    return-object p0
.end method

.method public final setColorEnhancementSettingValue(I)V
    .locals 2

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setColorTempSettingOn(I)V
    .locals 2

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setColorTempSettingValue(II)V
    .locals 1

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setDisplayFeature(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p3, p1, p4}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setEdgeSharpnessSettingOn(I)V
    .locals 2

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setEdgeSharpnessSettingValue(I)V
    .locals 2

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;

    const/4 v1, 0x7

    invoke-direct {v0, p1, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setEyeTempSettingOn(I)V
    .locals 2

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setEyeTempSettingValue(I)V
    .locals 2

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;

    const/16 v1, 0x9

    invoke-direct {v0, p1, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setHsvGainSettingOn(I)V
    .locals 2

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setHsvGainSettingValue(III)V
    .locals 2

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda11;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda11;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setRgbGainSettingOn(I)V
    .locals 2

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setRgbGainSettingValue(III)V
    .locals 2

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda11;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda11;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setRgbWeightSettingOn(I)V
    .locals 2

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setRgbWeightSettingValue(FFF)V
    .locals 1

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda15;-><init>(FFF)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setSkinColorSettingOn(I)V
    .locals 2

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setWhitePointColorSettingOn(I)V
    .locals 2

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    return-void
.end method
