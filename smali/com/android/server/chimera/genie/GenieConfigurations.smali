.class public final Lcom/android/server/chimera/genie/GenieConfigurations;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final GENAI_UNLOAD_MODEL_TIMEOUT:I

.field public static final GENAI_UNLOAD_OOMADJ_THRESHOLD:I

.field public static final GENAI_UNLOAD_THRESHOLD:I

.field public static final MODEL_COUNT:I

.field public static final sAIVersion:I

.field public static final sAIVersionGoogleModelSize:Ljava/util/Map;

.field public static final sAIVersionSepModelSize:Ljava/util/Map;

.field public static final sAllowedBroadcastActions:Ljava/util/List;

.field public static final sAllowedPackages:Ljava/util/List;

.field public static final sGenAIPackageMap:Ljava/util/Map;

.field public static sIsChinaDevice:Z


# direct methods
.method static constructor <clinit>()V
    .locals 24

    const-string/jumbo v0, "ro.slmk.genie.model_count"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/chimera/genie/GenieConfigurations;->MODEL_COUNT:I

    const-string/jumbo v0, "ro.slmk.genie.unload.threshold"

    const-string v1, "2097152"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/chimera/genie/GenieConfigurations;->GENAI_UNLOAD_THRESHOLD:I

    const-string/jumbo v0, "ro.slmk.genie.oomadj.threshold"

    const-string v1, "850"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/chimera/genie/GenieConfigurations;->GENAI_UNLOAD_OOMADJ_THRESHOLD:I

    const-string/jumbo v0, "ro.slmk.genie.oomadj.psilevel"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const-string/jumbo v0, "ro.slmk.genie.unload.timeout"

    const-string v1, "7200"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/android/server/chimera/genie/GenieConfigurations;->GENAI_UNLOAD_MODEL_TIMEOUT:I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_AI_VERSION"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/chimera/genie/GenieConfigurations;->sAIVersion:I

    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v22, "com.samsung.android.incallui"

    const-string/jumbo v23, "com.samsung.android.callassistant"

    const-string/jumbo v1, "com.sec.android.app.camera"

    const-string/jumbo v2, "com.samsung.android.honeyboard"

    const-string/jumbo v3, "com.samsung.android.offline.languagemodel.test_client"

    const-string/jumbo v4, "com.samsung.android.offline.languagemodel"

    const-string/jumbo v5, "com.samsung.android.wallpaper.magician"

    const-string/jumbo v6, "com.samsung.android.wallpaper.live"

    const-string/jumbo v7, "com.sec.android.mimage.photoretouching"

    const-string/jumbo v8, "com.sec.android.gallery3d"

    const-string/jumbo v9, "com.samsung.android.app.notes"

    const-string/jumbo v10, "com.sec.android.app.voicenote"

    const-string/jumbo v11, "com.sec.android.app.shealth"

    const-string/jumbo v12, "com.samsung.android.app.moments"

    const-string/jumbo v13, "com.samsung.android.oneconnect"

    const-string/jumbo v14, "com.sec.android.app.sbrowser"

    const-string/jumbo v15, "com.samsung.android.dialer"

    const-string/jumbo v16, "com.samsung.android.smartsuggestions"

    const-string/jumbo v17, "com.samsung.android.smartsuggestions:moneta"

    const-string/jumbo v18, "com.android.systemui"

    const-string/jumbo v19, "com.google.android.apps.messaging"

    const-string/jumbo v20, "com.samsung.android.accessibility.talkback"

    const-string/jumbo v21, "com.samsung.android.scs"

    filled-new-array/range {v1 .. v23}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/chimera/genie/GenieConfigurations;->sAllowedPackages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "com.samsung.GEN_AI_RECLAIM"

    const-string v2, "AICORE_BROADCAST_ACTION_MODEL_LOADING"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/chimera/genie/GenieConfigurations;->sAllowedBroadcastActions:Ljava/util/List;

    new-instance v0, Lcom/android/server/chimera/genie/GenieConfigurations$1;

    invoke-direct {v0}, Lcom/android/server/chimera/genie/GenieConfigurations$1;-><init>()V

    sput-object v0, Lcom/android/server/chimera/genie/GenieConfigurations;->sAIVersionSepModelSize:Ljava/util/Map;

    new-instance v0, Lcom/android/server/chimera/genie/GenieConfigurations$2;

    invoke-direct {v0}, Lcom/android/server/chimera/genie/GenieConfigurations$2;-><init>()V

    sput-object v0, Lcom/android/server/chimera/genie/GenieConfigurations;->sAIVersionGoogleModelSize:Ljava/util/Map;

    new-instance v0, Lcom/android/server/chimera/genie/GenieConfigurations$3;

    invoke-direct {v0}, Lcom/android/server/chimera/genie/GenieConfigurations$3;-><init>()V

    sput-object v0, Lcom/android/server/chimera/genie/GenieConfigurations;->sGenAIPackageMap:Ljava/util/Map;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/chimera/genie/GenieConfigurations;->sIsChinaDevice:Z

    return-void
.end method

.method public static isGenieUnloadPolicyEnabled()Z
    .locals 1

    sget v0, Lcom/android/server/chimera/genie/GenieConfigurations;->MODEL_COUNT:I

    if-lez v0, :cond_0

    sget-boolean v0, Lcom/android/server/chimera/genie/GenieConfigurations;->sIsChinaDevice:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
