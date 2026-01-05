.class public final Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final DEBUG:Z

.field public mAtcAlreadyEnable:Z

.field public mAtcEnableSetting:Z

.field public mBootCompleted:Z

.field public final mContext:Landroid/content/Context;

.field public final mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

.field public final mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

.field public final mExynosDisplayFactory:Lcom/android/server/display/exynos/ExynosDisplayFactory;

.field public final mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

.field public final mLock:Ljava/lang/Object;

.field public mTuneEnableSetting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->DEBUG:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mLock:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayFactory:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mBootCompleted:Z

    iput-boolean v3, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mTuneEnableSetting:Z

    iput-boolean v3, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcEnableSetting:Z

    iput-boolean v3, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcAlreadyEnable:Z

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/vendor/etc/dqe/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, p2}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :goto_0
    const-string v5, "/vendor/etc/dqe"

    :cond_1
    iput-object v5, v4, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->mXmlPath:Ljava/lang/String;

    const-string v5, "/sys/class/dqe/dqe"

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, p2}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    iput-object v5, v4, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->mSysfsPath:Ljava/lang/String;

    new-instance v5, Lcom/android/server/display/exynos/ExynosDisplayTune;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    iput-object v4, v5, Lcom/android/server/display/exynos/ExynosDisplayTune;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    iput-object v5, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    new-instance v6, Lcom/android/server/display/exynos/ExynosDisplayColor;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v7, "0"

    iput-object v7, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_OFF:Ljava/lang/String;

    const-string v7, "1"

    iput-object v7, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_ON:Ljava/lang/String;

    iput-boolean v3, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->bIsColortempOn:Z

    iput v3, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->mColortempConvMethod:I

    iput-boolean v3, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->bIsRgbWeightOn:Z

    iput-object v2, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->eyetemp_array:[Ljava/lang/String;

    iput-object v2, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_bypass_array:[Ljava/lang/String;

    iput-object v2, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_ext_bypass_array:[Ljava/lang/String;

    iput-object v2, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    iput-object v2, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->linear_matrix_bypass_array:[Ljava/lang/String;

    iput-object v2, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_matrix_bypass_array:[Ljava/lang/String;

    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    iput-object v7, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_map:Ljava/util/TreeMap;

    iput-object v2, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_array:[Ljava/lang/String;

    iput-object v2, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_array:[Ljava/lang/String;

    iput-object v2, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_array:[Ljava/lang/String;

    iput-object v2, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->skincolor_array:[Ljava/lang/String;

    iput-object v2, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->sharpness_array:[Ljava/lang/String;

    iput-object v2, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->whitepoint_array:[Ljava/lang/String;

    iput-object v2, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->hsc_bypass_array:[Ljava/lang/String;

    const-string v7, "08000000"

    iput-object v7, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->HW_VER_8_0:Ljava/lang/String;

    iput-object v2, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    iput-object v4, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    iput-object v2, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->hw_ver:Ljava/lang/String;

    const-string/jumbo v2, "dqe_ver"

    invoke-virtual {v4, v2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    iget-object v7, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v7, v2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->hw_ver:Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "hw_ver: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->hw_ver:Ljava/lang/String;

    const-string v7, "ExynosDisplayColor"

    invoke-static {v1, v2, v7}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    iput-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    new-instance v1, Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-direct {v1, p1, v4}, Lcom/android/server/display/exynos/ExynosDisplayATC;-><init>(Landroid/content/Context;Lcom/android/server/display/exynos/ExynosDisplayAdapter;)V

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    new-instance v2, Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-direct {v2, p1, v4}, Lcom/android/server/display/exynos/ExynosDisplayFactory;-><init>(Landroid/content/Context;Lcom/android/server/display/exynos/ExynosDisplayAdapter;)V

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayFactory:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iput-object v5, v6, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e0079

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v4, :cond_7

    const/4 v4, 0x3

    if-ne v2, v4, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    goto :goto_4

    :cond_7
    :goto_3
    move v2, v5

    :goto_4
    iput-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcEnableSetting:Z

    if-eqz v2, :cond_8

    invoke-virtual {v1, v5}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATC(Z)V

    :cond_8
    new-instance v1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$SettingsObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$SettingsObserver;-><init>(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "dqe_tune_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v3, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v4, "atc_mode_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, v3, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v4, "display_color_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, v3, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$ScreenBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$ScreenBroadcastReceiver;-><init>(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;)V

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->settingChanged()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "ExynosDisplaySolutionManagerServiceImpl["

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "] created "

    const-string p2, "ExynosDisplaySolutionManagerServiceImpl"

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final settingChanged()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "dqe_tune_enabled"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-boolean v5, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcEnableSetting:Z

    const-string/jumbo v6, "atc_mode_enabled"

    invoke-static {v0, v6, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    const-string/jumbo v5, "display_color_mode"

    invoke-static {v0, v5, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mTuneEnableSetting:Z

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mBootCompleted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    invoke-virtual {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayTune;->enableTuneTimer(Z)V

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mTuneEnableSetting:Z

    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcEnableSetting:Z

    if-eq v0, v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "settingChanged: ATC "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcEnableSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExynosDisplaySolutionManagerServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {v0, v4}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATC(Z)V

    iget-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mBootCompleted:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0, v4}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    :cond_3
    iput-boolean v4, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcEnableSetting:Z

    return-void
.end method
