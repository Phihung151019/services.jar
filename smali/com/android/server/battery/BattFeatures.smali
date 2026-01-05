.class public abstract Lcom/android/server/battery/BattFeatures;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final FEATURE_FULL_BATTERY_CYCLE:Z

.field public static final FEATURE_SAVE_BATTERY_CYCLE:Z

.field public static final FEATURE_SUPPORT_ASOC:Z

.field public static final SEC_FEATURE_WA_LCD_FLICKERING_WITH_VRR:Z

.field public static final SUPPORT_ECO_BATTERY:Z

.field public static final cachedData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string/jumbo v0, "ro.product.vendor.device"

    const-string/jumbo v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "e1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string/jumbo v1, "e2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "e3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    const-string/jumbo v4, "r0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "g0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "dm1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "dm2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v3

    :goto_3
    sput-boolean v0, Lcom/android/server/battery/BattFeatures;->SEC_FEATURE_WA_LCD_FLICKERING_WITH_VRR:Z

    const-string v0, "/sys/class/power_supply/battery/battery_cycle"

    invoke-static {v0}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/battery/BattFeatures;->FEATURE_SAVE_BATTERY_CYCLE:Z

    if-nez v1, :cond_5

    sget-object v0, Lcom/android/server/battery/BattFeatures;->cachedData:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "/sys/class/power_supply/battery/support_functions"

    invoke-static {v0, v3}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/battery/BattFeatures;->cachedData:Ljava/lang/String;

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "cachedData = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/battery/BattFeatures;->cachedData:Ljava/lang/String;

    const-string v4, "BattFeatures"

    invoke-static {v0, v1, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/battery/BattFeatures;->cachedData:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v1, "BFSU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "isSupport(BFSU) = true"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v2, v3

    :cond_6
    sput-boolean v2, Lcom/android/server/battery/BattFeatures;->FEATURE_FULL_BATTERY_CYCLE:Z

    const-string v0, "/sys/class/power_supply/battery/fg_asoc"

    invoke-static {v0}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/battery/BattFeatures;->FEATURE_SUPPORT_ASOC:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_BATTERY_DISABLE_ECO_BATTERY_FEATURE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v3

    sput-boolean v0, Lcom/android/server/battery/BattFeatures;->SUPPORT_ECO_BATTERY:Z

    return-void
.end method
