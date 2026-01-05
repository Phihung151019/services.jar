.class public final Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDisplayListener:Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager$1;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mIsExternalDisplayDexMode:Z

.field public final synthetic this$0:Lcom/android/server/enterprise/dex/DexPolicy;


# direct methods
.method public static -$$Nest$mapplyDscRestrictionsForDexScreenResolution(Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;Landroid/content/Context;I)V
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string/jumbo v2, "com.sec.android.desktopmode.uiservice"

    invoke-virtual {p1, v2, v1}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_1
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "resolution_user_setting"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string/jumbo v2, "value"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;->checkResolutionKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    if-nez v2, :cond_2

    :catch_0
    move v3, v1

    goto :goto_2

    :cond_2
    :try_start_0
    invoke-interface {v2, p2}, Landroid/view/IWindowManager;->getDisplayUserRotation(I)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p0

    aget-object v0, p0, v1

    array-length v4, p0

    :goto_3
    if-ge v1, v4, :cond_4

    aget-object v5, p0, v1

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v7

    mul-int/2addr v7, v6

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v8

    mul-int/2addr v8, v6

    if-le v7, v8, :cond_3

    move-object v0, v5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    new-instance p0, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    invoke-direct {p0, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    const/4 v0, 0x1

    if-eq v3, v0, :cond_5

    const/4 v0, 0x3

    if-ne v3, v0, :cond_6

    :cond_5
    iget v0, p0, Landroid/graphics/Point;->y:I

    iget v1, p0, Landroid/graphics/Point;->x:I

    if-le v0, v1, :cond_6

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Point;->set(II)V

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getExternalDisplayMaximumResolution : realsize is ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;->getResolutionKeyValue(IILjava/lang/String;)Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;->getHeight()I

    move-result p0

    :try_start_1
    invoke-interface {v2, p2, p1, p0}, Landroid/view/IWindowManager;->setForcedDisplaySize(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_4
    return-void
.end method

.method public static -$$Nest$misExternalDisplayDexMode(Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;)Z
    .locals 5

    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/view/Display;->getFlags()I

    move-result v3

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public constructor <init>(Lcom/android/server/enterprise/dex/DexPolicy;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    new-instance p1, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager$1;

    invoke-direct {p1, p0}, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager$1;-><init>(Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;)V

    iput-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->mDisplayListener:Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager$1;

    new-instance v0, Landroid/hardware/display/DisplayManager;

    invoke-direct {v0, p2}, Landroid/hardware/display/DisplayManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method
